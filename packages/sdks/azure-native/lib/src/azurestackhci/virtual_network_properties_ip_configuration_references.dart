// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IPConfigurationReference - Describes a IPConfiguration under the virtual network
class VirtualNetworkPropertiesIpConfigurationReferences {
  /// IPConfigurationID
  final pulumi.Input<String>? id;

  /// Creates a new [VirtualNetworkPropertiesIpConfigurationReferences].
  /// [id] IPConfigurationID
  VirtualNetworkPropertiesIpConfigurationReferences({this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory VirtualNetworkPropertiesIpConfigurationReferences.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNetworkPropertiesIpConfigurationReferences(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
