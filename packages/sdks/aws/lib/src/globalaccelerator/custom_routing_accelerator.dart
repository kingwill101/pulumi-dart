import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_routing_accelerator_args.dart';
import 'custom_routing_accelerator_attributes.dart';
import 'custom_routing_accelerator_ip_set.dart';
import 'custom_routing_accelerator_state.dart';

/// Creates a Global Accelerator custom routing accelerator.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.globalaccelerator.CustomRoutingAccelerator("example", {
///     attributes: {
///         flowLogsEnabled: true,
///         flowLogsS3Bucket: "example-bucket",
///         flowLogsS3Prefix: "flow-logs/",
///     },
///     name: "Example",
///     ipAddressType: "IPV4",
///     ipAddresses: ["1.2.3.4"],
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.globalaccelerator.CustomRoutingAccelerator("example",
///     attributes={
///         "flow_logs_enabled": True,
///         "flow_logs_s3_bucket": "example-bucket",
///         "flow_logs_s3_prefix": "flow-logs/",
///     },
///     name="Example",
///     ip_address_type="IPV4",
///     ip_addresses=["1.2.3.4"],
///     enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.GlobalAccelerator.CustomRoutingAccelerator("example", new()
///     {
///         Attributes = new Aws.GlobalAccelerator.Inputs.CustomRoutingAcceleratorAttributesArgs
///         {
///             FlowLogsEnabled = true,
///             FlowLogsS3Bucket = "example-bucket",
///             FlowLogsS3Prefix = "flow-logs/",
///         },
///         Name = "Example",
///         IpAddressType = "IPV4",
///         IpAddresses = new[]
///         {
///             "1.2.3.4",
///         },
///         Enabled = true,
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
/// 		_, err := globalaccelerator.NewCustomRoutingAccelerator(ctx, "example", &globalaccelerator.CustomRoutingAcceleratorArgs{
/// 			Attributes: &globalaccelerator.CustomRoutingAcceleratorAttributesArgs{
/// 				FlowLogsEnabled:  pulumi.Bool(true),
/// 				FlowLogsS3Bucket: pulumi.String("example-bucket"),
/// 				FlowLogsS3Prefix: pulumi.String("flow-logs/"),
/// 			},
/// 			Name:          pulumi.String("Example"),
/// 			IpAddressType: pulumi.String("IPV4"),
/// 			IpAddresses: pulumi.StringArray{
/// 				pulumi.String("1.2.3.4"),
/// 			},
/// 			Enabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_globalaccelerator_customroutingaccelerator" "example" {
///   attributes = {
///     flow_logs_enabled   = true
///     flow_logs_s3_bucket = "example-bucket"
///     flow_logs_s3_prefix = "flow-logs/"
///   }
///   name            = "Example"
///   ip_address_type = "IPV4"
///   ip_addresses    = ["1.2.3.4"]
///   enabled         = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.globalaccelerator.CustomRoutingAccelerator;
/// import com.pulumi.aws.globalaccelerator.CustomRoutingAcceleratorArgs;
/// import com.pulumi.aws.globalaccelerator.inputs.CustomRoutingAcceleratorAttributesArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new CustomRoutingAccelerator("example", CustomRoutingAcceleratorArgs.builder()
///             .attributes(CustomRoutingAcceleratorAttributesArgs.builder()
///                 .flowLogsEnabled(true)
///                 .flowLogsS3Bucket("example-bucket")
///                 .flowLogsS3Prefix("flow-logs/")
///                 .build())
///             .name("Example")
///             .ipAddressType("IPV4")
///             .ipAddresses("1.2.3.4")
///             .enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:globalaccelerator:CustomRoutingAccelerator
///     properties:
///       attributes:
///         flowLogsEnabled: true
///         flowLogsS3Bucket: example-bucket
///         flowLogsS3Prefix: flow-logs/
///       name: Example
///       ipAddressType: IPV4
///       ipAddresses:
///         - 1.2.3.4
///       enabled: true
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the Global Accelerator custom routing accelerator.
///
///
/// Using `pulumi import`, import Global Accelerator custom routing accelerators using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:globalaccelerator/customRoutingAccelerator:CustomRoutingAccelerator example arn:aws:globalaccelerator::111111111111:accelerator/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
/// ```
class CustomRoutingAccelerator extends pulumi.CustomResource {
  /// ARN of the custom accelerator.
  late final pulumi.Output<String> arn;
  /// The attributes of the accelerator. Fields documented below.
  late final pulumi.Output<CustomRoutingAcceleratorAttributes?> attributes;
  /// The DNS name of the accelerator. For example, `a5d53ff5ee6bca4ce.awsglobalaccelerator.com`.
  late final pulumi.Output<String> dnsName;
  /// Indicates whether the accelerator is enabled. Defaults to `true`. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> enabled;
  /// -  The Global Accelerator Route 53 zone ID that can be used to
  /// route an [Alias Resource Record Set](https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html) to the Global Accelerator. This attribute
  /// is simply an alias for the zone ID `Z2BJ6XQ5FK7U4H`.
  late final pulumi.Output<String> hostedZoneId;
  /// The IP address type that an accelerator supports. For a custom routing accelerator, the value must be `"IPV4"`.
  late final pulumi.Output<String?> ipAddressType;
  /// The IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  late final pulumi.Output<List<String>?> ipAddresses;
  /// IP address set associated with the accelerator.
  late final pulumi.Output<List<CustomRoutingAcceleratorIpSet>> ipSets;
  /// The name of a custom routing accelerator.
  late final pulumi.Output<String> name;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [CustomRoutingAccelerator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomRoutingAccelerator]. {@macro pulumi_globalaccelerator_custom_routing_accelerator_custom_routing_accelerator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomRoutingAccelerator(
    String name, {
    CustomRoutingAcceleratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/customRoutingAccelerator:CustomRoutingAccelerator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    attributes = registerOutput<CustomRoutingAcceleratorAttributes?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomRoutingAcceleratorAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsName = registerOutput<String>('dnsName');
    enabled = registerOutput<bool?>('enabled');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    ipAddressType = registerOutput<String?>('ipAddressType');
    ipAddresses = registerOutput<List<String>?>('ipAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ipSets = registerOutput<List<CustomRoutingAcceleratorIpSet>>('ipSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomRoutingAcceleratorIpSet>(guardedValue, (value) => CustomRoutingAcceleratorIpSet.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [CustomRoutingAccelerator] resource's state with the given [name] and [id].
  static CustomRoutingAccelerator get(
    String name,
    pulumi.Input<String> id, {
    CustomRoutingAcceleratorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomRoutingAccelerator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CustomRoutingAccelerator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/customRoutingAccelerator:CustomRoutingAccelerator',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    attributes = registerOutput<CustomRoutingAcceleratorAttributes?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomRoutingAcceleratorAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsName = registerOutput<String>('dnsName');
    enabled = registerOutput<bool?>('enabled');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    ipAddressType = registerOutput<String?>('ipAddressType');
    ipAddresses = registerOutput<List<String>?>('ipAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ipSets = registerOutput<List<CustomRoutingAcceleratorIpSet>>('ipSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomRoutingAcceleratorIpSet>(guardedValue, (value) => CustomRoutingAcceleratorIpSet.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [CustomRoutingAccelerator] resource.
  CustomRoutingAccelerator.reference(String urn)
    : super(
        'aws:globalaccelerator/customRoutingAccelerator:CustomRoutingAccelerator',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    attributes = registerOutput<CustomRoutingAcceleratorAttributes?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomRoutingAcceleratorAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsName = registerOutput<String>('dnsName');
    enabled = registerOutput<bool?>('enabled');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    ipAddressType = registerOutput<String?>('ipAddressType');
    ipAddresses = registerOutput<List<String>?>('ipAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ipSets = registerOutput<List<CustomRoutingAcceleratorIpSet>>('ipSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomRoutingAcceleratorIpSet>(guardedValue, (value) => CustomRoutingAcceleratorIpSet.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
