// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_inference_profiles_inference_profile_summary_model/get_inference_profiles_inference_profile_summary_model.dart';

class GetInferenceProfilesInferenceProfileSummary {
  /// Time at which the inference profile was created.
  final String createdAt;

  /// Description of the inference profile.
  final String description;

  /// Amazon Resource Name (ARN) of the inference profile.
  final String inferenceProfileArn;

  /// Unique identifier of the inference profile.
  final String inferenceProfileId;

  /// Name of the inference profile.
  final String inferenceProfileName;

  /// List of information about each model in the inference profile. See `models` Block.
  final List<GetInferenceProfilesInferenceProfileSummaryModel> models;

  /// Status of the inference profile. `ACTIVE` means that the inference profile is available to use.
  final String status;

  /// Filters for inference profiles that match the type you specify. Valid values are: `SYSTEM_DEFINED`, `APPLICATION`.
  final String type;

  /// Time at which the inference profile was last updated.
  final String updatedAt;

  GetInferenceProfilesInferenceProfileSummary({
    required this.createdAt,
    required this.description,
    required this.inferenceProfileArn,
    required this.inferenceProfileId,
    required this.inferenceProfileName,
    required this.models,
    required this.status,
    required this.type,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createdAt'] = createdAt;
    map['description'] = description;
    map['inferenceProfileArn'] = inferenceProfileArn;
    map['inferenceProfileId'] = inferenceProfileId;
    map['inferenceProfileName'] = inferenceProfileName;
    map['models'] = pulumi.Input.encodeList<
        GetInferenceProfilesInferenceProfileSummaryModel,
        Map<String, dynamic>>(models, (value) => value.toMap());
    map['status'] = status;
    map['type'] = type;
    map['updatedAt'] = updatedAt;
    return map;
  }

  factory GetInferenceProfilesInferenceProfileSummary.fromMap(
      Map<String, dynamic> map) {
    return GetInferenceProfilesInferenceProfileSummary(
      createdAt: map['createdAt'] as String,
      description: map['description'] as String,
      inferenceProfileArn: map['inferenceProfileArn'] as String,
      inferenceProfileId: map['inferenceProfileId'] as String,
      inferenceProfileName: map['inferenceProfileName'] as String,
      models: pulumi.Input.decodeList<
              GetInferenceProfilesInferenceProfileSummaryModel>(
          map['models'],
          (value) => GetInferenceProfilesInferenceProfileSummaryModel.fromMap(
              (value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      type: map['type'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}
