// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bedrockfoundation_get_model_get_model_args_doc}
/// Arguments for getModel.
/// {@endtemplate}
/// {@macro pulumi_bedrockfoundation_get_model_get_model_args_doc}
class GetModelArgs {
  /// Model identifier.
  final pulumi.Input<String> modelId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetModelArgs].
  /// [modelId] Model identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetModelArgs({
    required pulumi.Output<String> modelId,
    pulumi.Output<String>? region,
  }) :
      modelId = pulumi.Input.asInput<String>(modelId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': modelId,
      'region': ?region,
    };
  }

  factory GetModelArgs.fromMap(Map<String, dynamic> map) {
    return GetModelArgs(
      modelId: pulumi.Output.create<String>(map['modelId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

