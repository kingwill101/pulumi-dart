// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The export policy for a container registry.
class ExportPolicy {
  /// The value that indicates whether the policy is enabled or not.
  final pulumi.Input<dynamic>? status;

  /// Creates a new [ExportPolicy].
  /// [status] The value that indicates whether the policy is enabled or not.
  ExportPolicy({
    pulumi.Input<dynamic>? status,
  }) : status = status ?? pulumi.Input.fromValue('enabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory ExportPolicy.fromMap(Map<String, dynamic> map) {
    return ExportPolicy(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
