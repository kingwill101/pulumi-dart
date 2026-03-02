// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bedrock_get_custom_models_get_custom_models_args_doc}
/// Arguments for getCustomModels.
/// {@endtemplate}
/// {@macro pulumi_bedrock_get_custom_models_get_custom_models_args_doc}
class GetCustomModelsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetCustomModelsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetCustomModelsArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetCustomModelsArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomModelsArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

