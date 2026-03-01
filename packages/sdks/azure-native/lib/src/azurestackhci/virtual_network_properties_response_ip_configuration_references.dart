// ignore_for_file: unused_element, unnecessary_cast


/// IPConfigurationReference - Describes a IPConfiguration under the virtual network
class VirtualNetworkPropertiesResponseIpConfigurationReferences {
  /// IPConfigurationID
  final String? id;

  /// Creates a new [VirtualNetworkPropertiesResponseIpConfigurationReferences].
  /// [id] IPConfigurationID
  VirtualNetworkPropertiesResponseIpConfigurationReferences({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualNetworkPropertiesResponseIpConfigurationReferences.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesResponseIpConfigurationReferences(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

