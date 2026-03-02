// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PermissionTimeouts {
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.
  final pulumi.Input<String>? delete;

  /// Creates a new [PermissionTimeouts].
  /// [delete] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.
  PermissionTimeouts({
    this.delete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delete': ?delete,
    };
  }

  factory PermissionTimeouts.fromMap(Map<String, dynamic> map) {
    return PermissionTimeouts(
      delete: map['delete'] == null ? null : ((map['delete'] as String).input()).input(),
    );
  }
}

