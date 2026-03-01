// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkManagedServiceManagedS3BackupAccess {
  final List<String> ipv4Addresses;

  /// The status of the network resource.
  final String status;

  /// Creates a new [GetNetworkManagedServiceManagedS3BackupAccess].
  /// [ipv4Addresses] Required.
  /// [status] The status of the network resource.
  GetNetworkManagedServiceManagedS3BackupAccess({
    required this.ipv4Addresses,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipv4Addresses': ipv4Addresses, 'status': status};
  }

  factory GetNetworkManagedServiceManagedS3BackupAccess.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkManagedServiceManagedS3BackupAccess(
      ipv4Addresses: (map['ipv4Addresses'] as List).cast<String>(),
      status: map['status'] as String,
    );
  }
}
