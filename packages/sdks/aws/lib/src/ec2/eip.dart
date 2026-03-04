import 'package:pulumi/pulumi.dart' as pulumi;
import 'eip_args.dart';
import 'eip_state.dart';

/// Provides an Elastic IP resource.
///
/// &gt; **Note:** EIP may require IGW to exist prior to association. Use `depends_on` to set an explicit dependency on the IGW.
///
/// &gt; **Note:** Do not use `network_interface` to associate the EIP to `aws.lb.LoadBalancer` or `aws.ec2.NatGateway` resources. Instead use the `allocation_id` available in those resources to allow AWS to manage the association, otherwise you will see `AuthFailure` errors.
///
/// ## Example Usage
///
/// ### Single EIP associated with an instance
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const lb = new aws.ec2.Eip("lb", {
///     instance: web.id,
///     domain: "vpc",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// lb = aws.ec2.Eip("lb",
///     instance=web["id"],
///     domain="vpc")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var lb = new Aws.Ec2.Eip("lb", new()
///     {
///         Instance = web.Id,
///         Domain = "vpc",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewEip(ctx, "lb", &ec2.EipArgs{
/// 			Instance: pulumi.Any(web.Id),
/// 			Domain:   pulumi.String("vpc"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Eip;
/// import com.pulumi.aws.ec2.EipArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var lb = new Eip("lb", EipArgs.builder()
///             .instance(web.id())
///             .domain("vpc")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   lb:
///     type: aws:ec2:Eip
///     properties:
///       instance: ${web.id}
///       domain: vpc
/// ```
///
///
/// ### Multiple EIPs associated with a single network interface
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const multi_ip = new aws.ec2.NetworkInterface("multi-ip", {
///     subnetId: main.id,
///     privateIps: [
///         "10.0.0.10",
///         "10.0.0.11",
///     ],
/// });
/// const one = new aws.ec2.Eip("one", {
///     domain: "vpc",
///     networkInterface: multi_ip.id,
///     associateWithPrivateIp: "10.0.0.10",
/// });
/// const two = new aws.ec2.Eip("two", {
///     domain: "vpc",
///     networkInterface: multi_ip.id,
///     associateWithPrivateIp: "10.0.0.11",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// multi_ip = aws.ec2.NetworkInterface("multi-ip",
///     subnet_id=main["id"],
///     private_ips=[
///         "10.0.0.10",
///         "10.0.0.11",
///     ])
/// one = aws.ec2.Eip("one",
///     domain="vpc",
///     network_interface=multi_ip.id,
///     associate_with_private_ip="10.0.0.10")
/// two = aws.ec2.Eip("two",
///     domain="vpc",
///     network_interface=multi_ip.id,
///     associate_with_private_ip="10.0.0.11")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var multi_ip = new Aws.Ec2.NetworkInterface("multi-ip", new()
///     {
///         SubnetId = main.Id,
///         PrivateIps = new[]
///         {
///             "10.0.0.10",
///             "10.0.0.11",
///         },
///     });
///
///     var one = new Aws.Ec2.Eip("one", new()
///     {
///         Domain = "vpc",
///         NetworkInterface = multi_ip.Id,
///         AssociateWithPrivateIp = "10.0.0.10",
///     });
///
///     var two = new Aws.Ec2.Eip("two", new()
///     {
///         Domain = "vpc",
///         NetworkInterface = multi_ip.Id,
///         AssociateWithPrivateIp = "10.0.0.11",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		multi_ip, err := ec2.NewNetworkInterface(ctx, "multi-ip", &ec2.NetworkInterfaceArgs{
/// 			SubnetId: pulumi.Any(main.Id),
/// 			PrivateIps: pulumi.StringArray{
/// 				pulumi.String("10.0.0.10"),
/// 				pulumi.String("10.0.0.11"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewEip(ctx, "one", &ec2.EipArgs{
/// 			Domain:                 pulumi.String("vpc"),
/// 			NetworkInterface:       multi_ip.ID(),
/// 			AssociateWithPrivateIp: pulumi.String("10.0.0.10"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewEip(ctx, "two", &ec2.EipArgs{
/// 			Domain:                 pulumi.String("vpc"),
/// 			NetworkInterface:       multi_ip.ID(),
/// 			AssociateWithPrivateIp: pulumi.String("10.0.0.11"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.NetworkInterface;
/// import com.pulumi.aws.ec2.NetworkInterfaceArgs;
/// import com.pulumi.aws.ec2.Eip;
/// import com.pulumi.aws.ec2.EipArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var multi_ip = new NetworkInterface("multi-ip", NetworkInterfaceArgs.builder()
///             .subnetId(main.id())
///             .privateIps(
///                 "10.0.0.10",
///                 "10.0.0.11")
///             .build());
///
///         var one = new Eip("one", EipArgs.builder()
///             .domain("vpc")
///             .networkInterface(multi_ip.id())
///             .associateWithPrivateIp("10.0.0.10")
///             .build());
///
///         var two = new Eip("two", EipArgs.builder()
///             .domain("vpc")
///             .networkInterface(multi_ip.id())
///             .associateWithPrivateIp("10.0.0.11")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   multi-ip:
///     type: aws:ec2:NetworkInterface
///     properties:
///       subnetId: ${main.id}
///       privateIps:
///         - 10.0.0.10
///         - 10.0.0.11
///   one:
///     type: aws:ec2:Eip
///     properties:
///       domain: vpc
///       networkInterface: ${["multi-ip"].id}
///       associateWithPrivateIp: 10.0.0.10
///   two:
///     type: aws:ec2:Eip
///     properties:
///       domain: vpc
///       networkInterface: ${["multi-ip"].id}
///       associateWithPrivateIp: 10.0.0.11
/// ```
///
///
/// ### Attaching an EIP to an Instance with a pre-assigned private ip (VPC Only)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.ec2.Vpc("default", {
///     cidrBlock: "10.0.0.0/16",
///     enableDnsHostnames: true,
/// });
/// const gw = new aws.ec2.InternetGateway("gw", {vpcId: _default.id});
/// const myTestSubnet = new aws.ec2.Subnet("my_test_subnet", {
///     vpcId: _default.id,
///     cidrBlock: "10.0.0.0/24",
///     mapPublicIpOnLaunch: true,
/// }, {
///     dependsOn: [gw],
/// });
/// const foo = new aws.ec2.Instance("foo", {
///     ami: "ami-5189a661",
///     instanceType: aws.ec2.InstanceType.T2_Micro,
///     privateIp: "10.0.0.12",
///     subnetId: myTestSubnet.id,
/// });
/// const bar = new aws.ec2.Eip("bar", {
///     domain: "vpc",
///     instance: foo.id,
///     associateWithPrivateIp: "10.0.0.12",
/// }, {
///     dependsOn: [gw],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.ec2.Vpc("default",
///     cidr_block="10.0.0.0/16",
///     enable_dns_hostnames=True)
/// gw = aws.ec2.InternetGateway("gw", vpc_id=default.id)
/// my_test_subnet = aws.ec2.Subnet("my_test_subnet",
///     vpc_id=default.id,
///     cidr_block="10.0.0.0/24",
///     map_public_ip_on_launch=True,
///     opts = pulumi.ResourceOptions(depends_on=[gw]))
/// foo = aws.ec2.Instance("foo",
///     ami="ami-5189a661",
///     instance_type=aws.ec2.InstanceType.T2_MICRO,
///     private_ip="10.0.0.12",
///     subnet_id=my_test_subnet.id)
/// bar = aws.ec2.Eip("bar",
///     domain="vpc",
///     instance=foo.id,
///     associate_with_private_ip="10.0.0.12",
///     opts = pulumi.ResourceOptions(depends_on=[gw]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Ec2.Vpc("default", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///         EnableDnsHostnames = true,
///     });
///
///     var gw = new Aws.Ec2.InternetGateway("gw", new()
///     {
///         VpcId = @default.Id,
///     });
///
///     var myTestSubnet = new Aws.Ec2.Subnet("my_test_subnet", new()
///     {
///         VpcId = @default.Id,
///         CidrBlock = "10.0.0.0/24",
///         MapPublicIpOnLaunch = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             gw,
///         },
///     });
///
///     var foo = new Aws.Ec2.Instance("foo", new()
///     {
///         Ami = "ami-5189a661",
///         InstanceType = Aws.Ec2.InstanceType.T2_Micro,
///         PrivateIp = "10.0.0.12",
///         SubnetId = myTestSubnet.Id,
///     });
///
///     var bar = new Aws.Ec2.Eip("bar", new()
///     {
///         Domain = "vpc",
///         Instance = foo.Id,
///         AssociateWithPrivateIp = "10.0.0.12",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             gw,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ec2.NewVpc(ctx, "default", &ec2.VpcArgs{
/// 			CidrBlock:          pulumi.String("10.0.0.0/16"),
/// 			EnableDnsHostnames: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gw, err := ec2.NewInternetGateway(ctx, "gw", &ec2.InternetGatewayArgs{
/// 			VpcId: _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myTestSubnet, err := ec2.NewSubnet(ctx, "my_test_subnet", &ec2.SubnetArgs{
/// 			VpcId:               _default.ID(),
/// 			CidrBlock:           pulumi.String("10.0.0.0/24"),
/// 			MapPublicIpOnLaunch: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			gw,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foo, err := ec2.NewInstance(ctx, "foo", &ec2.InstanceArgs{
/// 			Ami:          pulumi.String("ami-5189a661"),
/// 			InstanceType: pulumi.String(ec2.InstanceType_T2_Micro),
/// 			PrivateIp:    pulumi.String("10.0.0.12"),
/// 			SubnetId:     myTestSubnet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewEip(ctx, "bar", &ec2.EipArgs{
/// 			Domain:                 pulumi.String("vpc"),
/// 			Instance:               foo.ID(),
/// 			AssociateWithPrivateIp: pulumi.String("10.0.0.12"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			gw,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.InternetGateway;
/// import com.pulumi.aws.ec2.InternetGatewayArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
/// import com.pulumi.aws.ec2.Eip;
/// import com.pulumi.aws.ec2.EipArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var default_ = new Vpc("default", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .enableDnsHostnames(true)
///             .build());
///
///         var gw = new InternetGateway("gw", InternetGatewayArgs.builder()
///             .vpcId(default_.id())
///             .build());
///
///         var myTestSubnet = new Subnet("myTestSubnet", SubnetArgs.builder()
///             .vpcId(default_.id())
///             .cidrBlock("10.0.0.0/24")
///             .mapPublicIpOnLaunch(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(gw)
///                 .build());
///
///         var foo = new Instance("foo", InstanceArgs.builder()
///             .ami("ami-5189a661")
///             .instanceType("t2.micro")
///             .privateIp("10.0.0.12")
///             .subnetId(myTestSubnet.id())
///             .build());
///
///         var bar = new Eip("bar", EipArgs.builder()
///             .domain("vpc")
///             .instance(foo.id())
///             .associateWithPrivateIp("10.0.0.12")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(gw)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///       enableDnsHostnames: true
///   gw:
///     type: aws:ec2:InternetGateway
///     properties:
///       vpcId: ${default.id}
///   myTestSubnet:
///     type: aws:ec2:Subnet
///     name: my_test_subnet
///     properties:
///       vpcId: ${default.id}
///       cidrBlock: 10.0.0.0/24
///       mapPublicIpOnLaunch: true
///     options:
///       dependsOn:
///         - ${gw}
///   foo:
///     type: aws:ec2:Instance
///     properties:
///       ami: ami-5189a661
///       instanceType: t2.micro
///       privateIp: 10.0.0.12
///       subnetId: ${myTestSubnet.id}
///   bar:
///     type: aws:ec2:Eip
///     properties:
///       domain: vpc
///       instance: ${foo.id}
///       associateWithPrivateIp: 10.0.0.12
///     options:
///       dependsOn:
///         - ${gw}
/// ```
///
///
/// ### Allocating EIP from the BYOIP pool
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const byoip_ip = new aws.ec2.Eip("byoip-ip", {
///     domain: "vpc",
///     publicIpv4Pool: "ipv4pool-ec2-012345",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// byoip_ip = aws.ec2.Eip("byoip-ip",
///     domain="vpc",
///     public_ipv4_pool="ipv4pool-ec2-012345")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var byoip_ip = new Aws.Ec2.Eip("byoip-ip", new()
///     {
///         Domain = "vpc",
///         PublicIpv4Pool = "ipv4pool-ec2-012345",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewEip(ctx, "byoip-ip", &ec2.EipArgs{
/// 			Domain:         pulumi.String("vpc"),
/// 			PublicIpv4Pool: pulumi.String("ipv4pool-ec2-012345"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Eip;
/// import com.pulumi.aws.ec2.EipArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var byoip_ip = new Eip("byoip-ip", EipArgs.builder()
///             .domain("vpc")
///             .publicIpv4Pool("ipv4pool-ec2-012345")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   byoip-ip:
///     type: aws:ec2:Eip
///     properties:
///       domain: vpc
///       publicIpv4Pool: ipv4pool-ec2-012345
/// ```
///
///
/// ### Allocating EIP from the IPAM Pool
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ipam_ip = new aws.ec2.Eip("ipam-ip", {
///     domain: "vpc",
///     ipamPoolId: "ipam-pool-07ccc86aa41bef7ce",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ipam_ip = aws.ec2.Eip("ipam-ip",
///     domain="vpc",
///     ipam_pool_id="ipam-pool-07ccc86aa41bef7ce")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ipam_ip = new Aws.Ec2.Eip("ipam-ip", new()
///     {
///         Domain = "vpc",
///         IpamPoolId = "ipam-pool-07ccc86aa41bef7ce",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewEip(ctx, "ipam-ip", &ec2.EipArgs{
/// 			Domain:     pulumi.String("vpc"),
/// 			IpamPoolId: pulumi.String("ipam-pool-07ccc86aa41bef7ce"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Eip;
/// import com.pulumi.aws.ec2.EipArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var ipam_ip = new Eip("ipam-ip", EipArgs.builder()
///             .domain("vpc")
///             .ipamPoolId("ipam-pool-07ccc86aa41bef7ce")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ipam-ip:
///     type: aws:ec2:Eip
///     properties:
///       domain: vpc
///       ipamPoolId: ipam-pool-07ccc86aa41bef7ce
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EIPs in a VPC using their Allocation ID. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/eip:Eip bar eipalloc-00a10e96
/// ```
class Eip extends pulumi.CustomResource {
  /// IP address from an EC2 BYOIP pool. This option is only available for VPC EIPs.
  late final pulumi.Output<String?> address;

  /// ID that AWS assigns to represent the allocation of the Elastic IP address for use with instances in a VPC.
  late final pulumi.Output<String> allocationId;
  late final pulumi.Output<String> arn;

  /// User-specified primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
  late final pulumi.Output<String?> associateWithPrivateIp;

  /// ID representing the association of the address with an instance in a VPC.
  late final pulumi.Output<String> associationId;

  /// Carrier IP address.
  late final pulumi.Output<String> carrierIp;

  /// Customer owned IP.
  late final pulumi.Output<String> customerOwnedIp;

  /// ID  of a customer-owned address pool. For more on customer owned IP addressed check out [Customer-owned IP addresses guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing).
  late final pulumi.Output<String?> customerOwnedIpv4Pool;

  /// Indicates if this EIP is for use in VPC (`vpc`).
  late final pulumi.Output<String> domain;

  /// EC2 instance ID.
  late final pulumi.Output<String> instance;

  /// The ID of an IPAM pool which has an Amazon-provided or BYOIP public IPv4 CIDR provisioned to it.
  late final pulumi.Output<String> ipamPoolId;

  /// Location from which the IP address is advertised. Use this parameter to limit the address to this location.
  late final pulumi.Output<String> networkBorderGroup;

  /// Network interface ID to associate with.
  late final pulumi.Output<String> networkInterface;

  /// The Private DNS associated with the Elastic IP address (if in VPC).
  late final pulumi.Output<String> privateDns;

  /// Contains the private IP address (if in VPC).
  late final pulumi.Output<String> privateIp;

  /// The DNS pointer (PTR) record for the IP address.
  late final pulumi.Output<String> ptrRecord;

  /// Public DNS associated with the Elastic IP address.
  late final pulumi.Output<String> publicDns;

  /// Contains the public IP address.
  late final pulumi.Output<String> publicIp;

  /// EC2 IPv4 address pool identifier or `amazon`.
  /// This option is only available for VPC EIPs.
  late final pulumi.Output<String> publicIpv4Pool;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags to assign to the resource. Tags can only be applied to EIPs in a VPC. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// &gt; **NOTE:** You can specify either the `instance` ID or the `network_interface` ID, but not both.
  /// Including both will **not** return an error from the AWS API, but will have undefined behavior.
  /// See the relevant [AssociateAddress API Call][1] for more information.
  ///
  /// &gt; **NOTE:** Specifying both `public_ipv4_pool` and `address` won't cause an error, however, only `address` will be used if both options are defined as the API only requires one of the two.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Eip].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Eip]. {@macro pulumi_ec2_eip_eip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Eip(String name, {EipArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:ec2/eip:Eip',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    address = registerOutput<String?>('address');
    allocationId = registerOutput<String>('allocationId');
    arn = registerOutput<String>('arn');
    associateWithPrivateIp = registerOutput<String?>('associateWithPrivateIp');
    associationId = registerOutput<String>('associationId');
    carrierIp = registerOutput<String>('carrierIp');
    customerOwnedIp = registerOutput<String>('customerOwnedIp');
    customerOwnedIpv4Pool = registerOutput<String?>('customerOwnedIpv4Pool');
    domain = registerOutput<String>('domain');
    instance = registerOutput<String>('instance');
    ipamPoolId = registerOutput<String>('ipamPoolId');
    networkBorderGroup = registerOutput<String>('networkBorderGroup');
    networkInterface = registerOutput<String>('networkInterface');
    privateDns = registerOutput<String>('privateDns');
    privateIp = registerOutput<String>('privateIp');
    ptrRecord = registerOutput<String>('ptrRecord');
    publicDns = registerOutput<String>('publicDns');
    publicIp = registerOutput<String>('publicIp');
    publicIpv4Pool = registerOutput<String>('publicIpv4Pool');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Eip] resource's state with the given [name] and [id].
  static Eip get(String name, pulumi.Input<String> id, {EipState? state}) {
    return Eip._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Eip._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/eip:Eip',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    address = registerOutput<String?>('address');
    allocationId = registerOutput<String>('allocationId');
    arn = registerOutput<String>('arn');
    associateWithPrivateIp = registerOutput<String?>('associateWithPrivateIp');
    associationId = registerOutput<String>('associationId');
    carrierIp = registerOutput<String>('carrierIp');
    customerOwnedIp = registerOutput<String>('customerOwnedIp');
    customerOwnedIpv4Pool = registerOutput<String?>('customerOwnedIpv4Pool');
    domain = registerOutput<String>('domain');
    instance = registerOutput<String>('instance');
    ipamPoolId = registerOutput<String>('ipamPoolId');
    networkBorderGroup = registerOutput<String>('networkBorderGroup');
    networkInterface = registerOutput<String>('networkInterface');
    privateDns = registerOutput<String>('privateDns');
    privateIp = registerOutput<String>('privateIp');
    ptrRecord = registerOutput<String>('ptrRecord');
    publicDns = registerOutput<String>('publicDns');
    publicIp = registerOutput<String>('publicIp');
    publicIpv4Pool = registerOutput<String>('publicIpv4Pool');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
