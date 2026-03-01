// ignore_for_file: unused_element, unnecessary_cast


/// IPConfigurationReference - Describes a IPConfiguration under the virtual network
class VirtualNetworkPropertiesIpConfigurationReferences {
  /// IPConfigurationID
  final String? id;

  /// Creates a new [VirtualNetworkPropertiesIpConfigurationReferences].
  /// [id] IPConfigurationID
  VirtualNetworkPropertiesIpConfigurationReferences({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualNetworkPropertiesIpConfigurationReferences.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesIpConfigurationReferences(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

