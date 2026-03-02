// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_inference_profiles_inference_profile_summary_model.dart';

class GetInferenceProfilesInferenceProfileSummary {
  /// Time at which the inference profile was created.
  final pulumi.Input<String> createdAt;
  /// Description of the inference profile.
  final pulumi.Input<String> description;
  /// Amazon Resource Name (ARN) of the inference profile.
  final pulumi.Input<String> inferenceProfileArn;
  /// Unique identifier of the inference profile.
  final pulumi.Input<String> inferenceProfileId;
  /// Name of the inference profile.
  final pulumi.Input<String> inferenceProfileName;
  /// List of information about each model in the inference profile. See `models` Block.
  final pulumi.Input<List<GetInferenceProfilesInferenceProfileSummaryModel>> models;
  /// Status of the inference profile. `ACTIVE` means that the inference profile is available to use.
  final pulumi.Input<String> status;
  /// Filters for inference profiles that match the type you specify. Valid values are: `SYSTEM_DEFINED`, `APPLICATION`.
  final pulumi.Input<String> type;
  /// Time at which the inference profile was last updated.
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetInferenceProfilesInferenceProfileSummary].
  /// [createdAt] Time at which the inference profile was created.
  /// [description] Description of the inference profile.
  /// [inferenceProfileArn] Amazon Resource Name (ARN) of the inference profile.
  /// [inferenceProfileId] Unique identifier of the inference profile.
  /// [inferenceProfileName] Name of the inference profile.
  /// [models] List of information about each model in the inference profile. See `models` Block.
  /// [status] Status of the inference profile. `ACTIVE` means that the inference profile is available to use.
  /// [type] Filters for inference profiles that match the type you specify. Valid values are: `SYSTEM_DEFINED`, `APPLICATION`.
  /// [updatedAt] Time at which the inference profile was last updated.
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
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'inferenceProfileArn': inferenceProfileArn,
      'inferenceProfileId': inferenceProfileId,
      'inferenceProfileName': inferenceProfileName,
      'models': pulumi.Input.mapInputValue<List<GetInferenceProfilesInferenceProfileSummaryModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GetInferenceProfilesInferenceProfileSummaryModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'type': type,
      'updatedAt': updatedAt,
    };
  }

  factory GetInferenceProfilesInferenceProfileSummary.fromMap(Map<String, dynamic> map) {
    return GetInferenceProfilesInferenceProfileSummary(
      createdAt: (map['createdAt'] as String).input(),
      description: (map['description'] as String).input(),
      inferenceProfileArn: (map['inferenceProfileArn'] as String).input(),
      inferenceProfileId: (map['inferenceProfileId'] as String).input(),
      inferenceProfileName: (map['inferenceProfileName'] as String).input(),
      models: (pulumi.Input.decodeList<GetInferenceProfilesInferenceProfileSummaryModel>(map['models'], (value) => GetInferenceProfilesInferenceProfileSummaryModel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
      updatedAt: (map['updatedAt'] as String).input(),
    );
  }
}

