import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_mirror_filter_args.dart';

/// Provides an Traffic mirror filter.
/// Read [limits and considerations](https://docs.aws.amazon.com/vpc/latest/mirroring/traffic-mirroring-considerations.html) for traffic mirroring
///
/// ## Example Usage
///
/// To create a basic traffic mirror filter
///
///
///
/// ## Import
///
/// Using `pulumi import`, import traffic mirror filter using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/trafficMirrorFilter:TrafficMirrorFilter foo tmf-0fbb93ddf38198f64
/// ```
class TrafficMirrorFilter extends pulumi.CustomResource {
  /// The ARN of the traffic mirror filter.
  late final pulumi.Output<String> arn;

  /// A description of the filter.
  late final pulumi.Output<String?> description;

  /// List of amazon network services that should be mirrored. Valid values: `amazon-dns`.
  late final pulumi.Output<List<String>?> networkServices;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  TrafficMirrorFilter(
    String name, {
    TrafficMirrorFilterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/trafficMirrorFilter:TrafficMirrorFilter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.networkServices = registerOutput<List<String>?>('networkServices');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
