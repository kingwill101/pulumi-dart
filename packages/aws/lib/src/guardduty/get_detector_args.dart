// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_guardduty_get_detector_get_detector_args_doc}
/// Arguments for getDetector.
/// {@endtemplate}
/// {@macro pulumi_guardduty_get_detector_get_detector_args_doc}
class GetDetectorArgs {
  /// ID of the detector.
  final pulumi.Input<String>? id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags for the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetDetectorArgs].
  /// [id] ID of the detector.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags for the resource.
  GetDetectorArgs({
    String? id,
    String? region,
    Map<String, String>? tags,
  })  : id = pulumi.Input.asOptionalInput<String>(id),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetDetectorArgs.fromMap(Map<String, dynamic> map) {
    return GetDetectorArgs(
      id: map['id'] == null ? null : map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
