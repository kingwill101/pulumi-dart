// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkManagedServiceZeroEtlAccess {
  /// CIDR range for the Zero-ETL access.
  final pulumi.Input<String> cidr;
  /// Status of the Zero-ETL access.
  final pulumi.Input<String> status;

  /// Creates a new [NetworkManagedServiceZeroEtlAccess].
  /// [cidr] CIDR range for the Zero-ETL access.
  /// [status] Status of the Zero-ETL access.
  const NetworkManagedServiceZeroEtlAccess({
    required this.cidr,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'status': status,
    };
  }

  factory NetworkManagedServiceZeroEtlAccess.fromMap(Map<String, dynamic> map) {
    return NetworkManagedServiceZeroEtlAccess(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
