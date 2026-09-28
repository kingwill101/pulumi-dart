// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_inference_profile_model.dart';

/// Result data returned by getInferenceProfile.
class GetInferenceProfileResult {
  /// Time at which the inference profile was created.
  final String? createdAt;
  /// Description of the inference profile.
  final String? description;
  /// ARN of the inference profile.
  final String? inferenceProfileArn;
  final String? inferenceProfileId;
  /// Unique identifier of the inference profile.
  final String? inferenceProfileName;
  /// List of information about each model in the inference profile. See `models`.
  final List<GetInferenceProfileModel>? models;
  final String? region;
  /// Status of the inference profile. `ACTIVE` means that the inference profile is available to use.
  final String? status;
  /// Type of the inference profile. `SYSTEM_DEFINED` means that the inference profile is defined by Amazon Bedrock. `APPLICATION` means that the inference profile is defined by the user.
  final String? type;
  /// Time at which the inference profile was last updated.
  final String? updatedAt;

  /// Creates a new [GetInferenceProfileResult].
  /// [createdAt] Time at which the inference profile was created.
  /// [description] Description of the inference profile.
  /// [inferenceProfileArn] ARN of the inference profile.
  /// [inferenceProfileId] Optional.
  /// [inferenceProfileName] Unique identifier of the inference profile.
  /// [models] List of information about each model in the inference profile. See `models`.
  /// [region] Optional.
  /// [status] Status of the inference profile. `ACTIVE` means that the inference profile is available to use.
  /// [type] Type of the inference profile. `SYSTEM_DEFINED` means that the inference profile is defined by Amazon Bedrock. `APPLICATION` means that the inference profile is defined by the user.
  /// [updatedAt] Time at which the inference profile was last updated.
  const GetInferenceProfileResult({
    this.createdAt,
    this.description,
    this.inferenceProfileArn,
    this.inferenceProfileId,
    this.inferenceProfileName,
    this.models,
    this.region,
    this.status,
    this.type,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'description': ?description,
      'inferenceProfileArn': ?inferenceProfileArn,
      'inferenceProfileId': ?inferenceProfileId,
      'inferenceProfileName': ?inferenceProfileName,
      'models': ?(() { final guardedValue = models; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInferenceProfileModel, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'status': ?status,
      'type': ?type,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetInferenceProfileResult.fromMap(Map<String, dynamic> map) {
    return GetInferenceProfileResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inferenceProfileArn: (() { final guardedValue = map['inferenceProfileArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inferenceProfileId: (() { final guardedValue = map['inferenceProfileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inferenceProfileName: (() { final guardedValue = map['inferenceProfileName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      models: (() { final guardedValue = map['models']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInferenceProfileModel>(guardedValue, (value) => GetInferenceProfileModel.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
