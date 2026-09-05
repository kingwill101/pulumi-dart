// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bedrock_get_inference_profiles_get_inference_profiles_args_doc}
/// Arguments for getInferenceProfiles.
/// {@endtemplate}
/// {@macro pulumi_bedrock_get_inference_profiles_get_inference_profiles_args_doc}
class GetInferenceProfilesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Filters for inference profiles that match the type you specify. Valid values are: `SYSTEM_DEFINED`, `APPLICATION`.
  final pulumi.Input<String?>? type;

  /// Creates a new [GetInferenceProfilesArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Filters for inference profiles that match the type you specify. Valid values are: `SYSTEM_DEFINED`, `APPLICATION`.
  const GetInferenceProfilesArgs({
    this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'type': ?type,
    };
  }

  factory GetInferenceProfilesArgs.fromMap(Map<String, dynamic> map) {
    return GetInferenceProfilesArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
