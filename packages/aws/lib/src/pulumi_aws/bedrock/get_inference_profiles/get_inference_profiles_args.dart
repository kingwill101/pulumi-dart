// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInferenceProfiles.
class GetInferenceProfilesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Filters for inference profiles that match the type you specify. Valid values are: `SYSTEM_DEFINED`, `APPLICATION`.
  final Input<String>? type;

  GetInferenceProfilesArgs({
    this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory GetInferenceProfilesArgs.fromMap(Map<String, dynamic> map) {
    return GetInferenceProfilesArgs(
      region: Input.asOptionalInput<String>(map['region']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
