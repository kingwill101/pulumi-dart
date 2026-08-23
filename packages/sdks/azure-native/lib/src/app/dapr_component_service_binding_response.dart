// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_service_bind_metadata_response.dart';

/// Configuration to bind a Dapr Component to a dev ContainerApp Service
class DaprComponentServiceBindingResponse {
  /// Service bind metadata
  final pulumi.Input<DaprServiceBindMetadataResponse>? metadata;
  /// Name of the service bind
  final pulumi.Input<String>? name;
  /// Resource id of the target service
  final pulumi.Input<String>? serviceId;

  /// Creates a new [DaprComponentServiceBindingResponse].
  /// [metadata] Service bind metadata
  /// [name] Name of the service bind
  /// [serviceId] Resource id of the target service
  const DaprComponentServiceBindingResponse({
    this.metadata,
    this.name,
    this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?pulumi.Input.mapOptionalInputValue<DaprServiceBindMetadataResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'name': ?name,
      'serviceId': ?serviceId,
    };
  }

  factory DaprComponentServiceBindingResponse.fromMap(Map<String, dynamic> map) {
    return DaprComponentServiceBindingResponse(
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaprServiceBindMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
