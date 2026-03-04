// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ClusterEndpointEncryptionTypeEnumValue
class ClusterEndpointEncryptionTypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ClusterEndpointEncryptionTypeEnumValueResponse].
  /// [value] Property value
  ClusterEndpointEncryptionTypeEnumValueResponse({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory ClusterEndpointEncryptionTypeEnumValueResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterEndpointEncryptionTypeEnumValueResponse(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
