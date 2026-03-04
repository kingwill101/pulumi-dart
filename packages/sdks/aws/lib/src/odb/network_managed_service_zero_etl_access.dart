// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkManagedServiceZeroEtlAccess {
  final pulumi.Input<String> cidr;

  /// The status of the network resource.
  final pulumi.Input<String> status;

  /// Creates a new [NetworkManagedServiceZeroEtlAccess].
  /// [cidr] Required.
  /// [status] The status of the network resource.
  NetworkManagedServiceZeroEtlAccess({
    required this.cidr,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cidr': cidr, 'status': status};
  }

  factory NetworkManagedServiceZeroEtlAccess.fromMap(Map<String, dynamic> map) {
    return NetworkManagedServiceZeroEtlAccess(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
