// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bedrock_get_inference_profiles_get_inference_profiles_args_doc}
/// Arguments for getInferenceProfiles.
/// {@endtemplate}
/// {@macro pulumi_bedrock_get_inference_profiles_get_inference_profiles_args_doc}
class GetInferenceProfilesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Filters for inference profiles that match the type you specify. Valid values are: `SYSTEM_DEFINED`, `APPLICATION`.
  final pulumi.Input<String>? type;

  /// Creates a new [GetInferenceProfilesArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Filters for inference profiles that match the type you specify. Valid values are: `SYSTEM_DEFINED`, `APPLICATION`.
  GetInferenceProfilesArgs({
    String? region,
    String? type,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        type = pulumi.Input.asOptionalInput<String>(type);

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
      region: map['region'] == null ? null : map['region'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
