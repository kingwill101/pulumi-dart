import 'package:pulumi/pulumi.dart' as pulumi;
import '../anycast_ip_list_timeouts/anycast_ip_list_timeouts.dart';
import 'anycast_ip_list_args.dart';

/// Resource for managing a CloudFront Anycast IP List.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Anycast IP List using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/anycastIpList:AnycastIpList example abcd-1234
/// ```
class AnycastIpList extends pulumi.CustomResource {
  /// The static IP addresses that are allocated to the Anycast IP list.
  late final pulumi.Output<List<String>> anycastIps;

  /// The Anycast IP list ARN.
  late final pulumi.Output<String> arn;

  /// The current version of the Anycast IP list.
  late final pulumi.Output<String> etag;

  /// The number of static IP addresses that are allocated to the Anycast IP list. Valid values: `3`, `21`.
  late final pulumi.Output<int> ipCount;

  /// Name of the Anycast IP list.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AnycastIpListTimeouts?> timeouts;

  AnycastIpList(
    String name, {
    AnycastIpListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/anycastIpList:AnycastIpList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.anycastIps = registerOutput<List<String>>('anycastIps');
    this.arn = registerOutput<String>('arn');
    this.etag = registerOutput<String>('etag');
    this.ipCount = registerOutput<int>('ipCount');
    this.name = registerOutput<String>('name');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<AnycastIpListTimeouts?>('timeouts');
  }
}
