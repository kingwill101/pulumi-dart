// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_settings.dart';
import 'broker_diagnostics.dart';
import 'cardinality.dart';
import 'disk_backed_message_buffer.dart';
import 'generate_resource_limits.dart';

/// Broker Resource properties
class BrokerProperties {
  /// Advanced settings of Broker.
  final pulumi.Input<AdvancedSettings>? advanced;
  /// The cardinality details of the broker.
  final pulumi.Input<Cardinality>? cardinality;
  /// Spec defines the desired identities of Broker diagnostics settings.
  final pulumi.Input<BrokerDiagnostics>? diagnostics;
  /// Settings of Disk Backed Message Buffer.
  final pulumi.Input<DiskBackedMessageBuffer>? diskBackedMessageBuffer;
  /// This setting controls whether Kubernetes CPU resource limits are requested. Increasing the number of replicas or workers proportionally increases the amount of CPU resources requested. If this setting is enabled and there are insufficient CPU resources, an error will be emitted.
  final pulumi.Input<GenerateResourceLimits>? generateResourceLimits;
  /// Memory profile of Broker.
  final pulumi.Input<String>? memoryProfile;

  /// Creates a new [BrokerProperties].
  /// [advanced] Advanced settings of Broker.
  /// [cardinality] The cardinality details of the broker.
  /// [diagnostics] Spec defines the desired identities of Broker diagnostics settings.
  /// [diskBackedMessageBuffer] Settings of Disk Backed Message Buffer.
  /// [generateResourceLimits] This setting controls whether Kubernetes CPU resource limits are requested. Increasing the number of replicas or workers proportionally increases the amount of CPU resources requested. If this setting is enabled and there are insufficient CPU resources, an error will be emitted.
  /// [memoryProfile] Memory profile of Broker.
  const BrokerProperties({
    this.advanced,
    this.cardinality,
    this.diagnostics,
    this.diskBackedMessageBuffer,
    this.generateResourceLimits,
    this.memoryProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advanced': ?pulumi.Input.mapOptionalInputValue<AdvancedSettings, Map<String, dynamic>>(advanced, (value) => value.toMap()),
      'cardinality': ?pulumi.Input.mapOptionalInputValue<Cardinality, Map<String, dynamic>>(cardinality, (value) => value.toMap()),
      'diagnostics': ?pulumi.Input.mapOptionalInputValue<BrokerDiagnostics, Map<String, dynamic>>(diagnostics, (value) => value.toMap()),
      'diskBackedMessageBuffer': ?pulumi.Input.mapOptionalInputValue<DiskBackedMessageBuffer, Map<String, dynamic>>(diskBackedMessageBuffer, (value) => value.toMap()),
      'generateResourceLimits': ?pulumi.Input.mapOptionalInputValue<GenerateResourceLimits, Map<String, dynamic>>(generateResourceLimits, (value) => value.toMap()),
      'memoryProfile': ?memoryProfile,
    };
  }

  factory BrokerProperties.fromMap(Map<String, dynamic> map) {
    return BrokerProperties(
      advanced: (() { final guardedValue = map['advanced']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdvancedSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cardinality: (() { final guardedValue = map['cardinality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Cardinality.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diagnostics: (() { final guardedValue = map['diagnostics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskBackedMessageBuffer: (() { final guardedValue = map['diskBackedMessageBuffer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskBackedMessageBuffer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      generateResourceLimits: (() { final guardedValue = map['generateResourceLimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GenerateResourceLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memoryProfile: (() { final guardedValue = map['memoryProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
