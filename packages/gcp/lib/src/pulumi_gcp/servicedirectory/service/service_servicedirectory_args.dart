// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Service.
class ServiceServicedirectoryArgs {
  /// Metadata for the service. This data can be consumed
  /// by service clients. The entire metadata dictionary may contain
  /// up to 2000 characters, spread across all key-value pairs.
  /// Metadata that goes beyond any these limits will be rejected.
  final pulumi.Input<Map<String, String>>? metadata;

  /// The resource name of the namespace this service will belong to.
  final pulumi.Input<String> namespace;

  /// The Resource ID must be 1-63 characters long, including digits,
  /// lowercase letters or the hyphen character.
  final pulumi.Input<String> serviceId;

  ServiceServicedirectoryArgs({
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

  factory ServiceServicedirectoryArgs.fromMap(Map<String, dynamic> map) {
    return ServiceServicedirectoryArgs(
      metadata:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['metadata']),
      namespace: pulumi.Input.asInput<String>(map['namespace']),
      serviceId: pulumi.Input.asInput<String>(map['serviceId']),
    );
  }
}
