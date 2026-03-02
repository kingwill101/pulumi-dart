// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_profile_model.dart';
import 'inference_profile_model_source.dart';
import 'inference_profile_timeouts.dart';

/// Input properties used for looking up and filtering InferenceProfile resources.
class InferenceProfileState {
  /// The Amazon Resource Name (ARN) of the inference profile.
  final pulumi.Input<String>? arn;
  /// The time at which the inference profile was created.
  final pulumi.Input<String>? createdAt;
  /// The description of the inference profile.
  final pulumi.Input<String>? description;
  /// The source of the model this inference profile will track metrics and cost for. See `model_source`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<InferenceProfileModelSource>? modelSource;
  /// A list of information about each model in the inference profile. See `models`.
  final pulumi.Input<List<InferenceProfileModel>>? models;
  /// The name of the inference profile.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The status of the inference profile. `ACTIVE` means that the inference profile is available to use.
  final pulumi.Input<String>? status;
  /// Key-value mapping of resource tags for the inference profile.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<InferenceProfileTimeouts>? timeouts;
  /// The type of the inference profile. `SYSTEM_DEFINED` means that the inference profile is defined by Amazon Bedrock. `APPLICATION` means that the inference profile is defined by the user.
  final pulumi.Input<String>? type;
  /// The time at which the inference profile was last updated.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [InferenceProfileState].
  /// [arn] The Amazon Resource Name (ARN) of the inference profile.
  /// [createdAt] The time at which the inference profile was created.
  /// [description] The description of the inference profile.
  /// [modelSource] The source of the model this inference profile will track metrics and cost for. See `model_source`.
  /// [models] A list of information about each model in the inference profile. See `models`.
  /// [name] The name of the inference profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The status of the inference profile. `ACTIVE` means that the inference profile is available to use.
  /// [tags] Key-value mapping of resource tags for the inference profile.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  /// [type] The type of the inference profile. `SYSTEM_DEFINED` means that the inference profile is defined by Amazon Bedrock. `APPLICATION` means that the inference profile is defined by the user.
  /// [updatedAt] The time at which the inference profile was last updated.
  InferenceProfileState({
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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      modelSource: map['modelSource'] == null ? null : (InferenceProfileModelSource.fromMap((map['modelSource'] as Map).cast<String, dynamic>())).input(),
      models: map['models'] == null ? null : (pulumi.Input.decodeList<InferenceProfileModel>(map['models'], (value) => InferenceProfileModel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (InferenceProfileTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt'] as String).input(),
    );
  }
}

