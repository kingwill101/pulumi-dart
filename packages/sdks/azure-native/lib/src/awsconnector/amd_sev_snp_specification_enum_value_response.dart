// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AmdSevSnpSpecificationEnumValue
class AmdSevSnpSpecificationEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [AmdSevSnpSpecificationEnumValueResponse].
  /// [value] Property value
  const AmdSevSnpSpecificationEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AmdSevSnpSpecificationEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return AmdSevSnpSpecificationEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
