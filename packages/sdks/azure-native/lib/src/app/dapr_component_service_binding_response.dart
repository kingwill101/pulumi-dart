// ignore_for_file: unused_element, unnecessary_cast

import 'dapr_service_bind_metadata_response.dart';

/// Configuration to bind a Dapr Component to a dev ContainerApp Service
class DaprComponentServiceBindingResponse {
  /// Service bind metadata
  final DaprServiceBindMetadataResponse? metadata;
  /// Name of the service bind
  final String? name;
  /// Resource id of the target service
  final String? serviceId;

  /// Creates a new [DaprComponentServiceBindingResponse].
  /// [metadata] Service bind metadata
  /// [name] Name of the service bind
  /// [serviceId] Resource id of the target service
  DaprComponentServiceBindingResponse({
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

  factory DaprComponentServiceBindingResponse.fromMap(Map<String, dynamic> map) {
    return DaprComponentServiceBindingResponse(
      metadata: map['metadata'] == null ? null : DaprServiceBindMetadataResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      serviceId: map['serviceId'] == null ? null : map['serviceId'] as String,
    );
  }
}

