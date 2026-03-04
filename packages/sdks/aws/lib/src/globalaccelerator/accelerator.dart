import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_args.dart';
import 'accelerator_attributes.dart';
import 'accelerator_state.dart';

/// Creates a Global Accelerator accelerator.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.globalaccelerator.Accelerator("example", {
///     name: "Example",
///     ipAddressType: "IPV4",
///     ipAddresses: ["1.2.3.4"],
///     enabled: true,
///     attributes: {
///         flowLogsEnabled: true,
///         flowLogsS3Bucket: "example-bucket",
///         flowLogsS3Prefix: "flow-logs/",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.globalaccelerator.Accelerator("example",
///     name="Example",
///     ip_address_type="IPV4",
///     ip_addresses=["1.2.3.4"],
///     enabled=True,
///     attributes={
///         "flow_logs_enabled": True,
///         "flow_logs_s3_bucket": "example-bucket",
///         "flow_logs_s3_prefix": "flow-logs/",
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
///     var example = new Aws.GlobalAccelerator.Accelerator("example", new()
///     {
///         Name = "Example",
///         IpAddressType = "IPV4",
///         IpAddresses = new[]
///         {
///             "1.2.3.4",
///         },
///         Enabled = true,
///         Attributes = new Aws.GlobalAccelerator.Inputs.AcceleratorAttributesArgs
///         {
///             FlowLogsEnabled = true,
///             FlowLogsS3Bucket = "example-bucket",
///             FlowLogsS3Prefix = "flow-logs/",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/globalaccelerator"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := globalaccelerator.NewAccelerator(ctx, "example", &globalaccelerator.AcceleratorArgs{
/// 			Name:          pulumi.String("Example"),
/// 			IpAddressType: pulumi.String("IPV4"),
/// 			IpAddresses: pulumi.StringArray{
/// 				pulumi.String("1.2.3.4"),
/// 			},
/// 			Enabled: pulumi.Bool(true),
/// 			Attributes: &globalaccelerator.AcceleratorAttributesArgs{
/// 				FlowLogsEnabled:  pulumi.Bool(true),
/// 				FlowLogsS3Bucket: pulumi.String("example-bucket"),
/// 				FlowLogsS3Prefix: pulumi.String("flow-logs/"),
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
/// import com.pulumi.aws.globalaccelerator.Accelerator;
/// import com.pulumi.aws.globalaccelerator.AcceleratorArgs;
/// import com.pulumi.aws.globalaccelerator.inputs.AcceleratorAttributesArgs;
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
///         var example = new Accelerator("example", AcceleratorArgs.builder()
///             .name("Example")
///             .ipAddressType("IPV4")
///             .ipAddresses("1.2.3.4")
///             .enabled(true)
///             .attributes(AcceleratorAttributesArgs.builder()
///                 .flowLogsEnabled(true)
///                 .flowLogsS3Bucket("example-bucket")
///                 .flowLogsS3Prefix("flow-logs/")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:globalaccelerator:Accelerator
///     properties:
///       name: Example
///       ipAddressType: IPV4
///       ipAddresses:
///         - 1.2.3.4
///       enabled: true
///       attributes:
///         flowLogsEnabled: true
///         flowLogsS3Bucket: example-bucket
///         flowLogsS3Prefix: flow-logs/
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Global Accelerator accelerator.
///
///
/// Using `pulumi import`, import Global Accelerator accelerators using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:globalaccelerator/accelerator:Accelerator example arn:aws:globalaccelerator::111111111111:accelerator/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
/// ```
class Accelerator extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the accelerator.
  late final pulumi.Output<String> arn;

  /// The attributes of the accelerator. Fields documented below.
  late final pulumi.Output<AcceleratorAttributes?> attributes;

  /// The DNS name of the accelerator. For example, `a5d53ff5ee6bca4ce.awsglobalaccelerator.com`.
  late final pulumi.Output<String> dnsName;

  /// The Domain Name System (DNS) name that Global Accelerator creates that points to a dual-stack accelerator's four static IP addresses: two IPv4 addresses and two IPv6 addresses. For example, `a1234567890abcdef.dualstack.awsglobalaccelerator.com`.
  late final pulumi.Output<String> dualStackDnsName;

  /// Indicates whether the accelerator is enabled. Defaults to `true`. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> enabled;

  /// -  The Global Accelerator Route 53 zone ID that can be used to
  /// route an [Alias Resource Record Set](https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html) to the Global Accelerator. This attribute
  /// is simply an alias for the zone ID `Z2BJ6XQ5FK7U4H`.
  late final pulumi.Output<String> hostedZoneId;

  /// The value for the address type. Defaults to `IPV4`. Valid values: `IPV4`, `DUAL_STACK`.
  late final pulumi.Output<String?> ipAddressType;

  /// The IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  late final pulumi.Output<List<String>?> ipAddresses;

  /// IP address set associated with the accelerator.
  late final pulumi.Output<List<Map<String, dynamic>>> ipSets;

  /// The name of the accelerator.
  late final pulumi.Output<String> name;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Accelerator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Accelerator]. {@macro pulumi_globalaccelerator_accelerator_accelerator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Accelerator(
    String name, {
    AcceleratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:globalaccelerator/accelerator:Accelerator',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    attributes = registerOutput<AcceleratorAttributes?>('attributes');
    dnsName = registerOutput<String>('dnsName');
    dualStackDnsName = registerOutput<String>('dualStackDnsName');
    enabled = registerOutput<bool?>('enabled');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    ipAddressType = registerOutput<String?>('ipAddressType');
    ipAddresses = registerOutput<List<String>?>('ipAddresses');
    ipSets = registerOutput<List<Map<String, dynamic>>>('ipSets');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Accelerator] resource's state with the given [name] and [id].
  static Accelerator get(
    String name,
    pulumi.Input<String> id, {
    AcceleratorState? state,
  }) {
    return Accelerator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Accelerator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:globalaccelerator/accelerator:Accelerator',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    attributes = registerOutput<AcceleratorAttributes?>('attributes');
    dnsName = registerOutput<String>('dnsName');
    dualStackDnsName = registerOutput<String>('dualStackDnsName');
    enabled = registerOutput<bool?>('enabled');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    ipAddressType = registerOutput<String?>('ipAddressType');
    ipAddresses = registerOutput<List<String>?>('ipAddresses');
    ipSets = registerOutput<List<Map<String, dynamic>>>('ipSets');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
