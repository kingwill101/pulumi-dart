// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_location_tracker_tracker_args_doc}
/// The set of arguments for Tracker.
/// {@endtemplate}
/// {@macro pulumi_location_tracker_tracker_args_doc}
class TrackerArgs {
  /// The optional description for the tracker resource.
  final pulumi.Input<String>? description;
  /// A key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  final pulumi.Input<String>? kmsKeyId;
  /// The position filtering method of the tracker resource. Valid values: `TimeBased`, `DistanceBased`, `AccuracyBased`. Default: `TimeBased`.
  final pulumi.Input<String>? positionFiltering;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the tracker. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the tracker resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> trackerName;

  /// Creates a new [TrackerArgs].
  /// [description] The optional description for the tracker resource.
  /// [kmsKeyId] A key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  /// [positionFiltering] The position filtering method of the tracker resource. Valid values: `TimeBased`, `DistanceBased`, `AccuracyBased`. Default: `TimeBased`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the tracker. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [trackerName] The name of the tracker resource.
  TrackerArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? positionFiltering,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> trackerName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      positionFiltering = pulumi.Input.asOptionalInput<String>(positionFiltering),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trackerName = pulumi.Input.asInput<String>(trackerName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'kmsKeyId': ?kmsKeyId,
      'positionFiltering': ?positionFiltering,
      'region': ?region,
      'tags': ?tags,
      'trackerName': trackerName,
    };
  }

  factory TrackerArgs.fromMap(Map<String, dynamic> map) {
    return TrackerArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      positionFiltering: map['positionFiltering'] == null ? null : pulumi.Output.create<String>(map['positionFiltering'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trackerName: pulumi.Output.create<String>(map['trackerName'] as String),
    );
  }
}

