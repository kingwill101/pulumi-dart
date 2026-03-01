// ignore_for_file: unused_element, unnecessary_cast


/// The public IP Address configuration of the networking configuration of a Pool.
class PublicIPAddressConfigurationResponse {
  /// The number of IPs specified here limits the maximum size of the Pool - 100 dedicated nodes or 100 Spot/low-priority nodes can be allocated for each public IP. For example, a pool needing 250 dedicated VMs would need at least 3 public IPs specified. Each element of this collection is of the form: /subscriptions/{subscription}/resourceGroups/{group}/providers/Microsoft.Network/publicIPAddresses/{ip}.
  final List<String>? ipAddressIds;
  /// The default value is BatchManaged
  final String? provision;

  /// Creates a new [PublicIPAddressConfigurationResponse].
  /// [ipAddressIds] The number of IPs specified here limits the maximum size of the Pool - 100 dedicated nodes or 100 Spot/low-priority nodes can be allocated for each public IP. For example, a pool needing 250 dedicated VMs would need at least 3 public IPs specified. Each element of this collection is of the form: /subscriptions/{subscription}/resourceGroups/{group}/providers/Microsoft.Network/publicIPAddresses/{ip}.
  /// [provision] The default value is BatchManaged
  PublicIPAddressConfigurationResponse({
    this.ipAddressIds,
    this.provision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressIds': ?ipAddressIds,
      'provision': ?provision,
    };
  }

  factory PublicIPAddressConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressConfigurationResponse(
      ipAddressIds: map['ipAddressIds'] == null ? null : (map['ipAddressIds'] as List).cast<String>(),
      provision: map['provision'] == null ? null : map['provision'] as String,
    );
  }
}

