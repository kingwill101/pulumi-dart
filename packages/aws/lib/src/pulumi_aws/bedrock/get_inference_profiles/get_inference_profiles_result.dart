// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_inference_profiles_inference_profile_summary/get_inference_profiles_inference_profile_summary.dart';

/// Result data returned by getInferenceProfiles.
class GetInferenceProfilesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of inference profile summary objects. See `inference_profile_summaries`.
  final List<GetInferenceProfilesInferenceProfileSummary>
      inferenceProfileSummaries;
  final String region;

  /// Type of the inference profile. `SYSTEM_DEFINED` means that the inference profile is defined by Amazon Bedrock. `APPLICATION` means the inference profile was created by a user.
  final String? type;

  GetInferenceProfilesResult({
    required this.id,
    required this.inferenceProfileSummaries,
    required this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['inferenceProfileSummaries'] = Input.encodeList<
            GetInferenceProfilesInferenceProfileSummary, Map<String, dynamic>>(
        inferenceProfileSummaries, (value) => value.toMap());
    map['region'] = region;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory GetInferenceProfilesResult.fromMap(Map<String, dynamic> map) {
    return GetInferenceProfilesResult(
      id: map['id'] as String,
      inferenceProfileSummaries:
          Input.decodeList<GetInferenceProfilesInferenceProfileSummary>(
              map['inferenceProfileSummaries'],
              (value) => GetInferenceProfilesInferenceProfileSummary.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
