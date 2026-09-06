// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AmdSevSnpSpecificationEnumValue
class AmdSevSnpSpecificationEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [AmdSevSnpSpecificationEnumValue].
  /// [value] Property value
  const AmdSevSnpSpecificationEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AmdSevSnpSpecificationEnumValue.fromMap(Map<String, dynamic> map) {
    return AmdSevSnpSpecificationEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
