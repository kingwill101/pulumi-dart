// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_type_schema.dart';

/// Kubernetes properties
class KubernetesProperties {
  /// Default instance type
  final pulumi.Input<String>? defaultInstanceType;
  /// Extension instance release train.
  final pulumi.Input<String>? extensionInstanceReleaseTrain;
  /// Extension principal-id.
  final pulumi.Input<String>? extensionPrincipalId;
  /// Instance Type Schema
  final pulumi.Input<Map<String, InstanceTypeSchema>>? instanceTypes;
  /// Compute namespace
  final pulumi.Input<String>? namespace;
  /// Relay connection string.
  final pulumi.Input<String>? relayConnectionString;
  /// ServiceBus connection string.
  final pulumi.Input<String>? serviceBusConnectionString;
  /// VC name.
  final pulumi.Input<String>? vcName;

  /// Creates a new [KubernetesProperties].
  /// [defaultInstanceType] Default instance type
  /// [extensionInstanceReleaseTrain] Extension instance release train.
  /// [extensionPrincipalId] Extension principal-id.
  /// [instanceTypes] Instance Type Schema
  /// [namespace] Compute namespace
  /// [relayConnectionString] Relay connection string.
  /// [serviceBusConnectionString] ServiceBus connection string.
  /// [vcName] VC name.
  const KubernetesProperties({
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
      'instanceTypes': ?pulumi.Input.mapOptionalInputValue<Map<String, InstanceTypeSchema>, Map<String, Map<String, dynamic>>>(instanceTypes, (value) => pulumi.Input.encodeMapValues<InstanceTypeSchema, Map<String, dynamic>>(value, (value) => value.toMap())),
      'namespace': ?namespace,
      'relayConnectionString': ?relayConnectionString,
      'serviceBusConnectionString': ?serviceBusConnectionString,
      'vcName': ?vcName,
    };
  }

  factory KubernetesProperties.fromMap(Map<String, dynamic> map) {
    return KubernetesProperties(
      defaultInstanceType: (() { final guardedValue = map['defaultInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionInstanceReleaseTrain: (() { final guardedValue = map['extensionInstanceReleaseTrain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionPrincipalId: (() { final guardedValue = map['extensionPrincipalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceTypes: (() { final guardedValue = map['instanceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<InstanceTypeSchema>(guardedValue, (value) => InstanceTypeSchema.fromMap((value as Map).cast<String, dynamic>()))); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relayConnectionString: (() { final guardedValue = map['relayConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceBusConnectionString: (() { final guardedValue = map['serviceBusConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vcName: (() { final guardedValue = map['vcName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
