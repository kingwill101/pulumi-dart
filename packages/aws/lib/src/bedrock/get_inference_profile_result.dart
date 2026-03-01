// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_inference_profile_model.dart';

/// Result data returned by getInferenceProfile.
class GetInferenceProfileResult {
  /// The time at which the inference profile was created.
  final String createdAt;

  /// The description of the inference profile.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Amazon Resource Name (ARN) of the inference profile.
  final String inferenceProfileArn;
  final String inferenceProfileId;

  /// The unique identifier of the inference profile.
  final String inferenceProfileName;

  /// A list of information about each model in the inference profile. See `models`.
  final List<GetInferenceProfileModel> models;
  final String region;

  /// The status of the inference profile. `ACTIVE` means that the inference profile is available to use.
  final String status;

  /// The type of the inference profile. `SYSTEM_DEFINED` means that the inference profile is defined by Amazon Bedrock. `APPLICATION` means that the inference profile is defined by the user.
  final String type;

  /// The time at which the inference profile was last updated.
  final String updatedAt;

  /// Creates a new [GetInferenceProfileResult].
  /// [createdAt] The time at which the inference profile was created.
  /// [description] The description of the inference profile.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inferenceProfileArn] The Amazon Resource Name (ARN) of the inference profile.
  /// [inferenceProfileId] Required.
  /// [inferenceProfileName] The unique identifier of the inference profile.
  /// [models] A list of information about each model in the inference profile. See `models`.
  /// [region] Required.
  /// [status] The status of the inference profile. `ACTIVE` means that the inference profile is available to use.
  /// [type] The type of the inference profile. `SYSTEM_DEFINED` means that the inference profile is defined by Amazon Bedrock. `APPLICATION` means that the inference profile is defined by the user.
  /// [updatedAt] The time at which the inference profile was last updated.
  GetInferenceProfileResult({
    required this.createdAt,
    required this.description,
    required this.id,
    required this.inferenceProfileArn,
    required this.inferenceProfileId,
    required this.inferenceProfileName,
    required this.models,
    required this.region,
    required this.status,
    required this.type,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'id': id,
      'inferenceProfileArn': inferenceProfileArn,
      'inferenceProfileId': inferenceProfileId,
      'inferenceProfileName': inferenceProfileName,
      'models':
          pulumi.Input.encodeList<
            GetInferenceProfileModel,
            Map<String, dynamic>
          >(models, (value) => value.toMap()),
      'region': region,
      'status': status,
      'type': type,
      'updatedAt': updatedAt,
    };
  }

  factory GetInferenceProfileResult.fromMap(Map<String, dynamic> map) {
    return GetInferenceProfileResult(
      createdAt: map['createdAt'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      inferenceProfileArn: map['inferenceProfileArn'] as String,
      inferenceProfileId: map['inferenceProfileId'] as String,
      inferenceProfileName: map['inferenceProfileName'] as String,
      models: pulumi.Input.decodeList<GetInferenceProfileModel>(
        map['models'],
        (value) => GetInferenceProfileModel.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      region: map['region'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}
