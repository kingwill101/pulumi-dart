// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_profile_model_source.dart';
import 'inference_profile_timeouts.dart';

/// {@template pulumi_bedrock_inference_profile_inference_profile_args_doc}
/// The set of arguments for InferenceProfile.
/// {@endtemplate}
/// {@macro pulumi_bedrock_inference_profile_inference_profile_args_doc}
class InferenceProfileArgs {
  /// The description of the inference profile.
  final pulumi.Input<String>? description;
  /// The source of the model this inference profile will track metrics and cost for. See `model_source`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<InferenceProfileModelSource>? modelSource;
  /// The name of the inference profile.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags for the inference profile.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<InferenceProfileTimeouts>? timeouts;

  /// Creates a new [InferenceProfileArgs].
  /// [description] The description of the inference profile.
  /// [modelSource] The source of the model this inference profile will track metrics and cost for. See `model_source`.
  /// [name] The name of the inference profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags for the inference profile.
  /// [timeouts] Optional.
  InferenceProfileArgs({
    pulumi.Output<String>? description,
    pulumi.Output<InferenceProfileModelSource>? modelSource,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<InferenceProfileTimeouts>? timeouts,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      modelSource = pulumi.Input.asOptionalInput<InferenceProfileModelSource>(modelSource),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<InferenceProfileTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'modelSource': ?pulumi.Input.mapOptionalInputValue<InferenceProfileModelSource, Map<String, dynamic>>(modelSource, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<InferenceProfileTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory InferenceProfileArgs.fromMap(Map<String, dynamic> map) {
    return InferenceProfileArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      modelSource: map['modelSource'] == null ? null : pulumi.Output.create<InferenceProfileModelSource>(InferenceProfileModelSource.fromMap((map['modelSource'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<InferenceProfileTimeouts>(InferenceProfileTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

