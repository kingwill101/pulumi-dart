// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_profile_model.dart';
import 'inference_profile_model_source.dart';
import 'inference_profile_timeouts.dart';

/// Input properties used for looking up and filtering InferenceProfile resources.
class InferenceProfileState {
  /// ARN of the inference profile.
  final pulumi.Input<String?>? arn;
  /// Time at which the inference profile was created.
  final pulumi.Input<String?>? createdAt;
  /// Description of the inference profile.
  final pulumi.Input<String?>? description;
  /// Source of the model this inference profile will track metrics and cost for. See `modelSource`.
  final pulumi.Input<InferenceProfileModelSource?>? modelSource;
  /// List of information about each model in the inference profile. See `models`.
  final pulumi.Input<List<InferenceProfileModel>?>? models;
  /// Name of the inference profile.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Status of the inference profile. `ACTIVE` means that the inference profile is available to use.
  final pulumi.Input<String?>? status;
  /// Key-value mapping of resource tags for the inference profile.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<InferenceProfileTimeouts?>? timeouts;
  /// Type of the inference profile. `SYSTEM_DEFINED` means that the inference profile is defined by Amazon Bedrock. `APPLICATION` means that the inference profile is defined by the user.
  final pulumi.Input<String?>? type;
  /// Time at which the inference profile was last updated.
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [InferenceProfileState].
  /// [arn] ARN of the inference profile.
  /// [createdAt] Time at which the inference profile was created.
  /// [description] Description of the inference profile.
  /// [modelSource] Source of the model this inference profile will track metrics and cost for. See `modelSource`.
  /// [models] List of information about each model in the inference profile. See `models`.
  /// [name] Name of the inference profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the inference profile. `ACTIVE` means that the inference profile is available to use.
  /// [tags] Key-value mapping of resource tags for the inference profile.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  /// [type] Type of the inference profile. `SYSTEM_DEFINED` means that the inference profile is defined by Amazon Bedrock. `APPLICATION` means that the inference profile is defined by the user.
  /// [updatedAt] Time at which the inference profile was last updated.
  const InferenceProfileState({
    this.arn,
    this.createdAt,
    this.description,
    this.modelSource,
    this.models,
    this.name,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.type,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'description': ?description,
      'modelSource': ?pulumi.Input.mapOptionalInputValue<InferenceProfileModelSource, Map<String, dynamic>>(modelSource, (value) => value.toMap()),
      'models': ?pulumi.Input.mapOptionalInputValue<List<InferenceProfileModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<InferenceProfileModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<InferenceProfileTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
      'updatedAt': ?updatedAt,
    };
  }

  factory InferenceProfileState.fromMap(Map<String, dynamic> map) {
    return InferenceProfileState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelSource: (() { final guardedValue = map['modelSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceProfileModelSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      models: (() { final guardedValue = map['models']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InferenceProfileModel>(guardedValue, (value) => InferenceProfileModel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceProfileTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
