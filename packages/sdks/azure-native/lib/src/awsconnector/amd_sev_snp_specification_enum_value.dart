// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AmdSevSnpSpecificationEnumValue
class AmdSevSnpSpecificationEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [AmdSevSnpSpecificationEnumValue].
  /// [value] Property value
  AmdSevSnpSpecificationEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AmdSevSnpSpecificationEnumValue.fromMap(Map<String, dynamic> map) {
    return AmdSevSnpSpecificationEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

