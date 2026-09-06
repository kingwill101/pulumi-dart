// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VersioningConfiguration
class VersioningConfigurationResponse {
  /// The versioning state of the bucket.
  final pulumi.Input<String?>? status;

  /// Creates a new [VersioningConfigurationResponse].
  /// [status] The versioning state of the bucket.
  VersioningConfigurationResponse({
    pulumi.Input<String?>? status,
  }) : status = status ?? pulumi.Input.fromValue('Suspended');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory VersioningConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VersioningConfigurationResponse(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
