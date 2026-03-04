// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ClusterEndpointEncryptionTypeEnumValue
class ClusterEndpointEncryptionTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ClusterEndpointEncryptionTypeEnumValue].
  /// [value] Property value
  ClusterEndpointEncryptionTypeEnumValue({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory ClusterEndpointEncryptionTypeEnumValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterEndpointEncryptionTypeEnumValue(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
