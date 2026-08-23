// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_inference_profiles_inference_profile_summary.dart';

/// Result data returned by getInferenceProfiles.
class GetInferenceProfilesResult {
  /// List of inference profile summary objects. See `inferenceProfileSummaries` Block.
  final List<GetInferenceProfilesInferenceProfileSummary> inferenceProfileSummaries;
  final String region;
  /// Type of the inference profile. `SYSTEM_DEFINED` means that the inference profile is defined by Amazon Bedrock. `APPLICATION` means the inference profile was created by a user.
  final String? type;

  /// Creates a new [GetInferenceProfilesResult].
  /// [inferenceProfileSummaries] List of inference profile summary objects. See `inferenceProfileSummaries` Block.
  /// [region] Required.
  /// [type] Type of the inference profile. `SYSTEM_DEFINED` means that the inference profile is defined by Amazon Bedrock. `APPLICATION` means the inference profile was created by a user.
  const GetInferenceProfilesResult({
    required this.inferenceProfileSummaries,
    required this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inferenceProfileSummaries': pulumi.Input.encodeList<GetInferenceProfilesInferenceProfileSummary, Map<String, dynamic>>(inferenceProfileSummaries, (value) => value.toMap()),
      'region': region,
      'type': ?type,
    };
  }

  factory GetInferenceProfilesResult.fromMap(Map<String, dynamic> map) {
    return GetInferenceProfilesResult(
      inferenceProfileSummaries: pulumi.Input.decodeList<GetInferenceProfilesInferenceProfileSummary>(map['inferenceProfileSummaries']!, (value) => GetInferenceProfilesInferenceProfileSummary.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
