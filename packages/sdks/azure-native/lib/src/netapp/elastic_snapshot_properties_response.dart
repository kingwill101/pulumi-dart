// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Elastic Snapshot properties
class ElasticSnapshotPropertiesResponse {
  /// Azure lifecycle management.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ElasticSnapshotPropertiesResponse].
  /// [provisioningState] Azure lifecycle management.
  ElasticSnapshotPropertiesResponse({
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
    };
  }

  factory ElasticSnapshotPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticSnapshotPropertiesResponse(
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

