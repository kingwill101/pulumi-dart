// ignore_for_file: unused_element, unnecessary_cast


/// The Network Adapter configuration of a DataBox.
class ApplianceNetworkConfigurationResponse {
  /// Mac Address.
  final String macAddress;
  /// Name of the network.
  final String name;

  /// Creates a new [ApplianceNetworkConfigurationResponse].
  /// [macAddress] Mac Address.
  /// [name] Name of the network.
  ApplianceNetworkConfigurationResponse({
    required this.macAddress,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'macAddress': macAddress,
      'name': name,
    };
  }

  factory ApplianceNetworkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ApplianceNetworkConfigurationResponse(
      macAddress: map['macAddress'] as String,
      name: map['name'] as String,
    );
  }
}

