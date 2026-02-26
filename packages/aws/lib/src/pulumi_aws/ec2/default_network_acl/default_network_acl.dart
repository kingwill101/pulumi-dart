import 'package:pulumi/pulumi.dart';
import '../default_network_acl_egress/default_network_acl_egress.dart';
import '../default_network_acl_ingress/default_network_acl_ingress.dart';
import 'default_network_acl_args.dart';

/// Provides a resource to manage a VPC's default network ACL. This resource can manage the default network ACL of the default or a non-default VPC.
///
/// > **NOTE:** This is an advanced resource with special caveats. Please read this document in its entirety before using this resource. The <span pulumi-lang-nodejs="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-dotnet="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-go="`ec2.DefaultNetworkAcl`" pulumi-lang-python="`ec2.DefaultNetworkAcl`" pulumi-lang-yaml="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-java="`aws.ec2.DefaultNetworkAcl`">`aws.ec2.DefaultNetworkAcl`</span> behaves differently from normal resources. This provider does not _create_ this resource but instead attempts to "adopt" it into management.
///
/// Every VPC has a default network ACL that can be managed but not destroyed. When the provider first adopts the Default Network ACL, it **immediately removes all rules in the ACL**. It then proceeds to create any rules specified in the configuration. This step is required so that only the rules specified in the configuration are created.
///
/// This resource treats its inline rules as absolute; only the rules defined inline are created, and any additions/removals external to this resource will result in diffs being shown. For these reasons, this resource is incompatible with the <span pulumi-lang-nodejs="`aws.ec2.NetworkAclRule`" pulumi-lang-dotnet="`aws.ec2.NetworkAclRule`" pulumi-lang-go="`ec2.NetworkAclRule`" pulumi-lang-python="`ec2.NetworkAclRule`" pulumi-lang-yaml="`aws.ec2.NetworkAclRule`" pulumi-lang-java="`aws.ec2.NetworkAclRule`">`aws.ec2.NetworkAclRule`</span> resource.
///
/// For more information about Network ACLs, see the AWS Documentation on [Network ACLs][aws-network-acls].
///
/// ## Example Usage
///
/// ### Basic Example
///
/// The following config gives the Default Network ACL the same rules that AWS includes but pulls the resource under management by this provider. This means that any ACL rules added or changed will be detected as drift.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const mainvpc = new aws.ec2.Vpc("mainvpc", {cidrBlock: "10.1.0.0/16"});
/// const _default = new aws.ec2.DefaultNetworkAcl("default", {
/// defaultNetworkAclId: mainvpc.defaultNetworkAclId,
/// ingress: [{
/// protocol: "-1",
/// ruleNo: 100,
/// action: "allow",
/// cidrBlock: "0.0.0.0/0",
/// fromPort: 0,
/// toPort: 0,
/// }],
/// egress: [{
/// protocol: "-1",
/// ruleNo: 100,
/// action: "allow",
/// cidrBlock: "0.0.0.0/0",
/// fromPort: 0,
/// toPort: 0,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// mainvpc = aws.ec2.Vpc("mainvpc", cidr_block="10.1.0.0/16")
/// default = aws.ec2.DefaultNetworkAcl("default",
/// default_network_acl_id=mainvpc.default_network_acl_id,
/// ingress=[{
/// "protocol": "-1",
/// "rule_no": 100,
/// "action": "allow",
/// "cidr_block": "0.0.0.0/0",
/// "from_port": 0,
/// "to_port": 0,
/// }],
/// egress=[{
/// "protocol": "-1",
/// "rule_no": 100,
/// "action": "allow",
/// "cidr_block": "0.0.0.0/0",
/// "from_port": 0,
/// "to_port": 0,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var mainvpc = new Aws.Ec2.Vpc("mainvpc", new()
/// {
/// CidrBlock = "10.1.0.0/16",
/// });
///
/// var @default = new Aws.Ec2.DefaultNetworkAcl("default", new()
/// {
/// DefaultNetworkAclId = mainvpc.DefaultNetworkAclId,
/// Ingress = new[]
/// {
/// new Aws.Ec2.Inputs.DefaultNetworkAclIngressArgs
/// {
/// Protocol = "-1",
/// RuleNo = 100,
/// Action = "allow",
/// CidrBlock = "0.0.0.0/0",
/// FromPort = 0,
/// ToPort = 0,
/// },
/// },
/// Egress = new[]
/// {
/// new Aws.Ec2.Inputs.DefaultNetworkAclEgressArgs
/// {
/// Protocol = "-1",
/// RuleNo = 100,
/// Action = "allow",
/// CidrBlock = "0.0.0.0/0",
/// FromPort = 0,
/// ToPort = 0,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// mainvpc, err := ec2.NewVpc(ctx, "mainvpc", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.1.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewDefaultNetworkAcl(ctx, "default", &ec2.DefaultNetworkAclArgs{
/// DefaultNetworkAclId: mainvpc.DefaultNetworkAclId,
/// Ingress: ec2.DefaultNetworkAclIngressArray{
/// &ec2.DefaultNetworkAclIngressArgs{
/// Protocol:  pulumi.String("-1"),
/// RuleNo:    pulumi.Int(100),
/// Action:    pulumi.String("allow"),
/// CidrBlock: pulumi.String("0.0.0.0/0"),
/// FromPort:  pulumi.Int(0),
/// ToPort:    pulumi.Int(0),
/// },
/// },
/// Egress: ec2.DefaultNetworkAclEgressArray{
/// &ec2.DefaultNetworkAclEgressArgs{
/// Protocol:  pulumi.String("-1"),
/// RuleNo:    pulumi.Int(100),
/// Action:    pulumi.String("allow"),
/// CidrBlock: pulumi.String("0.0.0.0/0"),
/// FromPort:  pulumi.Int(0),
/// ToPort:    pulumi.Int(0),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.aws.ec2.DefaultNetworkAcl;
/// import com.pulumi.aws.ec2.DefaultNetworkAclArgs;
/// import com.pulumi.aws.ec2.inputs.DefaultNetworkAclIngressArgs;
/// import com.pulumi.aws.ec2.inputs.DefaultNetworkAclEgressArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var mainvpc = new Vpc("mainvpc", VpcArgs.builder()
/// .cidrBlock("10.1.0.0/16")
/// .build());
///
/// var default_ = new DefaultNetworkAcl("default", DefaultNetworkAclArgs.builder()
/// .defaultNetworkAclId(mainvpc.defaultNetworkAclId())
/// .ingress(DefaultNetworkAclIngressArgs.builder()
/// .protocol("-1")
/// .ruleNo(100)
/// .action("allow")
/// .cidrBlock("0.0.0.0/0")
/// .fromPort(0)
/// .toPort(0)
/// .build())
/// .egress(DefaultNetworkAclEgressArgs.builder()
/// .protocol("-1")
/// .ruleNo(100)
/// .action("allow")
/// .cidrBlock("0.0.0.0/0")
/// .fromPort(0)
/// .toPort(0)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// mainvpc:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.1.0.0/16
/// default:
/// type: aws:ec2:DefaultNetworkAcl
/// properties:
/// defaultNetworkAclId: ${mainvpc.defaultNetworkAclId}
/// ingress:
/// - protocol: -1
/// ruleNo: 100
/// action: allow
/// cidrBlock: 0.0.0.0/0
/// fromPort: 0
/// toPort: 0
/// egress:
/// - protocol: -1
/// ruleNo: 100
/// action: allow
/// cidrBlock: 0.0.0.0/0
/// fromPort: 0
/// toPort: 0
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Example: Deny All Egress Traffic, Allow Ingress
///
/// The following denies all Egress traffic by omitting any <span pulumi-lang-nodejs="`egress`" pulumi-lang-dotnet="`Egress`" pulumi-lang-go="`egress`" pulumi-lang-python="`egress`" pulumi-lang-yaml="`egress`" pulumi-lang-java="`egress`">`egress`</span> rules, while including the default <span pulumi-lang-nodejs="`ingress`" pulumi-lang-dotnet="`Ingress`" pulumi-lang-go="`ingress`" pulumi-lang-python="`ingress`" pulumi-lang-yaml="`ingress`" pulumi-lang-java="`ingress`">`ingress`</span> rule to allow all traffic.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const mainvpc = new aws.ec2.Vpc("mainvpc", {cidrBlock: "10.1.0.0/16"});
/// const _default = new aws.ec2.DefaultNetworkAcl("default", {
/// defaultNetworkAclId: mainvpc.defaultNetworkAclId,
/// ingress: [{
/// protocol: "-1",
/// ruleNo: 100,
/// action: "allow",
/// cidrBlock: mainvpcAwsDefaultVpc.cidrBlock,
/// fromPort: 0,
/// toPort: 0,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// mainvpc = aws.ec2.Vpc("mainvpc", cidr_block="10.1.0.0/16")
/// default = aws.ec2.DefaultNetworkAcl("default",
/// default_network_acl_id=mainvpc.default_network_acl_id,
/// ingress=[{
/// "protocol": "-1",
/// "rule_no": 100,
/// "action": "allow",
/// "cidr_block": mainvpc_aws_default_vpc["cidrBlock"],
/// "from_port": 0,
/// "to_port": 0,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var mainvpc = new Aws.Ec2.Vpc("mainvpc", new()
/// {
/// CidrBlock = "10.1.0.0/16",
/// });
///
/// var @default = new Aws.Ec2.DefaultNetworkAcl("default", new()
/// {
/// DefaultNetworkAclId = mainvpc.DefaultNetworkAclId,
/// Ingress = new[]
/// {
/// new Aws.Ec2.Inputs.DefaultNetworkAclIngressArgs
/// {
/// Protocol = "-1",
/// RuleNo = 100,
/// Action = "allow",
/// CidrBlock = mainvpcAwsDefaultVpc.CidrBlock,
/// FromPort = 0,
/// ToPort = 0,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// mainvpc, err := ec2.NewVpc(ctx, "mainvpc", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.1.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewDefaultNetworkAcl(ctx, "default", &ec2.DefaultNetworkAclArgs{
/// DefaultNetworkAclId: mainvpc.DefaultNetworkAclId,
/// Ingress: ec2.DefaultNetworkAclIngressArray{
/// &ec2.DefaultNetworkAclIngressArgs{
/// Protocol:  pulumi.String("-1"),
/// RuleNo:    pulumi.Int(100),
/// Action:    pulumi.String("allow"),
/// CidrBlock: pulumi.Any(mainvpcAwsDefaultVpc.CidrBlock),
/// FromPort:  pulumi.Int(0),
/// ToPort:    pulumi.Int(0),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.aws.ec2.DefaultNetworkAcl;
/// import com.pulumi.aws.ec2.DefaultNetworkAclArgs;
/// import com.pulumi.aws.ec2.inputs.DefaultNetworkAclIngressArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var mainvpc = new Vpc("mainvpc", VpcArgs.builder()
/// .cidrBlock("10.1.0.0/16")
/// .build());
///
/// var default_ = new DefaultNetworkAcl("default", DefaultNetworkAclArgs.builder()
/// .defaultNetworkAclId(mainvpc.defaultNetworkAclId())
/// .ingress(DefaultNetworkAclIngressArgs.builder()
/// .protocol("-1")
/// .ruleNo(100)
/// .action("allow")
/// .cidrBlock(mainvpcAwsDefaultVpc.cidrBlock())
/// .fromPort(0)
/// .toPort(0)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// mainvpc:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.1.0.0/16
/// default:
/// type: aws:ec2:DefaultNetworkAcl
/// properties:
/// defaultNetworkAclId: ${mainvpc.defaultNetworkAclId}
/// ingress:
/// - protocol: -1
/// ruleNo: 100
/// action: allow
/// cidrBlock: ${mainvpcAwsDefaultVpc.cidrBlock}
/// fromPort: 0
/// toPort: 0
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Example: Deny All Traffic To Any Subnet In The Default Network ACL
///
/// This config denies all traffic in the Default ACL. This can be useful if you want to lock down the VPC to force all resources to assign a non-default ACL.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const mainvpc = new aws.ec2.Vpc("mainvpc", {cidrBlock: "10.1.0.0/16"});
/// const _default = new aws.ec2.DefaultNetworkAcl("default", {defaultNetworkAclId: mainvpc.defaultNetworkAclId});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// mainvpc = aws.ec2.Vpc("mainvpc", cidr_block="10.1.0.0/16")
/// default = aws.ec2.DefaultNetworkAcl("default", default_network_acl_id=mainvpc.default_network_acl_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var mainvpc = new Aws.Ec2.Vpc("mainvpc", new()
/// {
/// CidrBlock = "10.1.0.0/16",
/// });
///
/// var @default = new Aws.Ec2.DefaultNetworkAcl("default", new()
/// {
/// DefaultNetworkAclId = mainvpc.DefaultNetworkAclId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// mainvpc, err := ec2.NewVpc(ctx, "mainvpc", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.1.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewDefaultNetworkAcl(ctx, "default", &ec2.DefaultNetworkAclArgs{
/// DefaultNetworkAclId: mainvpc.DefaultNetworkAclId,
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.aws.ec2.DefaultNetworkAcl;
/// import com.pulumi.aws.ec2.DefaultNetworkAclArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var mainvpc = new Vpc("mainvpc", VpcArgs.builder()
/// .cidrBlock("10.1.0.0/16")
/// .build());
///
/// var default_ = new DefaultNetworkAcl("default", DefaultNetworkAclArgs.builder()
/// .defaultNetworkAclId(mainvpc.defaultNetworkAclId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// mainvpc:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.1.0.0/16
/// default:
/// type: aws:ec2:DefaultNetworkAcl
/// properties:
/// defaultNetworkAclId: ${mainvpc.defaultNetworkAclId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Managing Subnets In A Default Network ACL
///
/// Within a VPC, all Subnets must be associated with a Network ACL. In order to "delete" the association between a Subnet and a non-default Network ACL, the association is destroyed by replacing it with an association between the Subnet and the Default ACL instead.
///
/// When managing the Default Network ACL, you cannot "remove" Subnets. Instead, they must be reassigned to another Network ACL, or the Subnet itself must be destroyed. Because of these requirements, removing the <span pulumi-lang-nodejs="`subnetIds`" pulumi-lang-dotnet="`SubnetIds`" pulumi-lang-go="`subnetIds`" pulumi-lang-python="`subnet_ids`" pulumi-lang-yaml="`subnetIds`" pulumi-lang-java="`subnetIds`">`subnet_ids`</span> attribute from the configuration of a <span pulumi-lang-nodejs="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-dotnet="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-go="`ec2.DefaultNetworkAcl`" pulumi-lang-python="`ec2.DefaultNetworkAcl`" pulumi-lang-yaml="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-java="`aws.ec2.DefaultNetworkAcl`">`aws.ec2.DefaultNetworkAcl`</span> resource may result in a reoccurring plan, until the Subnets are reassigned to another Network ACL or are destroyed.
///
/// Because Subnets are by default associated with the Default Network ACL, any non-explicit association will show up as a plan to remove the Subnet. For example: if you have a custom <span pulumi-lang-nodejs="`aws.ec2.NetworkAcl`" pulumi-lang-dotnet="`aws.ec2.NetworkAcl`" pulumi-lang-go="`ec2.NetworkAcl`" pulumi-lang-python="`ec2.NetworkAcl`" pulumi-lang-yaml="`aws.ec2.NetworkAcl`" pulumi-lang-java="`aws.ec2.NetworkAcl`">`aws.ec2.NetworkAcl`</span> with two subnets attached, and you remove the <span pulumi-lang-nodejs="`aws.ec2.NetworkAcl`" pulumi-lang-dotnet="`aws.ec2.NetworkAcl`" pulumi-lang-go="`ec2.NetworkAcl`" pulumi-lang-python="`ec2.NetworkAcl`" pulumi-lang-yaml="`aws.ec2.NetworkAcl`" pulumi-lang-java="`aws.ec2.NetworkAcl`">`aws.ec2.NetworkAcl`</span> resource, after successfully destroying this resource future plans will show a diff on the managed <span pulumi-lang-nodejs="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-dotnet="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-go="`ec2.DefaultNetworkAcl`" pulumi-lang-python="`ec2.DefaultNetworkAcl`" pulumi-lang-yaml="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-java="`aws.ec2.DefaultNetworkAcl`">`aws.ec2.DefaultNetworkAcl`</span>, as those two Subnets have been orphaned by the now destroyed network acl and thus adopted by the Default Network ACL. In order to avoid a reoccurring plan, they will need to be reassigned, destroyed, or added to the <span pulumi-lang-nodejs="`subnetIds`" pulumi-lang-dotnet="`SubnetIds`" pulumi-lang-go="`subnetIds`" pulumi-lang-python="`subnet_ids`" pulumi-lang-yaml="`subnetIds`" pulumi-lang-java="`subnetIds`">`subnet_ids`</span> attribute of the <span pulumi-lang-nodejs="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-dotnet="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-go="`ec2.DefaultNetworkAcl`" pulumi-lang-python="`ec2.DefaultNetworkAcl`" pulumi-lang-yaml="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-java="`aws.ec2.DefaultNetworkAcl`">`aws.ec2.DefaultNetworkAcl`</span> entry.
///
/// As an alternative to the above, you can also specify the following lifecycle configuration in your <span pulumi-lang-nodejs="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-dotnet="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-go="`ec2.DefaultNetworkAcl`" pulumi-lang-python="`ec2.DefaultNetworkAcl`" pulumi-lang-yaml="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-java="`aws.ec2.DefaultNetworkAcl`">`aws.ec2.DefaultNetworkAcl`</span> resource:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.ec2.DefaultNetworkAcl("default", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.ec2.DefaultNetworkAcl("default")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.Ec2.DefaultNetworkAcl("default");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewDefaultNetworkAcl(ctx, "default", nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.DefaultNetworkAcl;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var default_ = new DefaultNetworkAcl("default");
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:ec2:DefaultNetworkAcl
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Removing <span pulumi-lang-nodejs="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-dotnet="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-go="`ec2.DefaultNetworkAcl`" pulumi-lang-python="`ec2.DefaultNetworkAcl`" pulumi-lang-yaml="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-java="`aws.ec2.DefaultNetworkAcl`">`aws.ec2.DefaultNetworkAcl`</span> From Your Configuration
///
/// Each AWS VPC comes with a Default Network ACL that cannot be deleted. The <span pulumi-lang-nodejs="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-dotnet="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-go="`ec2.DefaultNetworkAcl`" pulumi-lang-python="`ec2.DefaultNetworkAcl`" pulumi-lang-yaml="`aws.ec2.DefaultNetworkAcl`" pulumi-lang-java="`aws.ec2.DefaultNetworkAcl`">`aws.ec2.DefaultNetworkAcl`</span> allows you to manage this Network ACL, but the provider cannot destroy it. Removing this resource from your configuration will remove it from your statefile and management, **but will not destroy the Network ACL.** All Subnets associations and ingress or egress rules will be left as they are at the time of removal. You can resume managing them via the AWS Console.
///
/// ## Import
///
/// Using `pulumi import`, import Default Network ACLs using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/defaultNetworkAcl:DefaultNetworkAcl sample acl-7aaabd18
/// ```
class DefaultNetworkAcl extends CustomResource {
  /// ARN of the Default Network ACL
  late final Output<String> arn;

  /// Network ACL ID to manage. This attribute is exported from <span pulumi-lang-nodejs="`aws.ec2.Vpc`" pulumi-lang-dotnet="`aws.ec2.Vpc`" pulumi-lang-go="`ec2.Vpc`" pulumi-lang-python="`ec2.Vpc`" pulumi-lang-yaml="`aws.ec2.Vpc`" pulumi-lang-java="`aws.ec2.Vpc`">`aws.ec2.Vpc`</span>, or manually found via the AWS Console.
  ///
  /// The following arguments are optional:
  late final Output<String> defaultNetworkAclId;

  /// Configuration block for an egress rule. Detailed below.
  late final Output<List<DefaultNetworkAclEgress>?> egress;

  /// Configuration block for an ingress rule. Detailed below.
  late final Output<List<DefaultNetworkAclIngress>?> ingress;

  /// ID of the AWS account that owns the Default Network ACL
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of Subnet IDs to apply the ACL to. See the notes above on Managing Subnets in the Default Network ACL
  late final Output<List<String>?> subnetIds;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ID of the associated VPC
  late final Output<String> vpcId;

  DefaultNetworkAcl(
    String name, {
    DefaultNetworkAclArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/defaultNetworkAcl:DefaultNetworkAcl',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultNetworkAclId = registerOutput<String>('defaultNetworkAclId');
    this.egress = registerOutput<List<DefaultNetworkAclEgress>?>('egress');
    this.ingress = registerOutput<List<DefaultNetworkAclIngress>?>('ingress');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.subnetIds = registerOutput<List<String>?>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
