// ignore_for_file: unused_element, unnecessary_cast

import 'advanced_settings.dart';
import 'broker_diagnostics.dart';
import 'cardinality.dart';
import 'disk_backed_message_buffer.dart';
import 'generate_resource_limits.dart';

/// Broker Resource properties
class BrokerProperties {
  /// Advanced settings of Broker.
  final AdvancedSettings? advanced;
  /// The cardinality details of the broker.
  final Cardinality? cardinality;
  /// Spec defines the desired identities of Broker diagnostics settings.
  final BrokerDiagnostics? diagnostics;
  /// Settings of Disk Backed Message Buffer.
  final DiskBackedMessageBuffer? diskBackedMessageBuffer;
  /// This setting controls whether Kubernetes CPU resource limits are requested. Increasing the number of replicas or workers proportionally increases the amount of CPU resources requested. If this setting is enabled and there are insufficient CPU resources, an error will be emitted.
  final GenerateResourceLimits? generateResourceLimits;
  /// Memory profile of Broker.
  final String? memoryProfile;

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
      'advanced': ?advanced == null ? null : advanced!.toMap(),
      'cardinality': ?cardinality == null ? null : cardinality!.toMap(),
      'diagnostics': ?diagnostics == null ? null : diagnostics!.toMap(),
      'diskBackedMessageBuffer': ?diskBackedMessageBuffer == null ? null : diskBackedMessageBuffer!.toMap(),
      'generateResourceLimits': ?generateResourceLimits == null ? null : generateResourceLimits!.toMap(),
      'memoryProfile': ?memoryProfile,
    };
  }

  factory BrokerProperties.fromMap(Map<String, dynamic> map) {
    return BrokerProperties(
      advanced: map['advanced'] == null ? null : AdvancedSettings.fromMap((map['advanced'] as Map).cast<String, dynamic>()),
      cardinality: map['cardinality'] == null ? null : Cardinality.fromMap((map['cardinality'] as Map).cast<String, dynamic>()),
      diagnostics: map['diagnostics'] == null ? null : BrokerDiagnostics.fromMap((map['diagnostics'] as Map).cast<String, dynamic>()),
      diskBackedMessageBuffer: map['diskBackedMessageBuffer'] == null ? null : DiskBackedMessageBuffer.fromMap((map['diskBackedMessageBuffer'] as Map).cast<String, dynamic>()),
      generateResourceLimits: map['generateResourceLimits'] == null ? null : GenerateResourceLimits.fromMap((map['generateResourceLimits'] as Map).cast<String, dynamic>()),
      memoryProfile: map['memoryProfile'] == null ? null : map['memoryProfile'] as String,
    );
  }
}

