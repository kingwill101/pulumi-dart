// ignore_for_file: unused_element, unnecessary_cast


class ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorage {
  /// The full name of the Shared Storage Account. Changing this forces a new resource to be created.
  final String? accountName;
  /// The full name of Private Endpoint for the Shared Storage Account. Changing this forces a new resource to be created.
  final String? privateEndpointName;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorage].
  /// [accountName] The full name of the Shared Storage Account. Changing this forces a new resource to be created.
  /// [privateEndpointName] The full name of Private Endpoint for the Shared Storage Account. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorage({
    this.accountName,
    this.privateEndpointName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'privateEndpointName': ?privateEndpointName,
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorage.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorage(
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      privateEndpointName: map['privateEndpointName'] == null ? null : map['privateEndpointName'] as String,
    );
  }
}

