// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VersioningConfiguration
class VersioningConfiguration {
  /// The versioning state of the bucket.
  final pulumi.Input<String>? status;

  /// Creates a new [VersioningConfiguration].
  /// [status] The versioning state of the bucket.
  VersioningConfiguration({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory VersioningConfiguration.fromMap(Map<String, dynamic> map) {
    return VersioningConfiguration(
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

