import 'package:pulumi/pulumi.dart';
import '../custom_routing_accelerator_attributes/custom_routing_accelerator_attributes.dart';
import '../custom_routing_accelerator_ip_set/custom_routing_accelerator_ip_set.dart';
import 'custom_routing_accelerator_args.dart';

/// Creates a Global Accelerator custom routing accelerator.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Global Accelerator custom routing accelerator.
///
///
/// Using `pulumi import`, import Global Accelerator custom routing accelerators using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:globalaccelerator/customRoutingAccelerator:CustomRoutingAccelerator example arn:aws:globalaccelerator::111111111111:accelerator/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
/// ```
class CustomRoutingAccelerator extends CustomResource {
  /// The Amazon Resource Name (ARN) of the custom accelerator.
  late final Output<String> arn;

  /// The attributes of the accelerator. Fields documented below.
  late final Output<CustomRoutingAcceleratorAttributes?> attributes;

  /// The DNS name of the accelerator. For example, `a5d53ff5ee6bca4ce.awsglobalaccelerator.com`.
  late final Output<String> dnsName;

  /// Indicates whether the accelerator is enabled. Defaults to `true`. Valid values: `true`, `false`.
  late final Output<bool?> enabled;

  /// -  The Global Accelerator Route 53 zone ID that can be used to
  /// route an [Alias Resource Record Set](https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html) to the Global Accelerator. This attribute
  /// is simply an alias for the zone ID `Z2BJ6XQ5FK7U4H`.
  late final Output<String> hostedZoneId;

  /// The IP address type that an accelerator supports. For a custom routing accelerator, the value must be `"IPV4"`.
  late final Output<String?> ipAddressType;

  /// The IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  late final Output<List<String>?> ipAddresses;

  /// IP address set associated with the accelerator.
  late final Output<List<CustomRoutingAcceleratorIpSet>> ipSets;

  /// The name of a custom routing accelerator.
  late final Output<String> name;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  CustomRoutingAccelerator(
    String name, {
    CustomRoutingAcceleratorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/customRoutingAccelerator:CustomRoutingAccelerator',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attributes =
        registerOutput<CustomRoutingAcceleratorAttributes?>('attributes');
    this.dnsName = registerOutput<String>('dnsName');
    this.enabled = registerOutput<bool?>('enabled');
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.ipAddressType = registerOutput<String?>('ipAddressType');
    this.ipAddresses = registerOutput<List<String>?>('ipAddresses');
    this.ipSets = registerOutput<List<CustomRoutingAcceleratorIpSet>>('ipSets');
    this.name = registerOutput<String>('name');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
