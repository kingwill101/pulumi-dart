// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The network profile of the machines in the pool.
class NetworkProfile {
  /// The subnet id on which to put all machines created in the pool.
  final pulumi.Input<String> subnetId;

  /// Creates a new [NetworkProfile].
  /// [subnetId] The subnet id on which to put all machines created in the pool.
  NetworkProfile({
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetId': subnetId,
    };
  }

  factory NetworkProfile.fromMap(Map<String, dynamic> map) {
    return NetworkProfile(
      subnetId: (map['subnetId'] as String).input(),
    );
  }
}

