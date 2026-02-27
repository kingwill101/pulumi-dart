import 'package:pulumi/pulumi.dart';
import 'tracker_args.dart';

/// Provides a Location Service Tracker.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.location.Tracker` resources using the tracker name. For example:
///
/// ```sh
/// $ pulumi import aws:location/tracker:Tracker example example
/// ```
class Tracker extends CustomResource {
  /// The timestamp for when the tracker resource was created in ISO 8601 format.
  late final Output<String> createTime;

  /// The optional description for the tracker resource.
  late final Output<String?> description;

  /// A key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  late final Output<String?> kmsKeyId;

  /// The position filtering method of the tracker resource. Valid values: `TimeBased`, `DistanceBased`, `AccuracyBased`. Default: `TimeBased`.
  late final Output<String?> positionFiltering;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value tags for the tracker. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The Amazon Resource Name (ARN) for the tracker resource. Used when you need to specify a resource across all AWS.
  late final Output<String> trackerArn;

  /// The name of the tracker resource.
  ///
  /// The following arguments are optional:
  late final Output<String> trackerName;

  /// The timestamp for when the tracker resource was last updated in ISO 8601 format.
  late final Output<String> updateTime;

  Tracker(
    String name, {
    TrackerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:location/tracker:Tracker',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.positionFiltering = registerOutput<String?>('positionFiltering');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trackerArn = registerOutput<String>('trackerArn');
    this.trackerName = registerOutput<String>('trackerName');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
