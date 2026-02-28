// ignore_for_file: unused_element, unnecessary_cast

import 'confidential_instance_config_confidential_instance_type_compute_beta.dart';

/// A set of Confidential Instance options.
class ConfidentialInstanceConfigComputeBeta {
  /// Defines the type of technology used by the confidential instance.
  final ConfidentialInstanceConfigConfidentialInstanceTypeComputeBeta?
      confidentialInstanceType;

  /// Defines whether the instance should have confidential compute enabled.
  final bool? enableConfidentialCompute;

  /// Creates a new [ConfidentialInstanceConfigComputeBeta].
  /// [confidentialInstanceType] Defines the type of technology used by the confidential instance.
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled.
  ConfidentialInstanceConfigComputeBeta({
    this.confidentialInstanceType,
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final confidentialInstanceTypeValue = confidentialInstanceType;
    if (confidentialInstanceTypeValue != null) {
      map['confidentialInstanceType'] = confidentialInstanceTypeValue.value;
    }
    final enableConfidentialComputeValue = enableConfidentialCompute;
    if (enableConfidentialComputeValue != null) {
      map['enableConfidentialCompute'] = enableConfidentialComputeValue;
    }
    return map;
  }

  factory ConfidentialInstanceConfigComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ConfidentialInstanceConfigComputeBeta(
      confidentialInstanceType: map['confidentialInstanceType'] == null
          ? null
          : ConfidentialInstanceConfigConfidentialInstanceTypeComputeBeta
              .fromValue(map['confidentialInstanceType'] as String),
      enableConfidentialCompute: map['enableConfidentialCompute'] == null
          ? null
          : map['enableConfidentialCompute'] as bool,
    );
  }
}
