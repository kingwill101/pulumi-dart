// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bedrock_get_inference_profile_get_inference_profile_args_doc}
/// Arguments for getInferenceProfile.
/// {@endtemplate}
/// {@macro pulumi_bedrock_get_inference_profile_get_inference_profile_args_doc}
class GetInferenceProfileArgs {
  /// Inference Profile identifier.
  final pulumi.Input<String> inferenceProfileId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetInferenceProfileArgs].
  /// [inferenceProfileId] Inference Profile identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetInferenceProfileArgs({
    required String inferenceProfileId,
    String? region,
  })  : inferenceProfileId = pulumi.Input.asInput<String>(inferenceProfileId),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inferenceProfileId'] = inferenceProfileId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetInferenceProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetInferenceProfileArgs(
      inferenceProfileId: map['inferenceProfileId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
