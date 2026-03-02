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
  BrokerProperties({
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
      advanced: map['advanced'] == null ? null : (AdvancedSettings.fromMap((map['advanced']! as Map).cast<String, dynamic>())).input(),
      cardinality: map['cardinality'] == null ? null : (Cardinality.fromMap((map['cardinality']! as Map).cast<String, dynamic>())).input(),
      diagnostics: map['diagnostics'] == null ? null : (BrokerDiagnostics.fromMap((map['diagnostics']! as Map).cast<String, dynamic>())).input(),
      diskBackedMessageBuffer: map['diskBackedMessageBuffer'] == null ? null : (DiskBackedMessageBuffer.fromMap((map['diskBackedMessageBuffer']! as Map).cast<String, dynamic>())).input(),
      generateResourceLimits: map['generateResourceLimits'] == null ? null : (GenerateResourceLimits.fromMap((map['generateResourceLimits']! as Map).cast<String, dynamic>())).input(),
      memoryProfile: map['memoryProfile'] == null ? null : (map['memoryProfile']! as String).input(),
    );
  }
}

