// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogS3TableIntegrationSourceTimeouts {
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.
  final pulumi.Input<String>? delete;

  /// Creates a new [LogS3TableIntegrationSourceTimeouts].
  /// [delete] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.
  const LogS3TableIntegrationSourceTimeouts({
    this.delete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delete': ?delete,
    };
  }

  factory LogS3TableIntegrationSourceTimeouts.fromMap(Map<String, dynamic> map) {
    return LogS3TableIntegrationSourceTimeouts(
      delete: (() { final guardedValue = map['delete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
