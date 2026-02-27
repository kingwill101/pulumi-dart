// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Tracker.
class TrackerArgs {
  /// The optional description for the tracker resource.
  final Input<String>? description;

  /// A key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  final Input<String>? kmsKeyId;

  /// The position filtering method of the tracker resource. Valid values: `TimeBased`, `DistanceBased`, `AccuracyBased`. Default: `TimeBased`.
  final Input<String>? positionFiltering;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value tags for the tracker. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The name of the tracker resource.
  ///
  /// The following arguments are optional:
  final Input<String> trackerName;

  TrackerArgs({
    this.description,
    this.kmsKeyId,
    this.positionFiltering,
    this.region,
    this.tags,
    required this.trackerName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final positionFilteringValue = positionFiltering;
    if (positionFilteringValue != null) {
      map['positionFiltering'] = positionFilteringValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['trackerName'] = trackerName;
    return map;
  }

  factory TrackerArgs.fromMap(Map<String, dynamic> map) {
    return TrackerArgs(
      description: Input.asOptionalInput<String>(map['description']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      positionFiltering:
          Input.asOptionalInput<String>(map['positionFiltering']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      trackerName: Input.asInput<String>(map['trackerName']),
    );
  }
}
