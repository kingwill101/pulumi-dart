// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getModels.
class GetModelsArgs {
  /// Customization type to filter on. Valid values are `FINE_TUNING`.
  final Input<String>? byCustomizationType;

  /// Inference type to filter on. Valid values are `ON_DEMAND` and `PROVISIONED`.
  final Input<String>? byInferenceType;

  /// Output modality to filter on. Valid values are `TEXT`, `IMAGE`, and `EMBEDDING`.
  final Input<String>? byOutputModality;

  /// Model provider to filter on.
  final Input<String>? byProvider;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
          Input.asOptionalInput<String>(map['byCustomizationType']),
      byInferenceType: Input.asOptionalInput<String>(map['byInferenceType']),
      byOutputModality: Input.asOptionalInput<String>(map['byOutputModality']),
      byProvider: Input.asOptionalInput<String>(map['byProvider']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
