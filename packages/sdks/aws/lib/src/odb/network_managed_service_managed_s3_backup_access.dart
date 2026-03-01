// ignore_for_file: unused_element, unnecessary_cast


class NetworkManagedServiceManagedS3BackupAccess {
  final List<String> ipv4Addresses;
  /// The status of the network resource.
  final String status;

  /// Creates a new [NetworkManagedServiceManagedS3BackupAccess].
  /// [ipv4Addresses] Required.
  /// [status] The status of the network resource.
  NetworkManagedServiceManagedS3BackupAccess({
    required this.ipv4Addresses,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Addresses': ipv4Addresses,
      'status': status,
    };
  }

  factory NetworkManagedServiceManagedS3BackupAccess.fromMap(Map<String, dynamic> map) {
    return NetworkManagedServiceManagedS3BackupAccess(
      ipv4Addresses: (map['ipv4Addresses'] as List).cast<String>(),
      status: map['status'] as String,
    );
  }
}

