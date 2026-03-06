// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The network profile of the machines in the pool.
class NetworkProfileResponse {
  /// The subnet id on which to put all machines created in the pool.
  final pulumi.Input<String> subnetId;

  /// Creates a new [NetworkProfileResponse].
  /// [subnetId] The subnet id on which to put all machines created in the pool.
  const NetworkProfileResponse({
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetId': subnetId,
    };
  }

  factory NetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return NetworkProfileResponse(
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

