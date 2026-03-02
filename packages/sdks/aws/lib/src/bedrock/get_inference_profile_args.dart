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
    required this.inferenceProfileId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inferenceProfileId': inferenceProfileId,
      'region': ?region,
    };
  }

  factory GetInferenceProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetInferenceProfileArgs(
      inferenceProfileId: (map['inferenceProfileId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

