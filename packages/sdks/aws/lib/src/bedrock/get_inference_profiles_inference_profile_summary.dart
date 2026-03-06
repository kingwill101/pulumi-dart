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
  const GetInferenceProfilesInferenceProfileSummary({
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
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      inferenceProfileArn: pulumi.Input.fromValue(map['inferenceProfileArn'] as String),
      inferenceProfileId: pulumi.Input.fromValue(map['inferenceProfileId'] as String),
      inferenceProfileName: pulumi.Input.fromValue(map['inferenceProfileName'] as String),
      models: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInferenceProfilesInferenceProfileSummaryModel>(map['models']!, (value) => GetInferenceProfilesInferenceProfileSummaryModel.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}

