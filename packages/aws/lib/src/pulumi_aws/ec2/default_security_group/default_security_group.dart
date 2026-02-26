import 'package:pulumi/pulumi.dart';
import '../default_security_group_egress/default_security_group_egress.dart';
import '../default_security_group_ingress/default_security_group_ingress.dart';
import 'default_security_group_args.dart';

/// Provides a resource to manage a default security group. This resource can manage the default security group of the default or a non-default VPC.
///
/// > **NOTE:** This is an advanced resource with special caveats. Please read this document in its entirety before using this resource. The <span pulumi-lang-nodejs="`aws.ec2.DefaultSecurityGroup`" pulumi-lang-dotnet="`aws.ec2.DefaultSecurityGroup`" pulumi-lang-go="`ec2.DefaultSecurityGroup`" pulumi-lang-python="`ec2.DefaultSecurityGroup`" pulumi-lang-yaml="`aws.ec2.DefaultSecurityGroup`" pulumi-lang-java="`aws.ec2.DefaultSecurityGroup`">`aws.ec2.DefaultSecurityGroup`</span> resource behaves differently from normal resources. This provider does not _create_ this resource but instead attempts to "adopt" it into management.
///
/// When the provider first begins managing the default security group, it **immediately removes all ingress and egress rules in the Security Group**. It then creates any rules specified in the configuration. This way only the rules specified in the configuration are created.
///
/// This resource treats its inline rules as absolute; only the rules defined inline are created, and any additions/removals external to this resource will result in diff shown. For these reasons, this resource is incompatible with the <span pulumi-lang-nodejs="`aws.ec2.SecurityGroupRule`" pulumi-lang-dotnet="`aws.ec2.SecurityGroupRule`" pulumi-lang-go="`ec2.SecurityGroupRule`" pulumi-lang-python="`ec2.SecurityGroupRule`" pulumi-lang-yaml="`aws.ec2.SecurityGroupRule`" pulumi-lang-java="`aws.ec2.SecurityGroupRule`">`aws.ec2.SecurityGroupRule`</span> resource.
///
/// For more information about default security groups, see the AWS documentation on [Default Security Groups][aws-default-security-groups]. To manage normal security groups, see the <span pulumi-lang-nodejs="`aws.ec2.SecurityGroup`" pulumi-lang-dotnet="`aws.ec2.SecurityGroup`" pulumi-lang-go="`ec2.SecurityGroup`" pulumi-lang-python="`ec2.SecurityGroup`" pulumi-lang-yaml="`aws.ec2.SecurityGroup`" pulumi-lang-java="`aws.ec2.SecurityGroup`">`aws.ec2.SecurityGroup`</span> resource.
///
/// ## Example Usage
///
/// The following config gives the default security group the same rules that AWS provides by default but under management by this provider. This means that any ingress or egress rules added or changed will be detected as drift.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const mainvpc = new aws.ec2.Vpc("mainvpc", {cidrBlock: "10.1.0.0/16"});
/// const _default = new aws.ec2.DefaultSecurityGroup("default", {
/// vpcId: mainvpc.id,
/// ingress: [{
/// protocol: "-1",
/// self: true,
/// fromPort: 0,
/// toPort: 0,
/// }],
/// egress: [{
/// fromPort: 0,
/// toPort: 0,
/// protocol: "-1",
/// cidrBlocks: ["0.0.0.0/0"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// mainvpc = aws.ec2.Vpc("mainvpc", cidr_block="10.1.0.0/16")
/// default = aws.ec2.DefaultSecurityGroup("default",
/// vpc_id=mainvpc.id,
/// ingress=[{
/// "protocol": "-1",
/// "self": True,
/// "from_port": 0,
/// "to_port": 0,
/// }],
/// egress=[{
/// "from_port": 0,
/// "to_port": 0,
/// "protocol": "-1",
/// "cidr_blocks": ["0.0.0.0/0"],
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
/// var @default = new Aws.Ec2.DefaultSecurityGroup("default", new()
/// {
/// VpcId = mainvpc.Id,
/// Ingress = new[]
/// {
/// new Aws.Ec2.Inputs.DefaultSecurityGroupIngressArgs
/// {
/// Protocol = "-1",
/// Self = true,
/// FromPort = 0,
/// ToPort = 0,
/// },
/// },
/// Egress = new[]
/// {
/// new Aws.Ec2.Inputs.DefaultSecurityGroupEgressArgs
/// {
/// FromPort = 0,
/// ToPort = 0,
/// Protocol = "-1",
/// CidrBlocks = new[]
/// {
/// "0.0.0.0/0",
/// },
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
/// _, err = ec2.NewDefaultSecurityGroup(ctx, "default", &ec2.DefaultSecurityGroupArgs{
/// VpcId: mainvpc.ID(),
/// Ingress: ec2.DefaultSecurityGroupIngressArray{
/// &ec2.DefaultSecurityGroupIngressArgs{
/// Protocol: pulumi.String("-1"),
/// Self:     pulumi.Bool(true),
/// FromPort: pulumi.Int(0),
/// ToPort:   pulumi.Int(0),
/// },
/// },
/// Egress: ec2.DefaultSecurityGroupEgressArray{
/// &ec2.DefaultSecurityGroupEgressArgs{
/// FromPort: pulumi.Int(0),
/// ToPort:   pulumi.Int(0),
/// Protocol: pulumi.String("-1"),
/// CidrBlocks: pulumi.StringArray{
/// pulumi.String("0.0.0.0/0"),
/// },
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
/// import com.pulumi.aws.ec2.DefaultSecurityGroup;
/// import com.pulumi.aws.ec2.DefaultSecurityGroupArgs;
/// import com.pulumi.aws.ec2.inputs.DefaultSecurityGroupIngressArgs;
/// import com.pulumi.aws.ec2.inputs.DefaultSecurityGroupEgressArgs;
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
/// var default_ = new DefaultSecurityGroup("default", DefaultSecurityGroupArgs.builder()
/// .vpcId(mainvpc.id())
/// .ingress(DefaultSecurityGroupIngressArgs.builder()
/// .protocol("-1")
/// .self(true)
/// .fromPort(0)
/// .toPort(0)
/// .build())
/// .egress(DefaultSecurityGroupEgressArgs.builder()
/// .fromPort(0)
/// .toPort(0)
/// .protocol("-1")
/// .cidrBlocks("0.0.0.0/0")
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
/// type: aws:ec2:DefaultSecurityGroup
/// properties:
/// vpcId: ${mainvpc.id}
/// ingress:
/// - protocol: -1
/// self: true
/// fromPort: 0
/// toPort: 0
/// egress:
/// - fromPort: 0
/// toPort: 0
/// protocol: '-1'
/// cidrBlocks:
/// - 0.0.0.0/0
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Example Config To Deny All Egress Traffic, Allowing Ingress
///
/// The following denies all Egress traffic by omitting any <span pulumi-lang-nodejs="`egress`" pulumi-lang-dotnet="`Egress`" pulumi-lang-go="`egress`" pulumi-lang-python="`egress`" pulumi-lang-yaml="`egress`" pulumi-lang-java="`egress`">`egress`</span> rules, while including the default <span pulumi-lang-nodejs="`ingress`" pulumi-lang-dotnet="`Ingress`" pulumi-lang-go="`ingress`" pulumi-lang-python="`ingress`" pulumi-lang-yaml="`ingress`" pulumi-lang-java="`ingress`">`ingress`</span> rule to allow all traffic.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const mainvpc = new aws.ec2.Vpc("mainvpc", {cidrBlock: "10.1.0.0/16"});
/// const _default = new aws.ec2.DefaultSecurityGroup("default", {
/// vpcId: mainvpc.id,
/// ingress: [{
/// protocol: "-1",
/// self: true,
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
/// default = aws.ec2.DefaultSecurityGroup("default",
/// vpc_id=mainvpc.id,
/// ingress=[{
/// "protocol": "-1",
/// "self": True,
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
/// var @default = new Aws.Ec2.DefaultSecurityGroup("default", new()
/// {
/// VpcId = mainvpc.Id,
/// Ingress = new[]
/// {
/// new Aws.Ec2.Inputs.DefaultSecurityGroupIngressArgs
/// {
/// Protocol = "-1",
/// Self = true,
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
/// _, err = ec2.NewDefaultSecurityGroup(ctx, "default", &ec2.DefaultSecurityGroupArgs{
/// VpcId: mainvpc.ID(),
/// Ingress: ec2.DefaultSecurityGroupIngressArray{
/// &ec2.DefaultSecurityGroupIngressArgs{
/// Protocol: pulumi.String("-1"),
/// Self:     pulumi.Bool(true),
/// FromPort: pulumi.Int(0),
/// ToPort:   pulumi.Int(0),
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
/// import com.pulumi.aws.ec2.DefaultSecurityGroup;
/// import com.pulumi.aws.ec2.DefaultSecurityGroupArgs;
/// import com.pulumi.aws.ec2.inputs.DefaultSecurityGroupIngressArgs;
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
/// var default_ = new DefaultSecurityGroup("default", DefaultSecurityGroupArgs.builder()
/// .vpcId(mainvpc.id())
/// .ingress(DefaultSecurityGroupIngressArgs.builder()
/// .protocol("-1")
/// .self(true)
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
/// type: aws:ec2:DefaultSecurityGroup
/// properties:
/// vpcId: ${mainvpc.id}
/// ingress:
/// - protocol: -1
/// self: true
/// fromPort: 0
/// toPort: 0
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Removing <span pulumi-lang-nodejs="`aws.ec2.DefaultSecurityGroup`" pulumi-lang-dotnet="`aws.ec2.DefaultSecurityGroup`" pulumi-lang-go="`ec2.DefaultSecurityGroup`" pulumi-lang-python="`ec2.DefaultSecurityGroup`" pulumi-lang-yaml="`aws.ec2.DefaultSecurityGroup`" pulumi-lang-java="`aws.ec2.DefaultSecurityGroup`">`aws.ec2.DefaultSecurityGroup`</span> From Your Configuration
///
/// Removing this resource from your configuration will remove it from your statefile and management, but will not destroy the Security Group. All ingress or egress rules will be left as they are at the time of removal. You can resume managing them via the AWS Console.
///
/// ## Import
///
/// Using `pulumi import`, import Security Groups using the security group <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/defaultSecurityGroup:DefaultSecurityGroup default_sg sg-903004f8
/// ```
class DefaultSecurityGroup extends CustomResource {
  /// ARN of the security group.
  late final Output<String> arn;

  /// Description of the security group.
  late final Output<String> description;

  /// Configuration block. Detailed below.
  late final Output<List<DefaultSecurityGroupEgress>> egress;

  /// Configuration block. Detailed below.
  late final Output<List<DefaultSecurityGroupIngress>> ingress;

  /// Name of the security group.
  late final Output<String> name;
  late final Output<String> namePrefix;

  /// Owner ID.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<bool?> revokeRulesOnDelete;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// VPC ID. **Note that changing the <span pulumi-lang-nodejs="`vpcId`" pulumi-lang-dotnet="`VpcId`" pulumi-lang-go="`vpcId`" pulumi-lang-python="`vpc_id`" pulumi-lang-yaml="`vpcId`" pulumi-lang-java="`vpcId`">`vpc_id`</span> will _not_ restore any default security group rules that were modified, added, or removed.** It will be left in its current state.
  late final Output<String> vpcId;

  DefaultSecurityGroup(
    String name, {
    DefaultSecurityGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/defaultSecurityGroup:DefaultSecurityGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.egress = Output.createUnknown<List<DefaultSecurityGroupEgress>>();
    this.ingress = Output.createUnknown<List<DefaultSecurityGroupIngress>>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.ownerId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.revokeRulesOnDelete = Output.createUnknown<bool?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcId = Output.createUnknown<String>();
  }
}
