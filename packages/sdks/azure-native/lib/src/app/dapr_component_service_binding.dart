// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_service_bind_metadata.dart';

/// Configuration to bind a Dapr Component to a dev ContainerApp Service
class DaprComponentServiceBinding {
  /// Service bind metadata
  final pulumi.Input<DaprServiceBindMetadata>? metadata;
  /// Name of the service bind
  final pulumi.Input<String>? name;
  /// Resource id of the target service
  final pulumi.Input<String>? serviceId;

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
      'metadata': ?pulumi.Input.mapOptionalInputValue<DaprServiceBindMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'name': ?name,
      'serviceId': ?serviceId,
    };
  }

  factory DaprComponentServiceBinding.fromMap(Map<String, dynamic> map) {
    return DaprComponentServiceBinding(
      metadata: map['metadata'] == null ? null : (DaprServiceBindMetadata.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      serviceId: map['serviceId'] == null ? null : (map['serviceId']! as String).input(),
    );
  }
}

