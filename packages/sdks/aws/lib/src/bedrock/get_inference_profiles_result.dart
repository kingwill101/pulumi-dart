// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_inference_profiles_inference_profile_summary.dart';

/// Result data returned by getInferenceProfiles.
class GetInferenceProfilesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// List of inference profile summary objects. See `inference_profile_summaries`.
  final List<GetInferenceProfilesInferenceProfileSummary> inferenceProfileSummaries;
  final String region;
  /// Type of the inference profile. `SYSTEM_DEFINED` means that the inference profile is defined by Amazon Bedrock. `APPLICATION` means the inference profile was created by a user.
  final String? type;

  /// Creates a new [GetInferenceProfilesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inferenceProfileSummaries] List of inference profile summary objects. See `inference_profile_summaries`.
  /// [region] Required.
  /// [type] Type of the inference profile. `SYSTEM_DEFINED` means that the inference profile is defined by Amazon Bedrock. `APPLICATION` means the inference profile was created by a user.
  const GetInferenceProfilesResult({
    required this.id,
    required this.inferenceProfileSummaries,
    required this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'inferenceProfileSummaries': pulumi.Input.encodeList<GetInferenceProfilesInferenceProfileSummary, Map<String, dynamic>>(inferenceProfileSummaries, (value) => value.toMap()),
      'region': region,
      'type': ?type,
    };
  }

  factory GetInferenceProfilesResult.fromMap(Map<String, dynamic> map) {
    return GetInferenceProfilesResult(
      id: map['id'] as String,
      inferenceProfileSummaries: pulumi.Input.decodeList<GetInferenceProfilesInferenceProfileSummary>(map['inferenceProfileSummaries']!, (value) => GetInferenceProfilesInferenceProfileSummary.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

