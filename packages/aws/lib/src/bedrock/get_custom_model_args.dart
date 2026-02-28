// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bedrock_get_custom_model_get_custom_model_args_doc}
/// Arguments for getCustomModel.
/// {@endtemplate}
/// {@macro pulumi_bedrock_get_custom_model_get_custom_model_args_doc}
class GetCustomModelArgs {
  /// Name or ARN of the custom model.
  final pulumi.Input<String> modelId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetCustomModelArgs].
  /// [modelId] Name or ARN of the custom model.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetCustomModelArgs({
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

  factory GetCustomModelArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomModelArgs(
      modelId: map['modelId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
