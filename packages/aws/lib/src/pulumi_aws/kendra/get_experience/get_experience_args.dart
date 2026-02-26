// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getExperience.
class GetExperienceArgs {
  /// Identifier of the Experience.
  final Input<String> experienceId;

  /// Identifier of the index that contains the Experience.
  final Input<String> indexId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetExperienceArgs({
    required this.experienceId,
    required this.indexId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['experienceId'] = experienceId;
    map['indexId'] = indexId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetExperienceArgs.fromMap(Map<String, dynamic> map) {
    return GetExperienceArgs(
      experienceId: Input.asInput<String>(map['experienceId']),
      indexId: Input.asInput<String>(map['indexId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
