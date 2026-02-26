import 'package:pulumi/pulumi.dart';
import '../encryption_control_resource_exclusions/encryption_control_resource_exclusions.dart';
import '../encryption_control_timeouts/encryption_control_timeouts.dart';
import 'encryption_control_args.dart';

/// Manages a VPC Encryption Control.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleVpc = new aws.ec2.Vpc("example", {cidrBlock: "10.1.0.0/16"});
/// const example = new aws.ec2.VpcEncryptionControl("example", {
/// vpcId: exampleVpc.id,
/// mode: "monitor",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_vpc = aws.ec2.Vpc("example", cidr_block="10.1.0.0/16")
/// example = aws.ec2.VpcEncryptionControl("example",
/// vpc_id=example_vpc.id,
/// mode="monitor")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleVpc = new Aws.Ec2.Vpc("example", new()
/// {
/// CidrBlock = "10.1.0.0/16",
/// });
///
/// var example = new Aws.Ec2.VpcEncryptionControl("example", new()
/// {
/// VpcId = exampleVpc.Id,
/// Mode = "monitor",
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
/// exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.1.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpcEncryptionControl(ctx, "example", &ec2.VpcEncryptionControlArgs{
/// VpcId: exampleVpc.ID(),
/// Mode:  pulumi.String("monitor"),
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
/// import com.pulumi.aws.ec2.VpcEncryptionControl;
/// import com.pulumi.aws.ec2.VpcEncryptionControlArgs;
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
/// var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
/// .cidrBlock("10.1.0.0/16")
/// .build());
///
/// var example = new VpcEncryptionControl("example", VpcEncryptionControlArgs.builder()
/// .vpcId(exampleVpc.id())
/// .mode("monitor")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:VpcEncryptionControl
/// properties:
/// vpcId: ${exampleVpc.id}
/// mode: monitor
/// exampleVpc:
/// type: aws:ec2:Vpc
/// name: example
/// properties:
/// cidrBlock: 10.1.0.0/16
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import VPC Encryption Control using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/encryptionControl:EncryptionControl example vpcec-12345678901234567
/// ```
class EncryptionControl extends CustomResource {
  /// Whether to exclude Egress-Only Internet Gateways from encryption enforcement.
  /// Valid values are <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span> or <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  /// Default is <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  /// Only valid when <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span> is <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span>.
  late final Output<String> egressOnlyInternetGatewayExclusion;

  /// Whether to exclude Elastic File System (EFS) from encryption enforcement.
  /// Valid values are <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span> or <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  /// Default is <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  /// Only valid when <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span> is <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span>.
  late final Output<String> elasticFileSystemExclusion;

  /// Whether to exclude Internet Gateways from encryption enforcement.
  /// Valid values are <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span> or <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  /// Default is <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  /// Only valid when <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span> is <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span>.
  late final Output<String> internetGatewayExclusion;

  /// Whether to exclude Lambda Functions from encryption enforcement.
  /// Valid values are <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span> or <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  /// Default is <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  /// Only valid when <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span> is <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span>.
  late final Output<String> lambdaExclusion;

  /// Mode to enable for VPC Encryption Control.
  /// Valid values are <span pulumi-lang-nodejs="`monitor`" pulumi-lang-dotnet="`Monitor`" pulumi-lang-go="`monitor`" pulumi-lang-python="`monitor`" pulumi-lang-yaml="`monitor`" pulumi-lang-java="`monitor`">`monitor`</span> or <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span>.
  late final Output<String> mode;

  /// Whether to exclude NAT Gateways from encryption enforcement.
  /// Valid values are <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span> or <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  /// Default is <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  /// Only valid when <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span> is <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span>.
  late final Output<String> natGatewayExclusion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// State of exclusions from encryption enforcement.
  /// Will be <span pulumi-lang-nodejs="`nil`" pulumi-lang-dotnet="`Nil`" pulumi-lang-go="`nil`" pulumi-lang-python="`nil`" pulumi-lang-yaml="`nil`" pulumi-lang-java="`nil`">`nil`</span> if <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span> is <span pulumi-lang-nodejs="`monitor`" pulumi-lang-dotnet="`Monitor`" pulumi-lang-go="`monitor`" pulumi-lang-python="`monitor`" pulumi-lang-yaml="`monitor`" pulumi-lang-java="`monitor`">`monitor`</span>.
  /// See <span pulumi-lang-nodejs="`resourceExclusions`" pulumi-lang-dotnet="`ResourceExclusions`" pulumi-lang-go="`resourceExclusions`" pulumi-lang-python="`resource_exclusions`" pulumi-lang-yaml="`resourceExclusions`" pulumi-lang-java="`resourceExclusions`">`resource_exclusions`</span> below
  late final Output<EncryptionControlResourceExclusions> resourceExclusions;

  /// The current state of the VPC Encryption Control.
  late final Output<String> state;

  /// A message providing additional information about the state of the VPC Encryption Control.
  late final Output<String> stateMessage;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<EncryptionControlTimeouts?> timeouts;

  /// Whether to exclude Virtual Private Gateways from encryption enforcement.
  /// Valid values are <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span> or <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  /// Default is <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  /// Only valid when <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span> is <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span>.
  late final Output<String> virtualPrivateGatewayExclusion;

  /// The ID of the VPC the VPC Encryption Control is linked to.
  ///
  /// The following arguments are optional:
  late final Output<String> vpcId;

  /// Whether to exclude VPC Lattice from encryption enforcement.
  /// Valid values are <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span> or <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  /// Default is <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  /// Only valid when <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span> is <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span>.
  late final Output<String> vpcLatticeExclusion;

  /// Whether to exclude peered VPCs from encryption enforcement.
  /// Valid values are <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span> or <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  /// Default is <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  /// Only valid when <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span> is <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span>.
  late final Output<String> vpcPeeringExclusion;

  EncryptionControl(
    String name, {
    EncryptionControlArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/encryptionControl:EncryptionControl',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.egressOnlyInternetGatewayExclusion = Output.createUnknown<String>();
    this.elasticFileSystemExclusion = Output.createUnknown<String>();
    this.internetGatewayExclusion = Output.createUnknown<String>();
    this.lambdaExclusion = Output.createUnknown<String>();
    this.mode = Output.createUnknown<String>();
    this.natGatewayExclusion = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resourceExclusions =
        Output.createUnknown<EncryptionControlResourceExclusions>();
    this.state = Output.createUnknown<String>();
    this.stateMessage = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<EncryptionControlTimeouts?>();
    this.virtualPrivateGatewayExclusion = Output.createUnknown<String>();
    this.vpcId = Output.createUnknown<String>();
    this.vpcLatticeExclusion = Output.createUnknown<String>();
    this.vpcPeeringExclusion = Output.createUnknown<String>();
  }
}
