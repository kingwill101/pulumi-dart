// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkManagedServiceZeroTlAccess {
  final pulumi.Input<String> cidr;
  /// The status of the network resource.
  final pulumi.Input<String> status;

  /// Creates a new [GetNetworkManagedServiceZeroTlAccess].
  /// [cidr] Required.
  /// [status] The status of the network resource.
  GetNetworkManagedServiceZeroTlAccess({
    required this.cidr,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'status': status,
    };
  }

  factory GetNetworkManagedServiceZeroTlAccess.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagedServiceZeroTlAccess(
      cidr: (map['cidr'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

