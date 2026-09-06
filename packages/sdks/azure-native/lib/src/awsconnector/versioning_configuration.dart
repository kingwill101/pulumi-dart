// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VersioningConfiguration
class VersioningConfiguration {
  /// The versioning state of the bucket.
  final pulumi.Input<dynamic>? status;

  /// Creates a new [VersioningConfiguration].
  /// [status] The versioning state of the bucket.
  VersioningConfiguration({
    pulumi.Input<dynamic>? status,
  }) : status = status ?? pulumi.Input.fromValue('Suspended');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory VersioningConfiguration.fromMap(Map<String, dynamic> map) {
    return VersioningConfiguration(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
