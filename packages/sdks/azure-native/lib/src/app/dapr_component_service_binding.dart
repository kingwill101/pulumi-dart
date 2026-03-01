// ignore_for_file: unused_element, unnecessary_cast

import 'dapr_service_bind_metadata.dart';

/// Configuration to bind a Dapr Component to a dev ContainerApp Service
class DaprComponentServiceBinding {
  /// Service bind metadata
  final DaprServiceBindMetadata? metadata;
  /// Name of the service bind
  final String? name;
  /// Resource id of the target service
  final String? serviceId;

  /// Creates a new [DaprComponentServiceBinding].
  /// [metadata] Service bind metadata
  /// [name] Name of the service bind
  /// [serviceId] Resource id of the target service
  DaprComponentServiceBinding({
    this.metadata,
    this.name,
    this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'name': ?name,
      'serviceId': ?serviceId,
    };
  }

  factory DaprComponentServiceBinding.fromMap(Map<String, dynamic> map) {
    return DaprComponentServiceBinding(
      metadata: map['metadata'] == null ? null : DaprServiceBindMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      serviceId: map['serviceId'] == null ? null : map['serviceId'] as String,
    );
  }
}

