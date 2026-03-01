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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? description,
    pulumi.Output<InferenceProfileModelSource>? modelSource,
    pulumi.Output<List<InferenceProfileModel>>? models,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<InferenceProfileTimeouts>? timeouts,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updatedAt,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      description = pulumi.Input.asOptionalInput<String>(description),
      modelSource = pulumi.Input.asOptionalInput<InferenceProfileModelSource>(modelSource),
      models = pulumi.Input.asOptionalInput<List<InferenceProfileModel>>(models),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<InferenceProfileTimeouts>(timeouts),
      type = pulumi.Input.asOptionalInput<String>(type),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      modelSource: map['modelSource'] == null ? null : pulumi.Output.create<InferenceProfileModelSource>(InferenceProfileModelSource.fromMap((map['modelSource'] as Map).cast<String, dynamic>())),
      models: map['models'] == null ? null : pulumi.Output.create<List<InferenceProfileModel>>(pulumi.Input.decodeList<InferenceProfileModel>(map['models'], (value) => InferenceProfileModel.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<InferenceProfileTimeouts>(InferenceProfileTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
    );
  }
}

