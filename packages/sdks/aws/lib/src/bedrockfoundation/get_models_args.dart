// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bedrockfoundation_get_models_get_models_args_doc}
/// Arguments for getModels.
/// {@endtemplate}
/// {@macro pulumi_bedrockfoundation_get_models_get_models_args_doc}
class GetModelsArgs {
  /// Customization type to filter on. Valid values are `FINE_TUNING`.
  final pulumi.Input<String?>? byCustomizationType;
  /// Inference type to filter on. Valid values are `ON_DEMAND` and `PROVISIONED`.
  final pulumi.Input<String?>? byInferenceType;
  /// Output modality to filter on. Valid values are `TEXT`, `IMAGE`, and `EMBEDDING`.
  final pulumi.Input<String?>? byOutputModality;
  /// Model provider to filter on.
  final pulumi.Input<String?>? byProvider;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetModelsArgs].
  /// [byCustomizationType] Customization type to filter on. Valid values are `FINE_TUNING`.
  /// [byInferenceType] Inference type to filter on. Valid values are `ON_DEMAND` and `PROVISIONED`.
  /// [byOutputModality] Output modality to filter on. Valid values are `TEXT`, `IMAGE`, and `EMBEDDING`.
  /// [byProvider] Model provider to filter on.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetModelsArgs({
    this.byCustomizationType,
    this.byInferenceType,
    this.byOutputModality,
    this.byProvider,
    this.region,
  });

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
      byCustomizationType: (() { final guardedValue = map['byCustomizationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      byInferenceType: (() { final guardedValue = map['byInferenceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      byOutputModality: (() { final guardedValue = map['byOutputModality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      byProvider: (() { final guardedValue = map['byProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
