import 'package:pulumi/pulumi.dart';
import 'segment_args.dart';

/// Provides a CloudWatch Evidently Segment resource.
///
/// > **Warning:** This resource is deprecated. Use [AWS AppConfig feature flags](https://aws.amazon.com/blogs/mt/using-aws-appconfig-feature-flags/) instead.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### With JSON object in pattern
///
///
///
/// ### With Description
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Evidently Segment using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:evidently/segment:Segment example arn:aws:evidently:us-west-2:123456789012:segment/example
/// ```
class Segment extends CustomResource {
  /// The ARN of the segment.
  late final Output<String> arn;

  /// The date and time that the segment is created.
  late final Output<String> createdTime;

  /// Specifies the description of the segment.
  late final Output<String?> description;

  /// The number of experiments that this segment is used in. This count includes all current experiments, not just those that are currently running.
  late final Output<int> experimentCount;

  /// The date and time that this segment was most recently updated.
  late final Output<String> lastUpdatedTime;

  /// The number of launches that this segment is used in. This count includes all current launches, not just those that are currently running.
  late final Output<int> launchCount;

  /// A name for the segment.
  late final Output<String> name;

  /// The pattern to use for the segment. For more information about pattern syntax, see [Segment rule pattern syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html#CloudWatch-Evidently-segments-syntax.html).
  late final Output<String> pattern;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Tags to apply to the segment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Segment(
    String name, {
    SegmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:evidently/segment:Segment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdTime = registerOutput<String>('createdTime');
    this.description = registerOutput<String?>('description');
    this.experimentCount = registerOutput<int>('experimentCount');
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.launchCount = registerOutput<int>('launchCount');
    this.name = registerOutput<String>('name');
    this.pattern = registerOutput<String>('pattern');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
