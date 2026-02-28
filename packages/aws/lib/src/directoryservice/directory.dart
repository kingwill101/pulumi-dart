import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_args.dart';
import 'directory_connect_settings.dart';
import 'directory_vpc_settings.dart';

/// Provides a Simple or Managed Microsoft directory in AWS Directory Service.
///
/// ## Example Usage
///
/// ### SimpleAD
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.ec2.Vpc("main", {cidrBlock: "10.0.0.0/16"});
/// const foo = new aws.ec2.Subnet("foo", {
///     vpcId: main.id,
///     availabilityZone: "us-west-2a",
///     cidrBlock: "10.0.1.0/24",
/// });
/// const barSubnet = new aws.ec2.Subnet("bar", {
///     vpcId: main.id,
///     availabilityZone: "us-west-2b",
///     cidrBlock: "10.0.2.0/24",
/// });
/// const bar = new aws.directoryservice.Directory("bar", {
///     name: "corp.notexample.com",
///     password: "SuperSecretPassw0rd",
///     size: "Small",
///     vpcSettings: {
///         vpcId: main.id,
///         subnetIds: [
///             foo.id,
///             barSubnet.id,
///         ],
///     },
///     tags: {
///         Project: "foo",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ec2.Vpc("main", cidr_block="10.0.0.0/16")
/// foo = aws.ec2.Subnet("foo",
///     vpc_id=main.id,
///     availability_zone="us-west-2a",
///     cidr_block="10.0.1.0/24")
/// bar_subnet = aws.ec2.Subnet("bar",
///     vpc_id=main.id,
///     availability_zone="us-west-2b",
///     cidr_block="10.0.2.0/24")
/// bar = aws.directoryservice.Directory("bar",
///     name="corp.notexample.com",
///     password="SuperSecretPassw0rd",
///     size="Small",
///     vpc_settings={
///         "vpc_id": main.id,
///         "subnet_ids": [
///             foo.id,
///             bar_subnet.id,
///         ],
///     },
///     tags={
///         "Project": "foo",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Aws.Ec2.Vpc("main", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var foo = new Aws.Ec2.Subnet("foo", new()
///     {
///         VpcId = main.Id,
///         AvailabilityZone = "us-west-2a",
///         CidrBlock = "10.0.1.0/24",
///     });
///
///     var barSubnet = new Aws.Ec2.Subnet("bar", new()
///     {
///         VpcId = main.Id,
///         AvailabilityZone = "us-west-2b",
///         CidrBlock = "10.0.2.0/24",
///     });
///
///     var bar = new Aws.DirectoryService.Directory("bar", new()
///     {
///         Name = "corp.notexample.com",
///         Password = "SuperSecretPassw0rd",
///         Size = "Small",
///         VpcSettings = new Aws.DirectoryService.Inputs.DirectoryVpcSettingsArgs
///         {
///             VpcId = main.Id,
///             SubnetIds = new[]
///             {
///                 foo.Id,
///                 barSubnet.Id,
///             },
///         },
///         Tags =
///         {
///             { "Project", "foo" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directoryservice"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := ec2.NewVpc(ctx, "main", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foo, err := ec2.NewSubnet(ctx, "foo", &ec2.SubnetArgs{
/// 			VpcId:            main.ID(),
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 			CidrBlock:        pulumi.String("10.0.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		barSubnet, err := ec2.NewSubnet(ctx, "bar", &ec2.SubnetArgs{
/// 			VpcId:            main.ID(),
/// 			AvailabilityZone: pulumi.String("us-west-2b"),
/// 			CidrBlock:        pulumi.String("10.0.2.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directoryservice.NewDirectory(ctx, "bar", &directoryservice.DirectoryArgs{
/// 			Name:     pulumi.String("corp.notexample.com"),
/// 			Password: pulumi.String("SuperSecretPassw0rd"),
/// 			Size:     pulumi.String("Small"),
/// 			VpcSettings: &directoryservice.DirectoryVpcSettingsArgs{
/// 				VpcId: main.ID(),
/// 				SubnetIds: pulumi.StringArray{
/// 					foo.ID(),
/// 					barSubnet.ID(),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Project": pulumi.String("foo"),
/// 			},
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.directoryservice.Directory;
/// import com.pulumi.aws.directoryservice.DirectoryArgs;
/// import com.pulumi.aws.directoryservice.inputs.DirectoryVpcSettingsArgs;
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
///         var main = new Vpc("main", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var foo = new Subnet("foo", SubnetArgs.builder()
///             .vpcId(main.id())
///             .availabilityZone("us-west-2a")
///             .cidrBlock("10.0.1.0/24")
///             .build());
///
///         var barSubnet = new Subnet("barSubnet", SubnetArgs.builder()
///             .vpcId(main.id())
///             .availabilityZone("us-west-2b")
///             .cidrBlock("10.0.2.0/24")
///             .build());
///
///         var bar = new Directory("bar", DirectoryArgs.builder()
///             .name("corp.notexample.com")
///             .password("SuperSecretPassw0rd")
///             .size("Small")
///             .vpcSettings(DirectoryVpcSettingsArgs.builder()
///                 .vpcId(main.id())
///                 .subnetIds(
///                     foo.id(),
///                     barSubnet.id())
///                 .build())
///             .tags(Map.of("Project", "foo"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bar:
///     type: aws:directoryservice:Directory
///     properties:
///       name: corp.notexample.com
///       password: SuperSecretPassw0rd
///       size: Small
///       vpcSettings:
///         vpcId: ${main.id}
///         subnetIds:
///           - ${foo.id}
///           - ${barSubnet.id}
///       tags:
///         Project: foo
///   main:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///   foo:
///     type: aws:ec2:Subnet
///     properties:
///       vpcId: ${main.id}
///       availabilityZone: us-west-2a
///       cidrBlock: 10.0.1.0/24
///   barSubnet:
///     type: aws:ec2:Subnet
///     name: bar
///     properties:
///       vpcId: ${main.id}
///       availabilityZone: us-west-2b
///       cidrBlock: 10.0.2.0/24
/// ```
///
///
/// ### Microsoft Active Directory (MicrosoftAD)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.ec2.Vpc("main", {cidrBlock: "10.0.0.0/16"});
/// const foo = new aws.ec2.Subnet("foo", {
///     vpcId: main.id,
///     availabilityZone: "us-west-2a",
///     cidrBlock: "10.0.1.0/24",
/// });
/// const barSubnet = new aws.ec2.Subnet("bar", {
///     vpcId: main.id,
///     availabilityZone: "us-west-2b",
///     cidrBlock: "10.0.2.0/24",
/// });
/// const bar = new aws.directoryservice.Directory("bar", {
///     name: "corp.notexample.com",
///     password: "SuperSecretPassw0rd",
///     edition: "Standard",
///     type: "MicrosoftAD",
///     vpcSettings: {
///         vpcId: main.id,
///         subnetIds: [
///             foo.id,
///             barSubnet.id,
///         ],
///     },
///     tags: {
///         Project: "foo",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ec2.Vpc("main", cidr_block="10.0.0.0/16")
/// foo = aws.ec2.Subnet("foo",
///     vpc_id=main.id,
///     availability_zone="us-west-2a",
///     cidr_block="10.0.1.0/24")
/// bar_subnet = aws.ec2.Subnet("bar",
///     vpc_id=main.id,
///     availability_zone="us-west-2b",
///     cidr_block="10.0.2.0/24")
/// bar = aws.directoryservice.Directory("bar",
///     name="corp.notexample.com",
///     password="SuperSecretPassw0rd",
///     edition="Standard",
///     type="MicrosoftAD",
///     vpc_settings={
///         "vpc_id": main.id,
///         "subnet_ids": [
///             foo.id,
///             bar_subnet.id,
///         ],
///     },
///     tags={
///         "Project": "foo",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Aws.Ec2.Vpc("main", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var foo = new Aws.Ec2.Subnet("foo", new()
///     {
///         VpcId = main.Id,
///         AvailabilityZone = "us-west-2a",
///         CidrBlock = "10.0.1.0/24",
///     });
///
///     var barSubnet = new Aws.Ec2.Subnet("bar", new()
///     {
///         VpcId = main.Id,
///         AvailabilityZone = "us-west-2b",
///         CidrBlock = "10.0.2.0/24",
///     });
///
///     var bar = new Aws.DirectoryService.Directory("bar", new()
///     {
///         Name = "corp.notexample.com",
///         Password = "SuperSecretPassw0rd",
///         Edition = "Standard",
///         Type = "MicrosoftAD",
///         VpcSettings = new Aws.DirectoryService.Inputs.DirectoryVpcSettingsArgs
///         {
///             VpcId = main.Id,
///             SubnetIds = new[]
///             {
///                 foo.Id,
///                 barSubnet.Id,
///             },
///         },
///         Tags =
///         {
///             { "Project", "foo" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directoryservice"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := ec2.NewVpc(ctx, "main", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foo, err := ec2.NewSubnet(ctx, "foo", &ec2.SubnetArgs{
/// 			VpcId:            main.ID(),
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 			CidrBlock:        pulumi.String("10.0.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		barSubnet, err := ec2.NewSubnet(ctx, "bar", &ec2.SubnetArgs{
/// 			VpcId:            main.ID(),
/// 			AvailabilityZone: pulumi.String("us-west-2b"),
/// 			CidrBlock:        pulumi.String("10.0.2.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directoryservice.NewDirectory(ctx, "bar", &directoryservice.DirectoryArgs{
/// 			Name:     pulumi.String("corp.notexample.com"),
/// 			Password: pulumi.String("SuperSecretPassw0rd"),
/// 			Edition:  pulumi.String("Standard"),
/// 			Type:     pulumi.String("MicrosoftAD"),
/// 			VpcSettings: &directoryservice.DirectoryVpcSettingsArgs{
/// 				VpcId: main.ID(),
/// 				SubnetIds: pulumi.StringArray{
/// 					foo.ID(),
/// 					barSubnet.ID(),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Project": pulumi.String("foo"),
/// 			},
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.directoryservice.Directory;
/// import com.pulumi.aws.directoryservice.DirectoryArgs;
/// import com.pulumi.aws.directoryservice.inputs.DirectoryVpcSettingsArgs;
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
///         var main = new Vpc("main", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var foo = new Subnet("foo", SubnetArgs.builder()
///             .vpcId(main.id())
///             .availabilityZone("us-west-2a")
///             .cidrBlock("10.0.1.0/24")
///             .build());
///
///         var barSubnet = new Subnet("barSubnet", SubnetArgs.builder()
///             .vpcId(main.id())
///             .availabilityZone("us-west-2b")
///             .cidrBlock("10.0.2.0/24")
///             .build());
///
///         var bar = new Directory("bar", DirectoryArgs.builder()
///             .name("corp.notexample.com")
///             .password("SuperSecretPassw0rd")
///             .edition("Standard")
///             .type("MicrosoftAD")
///             .vpcSettings(DirectoryVpcSettingsArgs.builder()
///                 .vpcId(main.id())
///                 .subnetIds(
///                     foo.id(),
///                     barSubnet.id())
///                 .build())
///             .tags(Map.of("Project", "foo"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bar:
///     type: aws:directoryservice:Directory
///     properties:
///       name: corp.notexample.com
///       password: SuperSecretPassw0rd
///       edition: Standard
///       type: MicrosoftAD
///       vpcSettings:
///         vpcId: ${main.id}
///         subnetIds:
///           - ${foo.id}
///           - ${barSubnet.id}
///       tags:
///         Project: foo
///   main:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///   foo:
///     type: aws:ec2:Subnet
///     properties:
///       vpcId: ${main.id}
///       availabilityZone: us-west-2a
///       cidrBlock: 10.0.1.0/24
///   barSubnet:
///     type: aws:ec2:Subnet
///     name: bar
///     properties:
///       vpcId: ${main.id}
///       availabilityZone: us-west-2b
///       cidrBlock: 10.0.2.0/24
/// ```
///
///
/// ### Microsoft Active Directory Connector (ADConnector)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.ec2.Vpc("main", {cidrBlock: "10.0.0.0/16"});
/// const foo = new aws.ec2.Subnet("foo", {
///     vpcId: main.id,
///     availabilityZone: "us-west-2a",
///     cidrBlock: "10.0.1.0/24",
/// });
/// const bar = new aws.ec2.Subnet("bar", {
///     vpcId: main.id,
///     availabilityZone: "us-west-2b",
///     cidrBlock: "10.0.2.0/24",
/// });
/// const connector = new aws.directoryservice.Directory("connector", {
///     name: "corp.notexample.com",
///     password: "SuperSecretPassw0rd",
///     size: "Small",
///     type: "ADConnector",
///     connectSettings: {
///         customerDnsIps: ["A.B.C.D"],
///         customerUsername: "Admin",
///         subnetIds: [
///             foo.id,
///             bar.id,
///         ],
///         vpcId: main.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ec2.Vpc("main", cidr_block="10.0.0.0/16")
/// foo = aws.ec2.Subnet("foo",
///     vpc_id=main.id,
///     availability_zone="us-west-2a",
///     cidr_block="10.0.1.0/24")
/// bar = aws.ec2.Subnet("bar",
///     vpc_id=main.id,
///     availability_zone="us-west-2b",
///     cidr_block="10.0.2.0/24")
/// connector = aws.directoryservice.Directory("connector",
///     name="corp.notexample.com",
///     password="SuperSecretPassw0rd",
///     size="Small",
///     type="ADConnector",
///     connect_settings={
///         "customer_dns_ips": ["A.B.C.D"],
///         "customer_username": "Admin",
///         "subnet_ids": [
///             foo.id,
///             bar.id,
///         ],
///         "vpc_id": main.id,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Aws.Ec2.Vpc("main", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var foo = new Aws.Ec2.Subnet("foo", new()
///     {
///         VpcId = main.Id,
///         AvailabilityZone = "us-west-2a",
///         CidrBlock = "10.0.1.0/24",
///     });
///
///     var bar = new Aws.Ec2.Subnet("bar", new()
///     {
///         VpcId = main.Id,
///         AvailabilityZone = "us-west-2b",
///         CidrBlock = "10.0.2.0/24",
///     });
///
///     var connector = new Aws.DirectoryService.Directory("connector", new()
///     {
///         Name = "corp.notexample.com",
///         Password = "SuperSecretPassw0rd",
///         Size = "Small",
///         Type = "ADConnector",
///         ConnectSettings = new Aws.DirectoryService.Inputs.DirectoryConnectSettingsArgs
///         {
///             CustomerDnsIps = new[]
///             {
///                 "A.B.C.D",
///             },
///             CustomerUsername = "Admin",
///             SubnetIds = new[]
///             {
///                 foo.Id,
///                 bar.Id,
///             },
///             VpcId = main.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directoryservice"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := ec2.NewVpc(ctx, "main", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foo, err := ec2.NewSubnet(ctx, "foo", &ec2.SubnetArgs{
/// 			VpcId:            main.ID(),
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 			CidrBlock:        pulumi.String("10.0.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bar, err := ec2.NewSubnet(ctx, "bar", &ec2.SubnetArgs{
/// 			VpcId:            main.ID(),
/// 			AvailabilityZone: pulumi.String("us-west-2b"),
/// 			CidrBlock:        pulumi.String("10.0.2.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directoryservice.NewDirectory(ctx, "connector", &directoryservice.DirectoryArgs{
/// 			Name:     pulumi.String("corp.notexample.com"),
/// 			Password: pulumi.String("SuperSecretPassw0rd"),
/// 			Size:     pulumi.String("Small"),
/// 			Type:     pulumi.String("ADConnector"),
/// 			ConnectSettings: &directoryservice.DirectoryConnectSettingsArgs{
/// 				CustomerDnsIps: pulumi.StringArray{
/// 					pulumi.String("A.B.C.D"),
/// 				},
/// 				CustomerUsername: pulumi.String("Admin"),
/// 				SubnetIds: pulumi.StringArray{
/// 					foo.ID(),
/// 					bar.ID(),
/// 				},
/// 				VpcId: main.ID(),
/// 			},
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.directoryservice.Directory;
/// import com.pulumi.aws.directoryservice.DirectoryArgs;
/// import com.pulumi.aws.directoryservice.inputs.DirectoryConnectSettingsArgs;
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
///         var main = new Vpc("main", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var foo = new Subnet("foo", SubnetArgs.builder()
///             .vpcId(main.id())
///             .availabilityZone("us-west-2a")
///             .cidrBlock("10.0.1.0/24")
///             .build());
///
///         var bar = new Subnet("bar", SubnetArgs.builder()
///             .vpcId(main.id())
///             .availabilityZone("us-west-2b")
///             .cidrBlock("10.0.2.0/24")
///             .build());
///
///         var connector = new Directory("connector", DirectoryArgs.builder()
///             .name("corp.notexample.com")
///             .password("SuperSecretPassw0rd")
///             .size("Small")
///             .type("ADConnector")
///             .connectSettings(DirectoryConnectSettingsArgs.builder()
///                 .customerDnsIps("A.B.C.D")
///                 .customerUsername("Admin")
///                 .subnetIds(
///                     foo.id(),
///                     bar.id())
///                 .vpcId(main.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connector:
///     type: aws:directoryservice:Directory
///     properties:
///       name: corp.notexample.com
///       password: SuperSecretPassw0rd
///       size: Small
///       type: ADConnector
///       connectSettings:
///         customerDnsIps:
///           - A.B.C.D
///         customerUsername: Admin
///         subnetIds:
///           - ${foo.id}
///           - ${bar.id}
///         vpcId: ${main.id}
///   main:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///   foo:
///     type: aws:ec2:Subnet
///     properties:
///       vpcId: ${main.id}
///       availabilityZone: us-west-2a
///       cidrBlock: 10.0.1.0/24
///   bar:
///     type: aws:ec2:Subnet
///     properties:
///       vpcId: ${main.id}
///       availabilityZone: us-west-2b
///       cidrBlock: 10.0.2.0/24
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DirectoryService directories using the directory `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/directory:Directory sample d-926724cf57
/// ```
class Directory extends pulumi.CustomResource {
  /// The access URL for the directory, such as `http://alias.awsapps.com`.
  late final pulumi.Output<String> accessUrl;
  /// The alias for the directory (must be unique amongst all aliases in AWS). Required for `enable_sso`.
  late final pulumi.Output<String> alias;
  /// Connector related information about the directory. Fields documented below.
  late final pulumi.Output<DirectoryConnectSettings?> connectSettings;
  /// A textual description for the directory.
  late final pulumi.Output<String?> description;
  /// The number of domain controllers desired in the directory. Minimum value of `2`. Scaling of domain controllers is only supported for `MicrosoftAD` directories.
  late final pulumi.Output<int> desiredNumberOfDomainControllers;
  /// A list of IP addresses of the DNS servers for the directory or connector.
  late final pulumi.Output<List<String>> dnsIpAddresses;
  /// The MicrosoftAD edition (`Standard` or `Enterprise`). Defaults to `Enterprise`.
  late final pulumi.Output<String> edition;
  /// Whether to enable single-sign on for the directory. Requires `alias`. Defaults to `false`.
  late final pulumi.Output<bool?> enableSso;
  /// The fully qualified name for the directory, such as `corp.example.com`
  late final pulumi.Output<String> name;
  /// The password for the directory administrator or connector user.
  late final pulumi.Output<String> password;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the security group created by the directory.
  late final pulumi.Output<String> securityGroupId;
  /// The short name of the directory, such as `CORP`.
  late final pulumi.Output<String> shortName;
  /// (For `SimpleAD` and `ADConnector` types) The size of the directory (`Small` or `Large` are accepted values). `Large` by default.
  late final pulumi.Output<String> size;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The directory type (`SimpleAD`, `ADConnector` or `MicrosoftAD` are accepted values). Defaults to `SimpleAD`.
  late final pulumi.Output<String?> type;
  /// VPC related information about the directory. Fields documented below.
  late final pulumi.Output<DirectoryVpcSettings?> vpcSettings;

  /// Creates a new [Directory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Directory]. {@macro pulumi_directoryservice_directory_directory_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Directory(
    String name, {
    DirectoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/directory:Directory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessUrl = registerOutput<String>('accessUrl');
    this.alias = registerOutput<String>('alias');
    this.connectSettings = registerOutput<DirectoryConnectSettings?>('connectSettings');
    this.description = registerOutput<String?>('description');
    this.desiredNumberOfDomainControllers = registerOutput<int>('desiredNumberOfDomainControllers');
    this.dnsIpAddresses = registerOutput<List<String>>('dnsIpAddresses');
    this.edition = registerOutput<String>('edition');
    this.enableSso = registerOutput<bool?>('enableSso');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String>('password');
    this.region = registerOutput<String>('region');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.shortName = registerOutput<String>('shortName');
    this.size = registerOutput<String>('size');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
    this.vpcSettings = registerOutput<DirectoryVpcSettings?>('vpcSettings');
  }
}
