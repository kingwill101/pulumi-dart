// ignore_for_file: unused_element, unnecessary_cast

import 'confidential_instance_config_confidential_instance_type2.dart';

/// A set of Confidential Instance options.
class ConfidentialInstanceConfig2 {
  /// Defines the type of technology used by the confidential instance.
  final ConfidentialInstanceConfigConfidentialInstanceType2?
      confidentialInstanceType;

  /// Defines whether the instance should have confidential compute enabled.
  final bool? enableConfidentialCompute;

  ConfidentialInstanceConfig2({
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

  factory ConfidentialInstanceConfig2.fromMap(Map<String, dynamic> map) {
    return ConfidentialInstanceConfig2(
      confidentialInstanceType: map['confidentialInstanceType'] == null
          ? null
          : ConfidentialInstanceConfigConfidentialInstanceType2.fromValue(
              map['confidentialInstanceType'] as String),
      enableConfidentialCompute: map['enableConfidentialCompute'] == null
          ? null
          : map['enableConfidentialCompute'] as bool,
    );
  }
}
