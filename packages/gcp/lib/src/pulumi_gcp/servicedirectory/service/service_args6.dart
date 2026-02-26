// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Service.
class ServiceArgs6 {
  /// Metadata for the service. This data can be consumed
  /// by service clients. The entire metadata dictionary may contain
  /// up to 2000 characters, spread across all key-value pairs.
  /// Metadata that goes beyond any these limits will be rejected.
  final Input<Map<String, String>>? metadata;

  /// The resource name of the namespace this service will belong to.
  final Input<String> namespace;

  /// The Resource ID must be 1-63 characters long, including digits,
  /// lowercase letters or the hyphen character.
  final Input<String> serviceId;

  ServiceArgs6({
    this.metadata,
    required this.namespace,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    map['namespace'] = namespace;
    map['serviceId'] = serviceId;
    return map;
  }

  factory ServiceArgs6.fromMap(Map<String, dynamic> map) {
    return ServiceArgs6(
      metadata: Input.asOptionalInput<Map<String, String>>(map['metadata']),
      namespace: Input.asInput<String>(map['namespace']),
      serviceId: Input.asInput<String>(map['serviceId']),
    );
  }
}
