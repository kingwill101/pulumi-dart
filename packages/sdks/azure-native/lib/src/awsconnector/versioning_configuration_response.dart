// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VersioningConfiguration
class VersioningConfigurationResponse {
  /// The versioning state of the bucket.
  final pulumi.Input<String>? status;

  /// Creates a new [VersioningConfigurationResponse].
  /// [status] The versioning state of the bucket.
  VersioningConfigurationResponse({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory VersioningConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VersioningConfigurationResponse(
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

