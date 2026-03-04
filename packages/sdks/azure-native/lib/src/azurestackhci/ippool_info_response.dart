// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP Pool info
class IPPoolInfoResponse {
  /// Number of IP addresses available in the IP Pool
  final pulumi.Input<String> available;

  /// Number of IP addresses allocated from the IP Pool
  final pulumi.Input<String> used;

  /// Creates a new [IPPoolInfoResponse].
  /// [available] Number of IP addresses available in the IP Pool
  /// [used] Number of IP addresses allocated from the IP Pool
  IPPoolInfoResponse({required this.available, required this.used});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'available': available, 'used': used};
  }

  factory IPPoolInfoResponse.fromMap(Map<String, dynamic> map) {
    return IPPoolInfoResponse(
      available: pulumi.Input.fromValue(map['available'] as String),
      used: pulumi.Input.fromValue(map['used'] as String),
    );
  }
}
