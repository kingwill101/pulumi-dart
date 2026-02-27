// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getModels.
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

  GetModelsArgs({
    this.byCustomizationType,
    this.byInferenceType,
    this.byOutputModality,
    this.byProvider,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final byCustomizationTypeValue = byCustomizationType;
    if (byCustomizationTypeValue != null) {
      map['byCustomizationType'] = byCustomizationTypeValue;
    }
    final byInferenceTypeValue = byInferenceType;
    if (byInferenceTypeValue != null) {
      map['byInferenceType'] = byInferenceTypeValue;
    }
    final byOutputModalityValue = byOutputModality;
    if (byOutputModalityValue != null) {
      map['byOutputModality'] = byOutputModalityValue;
    }
    final byProviderValue = byProvider;
    if (byProviderValue != null) {
      map['byProvider'] = byProviderValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetModelsArgs.fromMap(Map<String, dynamic> map) {
    return GetModelsArgs(
      byCustomizationType:
          pulumi.Input.asOptionalInput<String>(map['byCustomizationType']),
      byInferenceType:
          pulumi.Input.asOptionalInput<String>(map['byInferenceType']),
      byOutputModality:
          pulumi.Input.asOptionalInput<String>(map['byOutputModality']),
      byProvider: pulumi.Input.asOptionalInput<String>(map['byProvider']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
