// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_type_schema.dart';

/// Kubernetes properties
class KubernetesProperties {
  /// Default instance type
  final String? defaultInstanceType;
  /// Extension instance release train.
  final String? extensionInstanceReleaseTrain;
  /// Extension principal-id.
  final String? extensionPrincipalId;
  /// Instance Type Schema
  final Map<String, InstanceTypeSchema>? instanceTypes;
  /// Compute namespace
  final String? namespace;
  /// Relay connection string.
  final String? relayConnectionString;
  /// ServiceBus connection string.
  final String? serviceBusConnectionString;
  /// VC name.
  final String? vcName;

  /// Creates a new [KubernetesProperties].
  /// [defaultInstanceType] Default instance type
  /// [extensionInstanceReleaseTrain] Extension instance release train.
  /// [extensionPrincipalId] Extension principal-id.
  /// [instanceTypes] Instance Type Schema
  /// [namespace] Compute namespace
  /// [relayConnectionString] Relay connection string.
  /// [serviceBusConnectionString] ServiceBus connection string.
  /// [vcName] VC name.
  KubernetesProperties({
    this.defaultInstanceType,
    this.extensionInstanceReleaseTrain,
    this.extensionPrincipalId,
    this.instanceTypes,
    this.namespace,
    this.relayConnectionString,
    this.serviceBusConnectionString,
    this.vcName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultInstanceType': ?defaultInstanceType,
      'extensionInstanceReleaseTrain': ?extensionInstanceReleaseTrain,
      'extensionPrincipalId': ?extensionPrincipalId,
      'instanceTypes': ?instanceTypes == null ? null : pulumi.Input.encodeMapValues<InstanceTypeSchema, Map<String, dynamic>>(instanceTypes!, (value) => value.toMap()),
      'namespace': ?namespace,
      'relayConnectionString': ?relayConnectionString,
      'serviceBusConnectionString': ?serviceBusConnectionString,
      'vcName': ?vcName,
    };
  }

  factory KubernetesProperties.fromMap(Map<String, dynamic> map) {
    return KubernetesProperties(
      defaultInstanceType: map['defaultInstanceType'] == null ? null : map['defaultInstanceType'] as String,
      extensionInstanceReleaseTrain: map['extensionInstanceReleaseTrain'] == null ? null : map['extensionInstanceReleaseTrain'] as String,
      extensionPrincipalId: map['extensionPrincipalId'] == null ? null : map['extensionPrincipalId'] as String,
      instanceTypes: map['instanceTypes'] == null ? null : pulumi.Input.decodeMapValues<InstanceTypeSchema>(map['instanceTypes'], (value) => InstanceTypeSchema.fromMap((value as Map).cast<String, dynamic>())),
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      relayConnectionString: map['relayConnectionString'] == null ? null : map['relayConnectionString'] as String,
      serviceBusConnectionString: map['serviceBusConnectionString'] == null ? null : map['serviceBusConnectionString'] as String,
      vcName: map['vcName'] == null ? null : map['vcName'] as String,
    );
  }
}

