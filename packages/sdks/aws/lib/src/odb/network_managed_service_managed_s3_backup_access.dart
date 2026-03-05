// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkManagedServiceManagedS3BackupAccess {
  final pulumi.Input<List<String>> ipv4Addresses;
  /// The status of the network resource.
  final pulumi.Input<String> status;

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
      ipv4Addresses: pulumi.Input.fromValue((map['ipv4Addresses'] as List).cast<String>()),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

