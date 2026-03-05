import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_encryption_control_args.dart';
import 'vpc_encryption_control_resource_exclusions.dart';
import 'vpc_encryption_control_state.dart';
import 'vpc_encryption_control_timeouts.dart';

/// Manages a VPC Encryption Control.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleVpc = new aws.ec2.Vpc("example", {cidrBlock: "10.1.0.0/16"});
/// const example = new aws.ec2.VpcEncryptionControl("example", {
///     vpcId: exampleVpc.id,
///     mode: "monitor",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_vpc = aws.ec2.Vpc("example", cidr_block="10.1.0.0/16")
/// example = aws.ec2.VpcEncryptionControl("example",
///     vpc_id=example_vpc.id,
///     mode="monitor")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleVpc = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.1.0.0/16",
///     });
///
///     var example = new Aws.Ec2.VpcEncryptionControl("example", new()
///     {
///         VpcId = exampleVpc.Id,
///         Mode = "monitor",
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
/// 		exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcEncryptionControl(ctx, "example", &ec2.VpcEncryptionControlArgs{
/// 			VpcId: exampleVpc.ID(),
/// 			Mode:  pulumi.String("monitor"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
///             .cidrBlock("10.1.0.0/16")
///             .build());
///
///         var example = new VpcEncryptionControl("example", VpcEncryptionControlArgs.builder()
///             .vpcId(exampleVpc.id())
///             .mode("monitor")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:VpcEncryptionControl
///     properties:
///       vpcId: ${exampleVpc.id}
///       mode: monitor
///   exampleVpc:
///     type: aws:ec2:Vpc
///     name: example
///     properties:
///       cidrBlock: 10.1.0.0/16
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Encryption Control using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEncryptionControl:VpcEncryptionControl example vpcec-12345678901234567
/// ```
class VpcEncryptionControl extends pulumi.CustomResource {
  /// Whether to exclude Egress-Only Internet Gateways from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  late final pulumi.Output<String> egressOnlyInternetGatewayExclusion;

  /// Whether to exclude Elastic File System (EFS) from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  late final pulumi.Output<String> elasticFileSystemExclusion;

  /// Whether to exclude Internet Gateways from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  late final pulumi.Output<String> internetGatewayExclusion;

  /// Whether to exclude Lambda Functions from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  late final pulumi.Output<String> lambdaExclusion;

  /// Mode to enable for VPC Encryption Control.
  /// Valid values are `monitor` or `enforce`.
  late final pulumi.Output<String> mode;

  /// Whether to exclude NAT Gateways from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  late final pulumi.Output<String> natGatewayExclusion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// State of exclusions from encryption enforcement.
  /// Will be `nil` if `mode` is `monitor`.
  /// See `resource_exclusions` below
  late final pulumi.Output<VpcEncryptionControlResourceExclusions>
  resourceExclusions;

  /// The current state of the VPC Encryption Control.
  late final pulumi.Output<String> state;

  /// A message providing additional information about the state of the VPC Encryption Control.
  late final pulumi.Output<String> stateMessage;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<VpcEncryptionControlTimeouts?> timeouts;

  /// Whether to exclude Virtual Private Gateways from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  late final pulumi.Output<String> virtualPrivateGatewayExclusion;

  /// The ID of the VPC the VPC Encryption Control is linked to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vpcId;

  /// Whether to exclude VPC Lattice from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  late final pulumi.Output<String> vpcLatticeExclusion;

  /// Whether to exclude peered VPCs from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  late final pulumi.Output<String> vpcPeeringExclusion;

  /// Creates a new [VpcEncryptionControl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcEncryptionControl]. {@macro pulumi_ec2_vpc_encryption_control_vpc_encryption_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcEncryptionControl(
    String name, {
    VpcEncryptionControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/vpcEncryptionControl:VpcEncryptionControl',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    egressOnlyInternetGatewayExclusion = registerOutput<String>(
      'egressOnlyInternetGatewayExclusion',
    );
    elasticFileSystemExclusion = registerOutput<String>(
      'elasticFileSystemExclusion',
    );
    internetGatewayExclusion = registerOutput<String>(
      'internetGatewayExclusion',
    );
    lambdaExclusion = registerOutput<String>('lambdaExclusion');
    mode = registerOutput<String>('mode');
    natGatewayExclusion = registerOutput<String>('natGatewayExclusion');
    region = registerOutput<String>('region');
    resourceExclusions = registerOutput<VpcEncryptionControlResourceExclusions>(
      'resourceExclusions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VpcEncryptionControlResourceExclusions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    state = registerOutput<String>('state');
    stateMessage = registerOutput<String>('stateMessage');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<VpcEncryptionControlTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VpcEncryptionControlTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    virtualPrivateGatewayExclusion = registerOutput<String>(
      'virtualPrivateGatewayExclusion',
    );
    vpcId = registerOutput<String>('vpcId');
    vpcLatticeExclusion = registerOutput<String>('vpcLatticeExclusion');
    vpcPeeringExclusion = registerOutput<String>('vpcPeeringExclusion');
  }

  /// Gets an existing [VpcEncryptionControl] resource's state with the given [name] and [id].
  static VpcEncryptionControl get(
    String name,
    pulumi.Input<String> id, {
    VpcEncryptionControlState? state,
  }) {
    return VpcEncryptionControl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcEncryptionControl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/vpcEncryptionControl:VpcEncryptionControl',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    egressOnlyInternetGatewayExclusion = registerOutput<String>(
      'egressOnlyInternetGatewayExclusion',
    );
    elasticFileSystemExclusion = registerOutput<String>(
      'elasticFileSystemExclusion',
    );
    internetGatewayExclusion = registerOutput<String>(
      'internetGatewayExclusion',
    );
    lambdaExclusion = registerOutput<String>('lambdaExclusion');
    mode = registerOutput<String>('mode');
    natGatewayExclusion = registerOutput<String>('natGatewayExclusion');
    region = registerOutput<String>('region');
    resourceExclusions = registerOutput<VpcEncryptionControlResourceExclusions>(
      'resourceExclusions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VpcEncryptionControlResourceExclusions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.state = registerOutput<String>('state');
    stateMessage = registerOutput<String>('stateMessage');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<VpcEncryptionControlTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VpcEncryptionControlTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    virtualPrivateGatewayExclusion = registerOutput<String>(
      'virtualPrivateGatewayExclusion',
    );
    vpcId = registerOutput<String>('vpcId');
    vpcLatticeExclusion = registerOutput<String>('vpcLatticeExclusion');
    vpcPeeringExclusion = registerOutput<String>('vpcPeeringExclusion');
  }
}
