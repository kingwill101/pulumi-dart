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
    required String modelId,
    String? region,
  })  : modelId = pulumi.Input.asInput<String>(modelId),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['modelId'] = modelId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetModelArgs.fromMap(Map<String, dynamic> map) {
    return GetModelArgs(
      modelId: map['modelId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
