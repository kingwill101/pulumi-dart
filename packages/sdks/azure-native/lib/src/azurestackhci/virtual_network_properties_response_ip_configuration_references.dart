// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IPConfigurationReference - Describes a IPConfiguration under the virtual network
class VirtualNetworkPropertiesResponseIpConfigurationReferences {
  /// IPConfigurationID
  final pulumi.Input<String>? id;

  /// Creates a new [VirtualNetworkPropertiesResponseIpConfigurationReferences].
  /// [id] IPConfigurationID
  const VirtualNetworkPropertiesResponseIpConfigurationReferences({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualNetworkPropertiesResponseIpConfigurationReferences.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesResponseIpConfigurationReferences(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

