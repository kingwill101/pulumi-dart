// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bedrockfoundation_get_models_get_models_args_doc}
/// Arguments for getModels.
/// {@endtemplate}
/// {@macro pulumi_bedrockfoundation_get_models_get_models_args_doc}
class GetModelsArgs {
  /// Customization type to filter on. Valid values are `FINE_TUNING`.
  final pulumi.Input<String>? byCustomizationType;
  /// Inference type to filter on. Valid values are `ON_DEMAND` and `PROVISIONED`.
  final pulumi.Input<String>? byInferenceType;
  /// Output modality to filter on. Valid values are `TEXT`, `IMAGE`, and `EMBEDDING`.
  final pulumi.Input<String>? byOutputModality;
  /// Model provider to filter on.
  final pulumi.Input<String>? byProvider;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetModelsArgs].
  /// [byCustomizationType] Customization type to filter on. Valid values are `FINE_TUNING`.
  /// [byInferenceType] Inference type to filter on. Valid values are `ON_DEMAND` and `PROVISIONED`.
  /// [byOutputModality] Output modality to filter on. Valid values are `TEXT`, `IMAGE`, and `EMBEDDING`.
  /// [byProvider] Model provider to filter on.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetModelsArgs({
    String? byCustomizationType,
    String? byInferenceType,
    String? byOutputModality,
    String? byProvider,
    String? region,
  }) :
      byCustomizationType = pulumi.Input.asOptionalInput<String>(byCustomizationType),
      byInferenceType = pulumi.Input.asOptionalInput<String>(byInferenceType),
      byOutputModality = pulumi.Input.asOptionalInput<String>(byOutputModality),
      byProvider = pulumi.Input.asOptionalInput<String>(byProvider),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'byCustomizationType': ?byCustomizationType,
      'byInferenceType': ?byInferenceType,
      'byOutputModality': ?byOutputModality,
      'byProvider': ?byProvider,
      'region': ?region,
    };
  }

  factory GetModelsArgs.fromMap(Map<String, dynamic> map) {
    return GetModelsArgs(
      byCustomizationType: map['byCustomizationType'] == null ? null : map['byCustomizationType'] as String,
      byInferenceType: map['byInferenceType'] == null ? null : map['byInferenceType'] as String,
      byOutputModality: map['byOutputModality'] == null ? null : map['byOutputModality'] as String,
      byProvider: map['byProvider'] == null ? null : map['byProvider'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

