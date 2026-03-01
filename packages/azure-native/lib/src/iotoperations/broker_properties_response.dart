// ignore_for_file: unused_element, unnecessary_cast

import 'advanced_settings_response.dart';
import 'broker_diagnostics_response.dart';
import 'cardinality_response.dart';
import 'disk_backed_message_buffer_response.dart';
import 'generate_resource_limits_response.dart';

/// Broker Resource properties
class BrokerPropertiesResponse {
  /// Advanced settings of Broker.
  final AdvancedSettingsResponse? advanced;
  /// The cardinality details of the broker.
  final CardinalityResponse? cardinality;
  /// Spec defines the desired identities of Broker diagnostics settings.
  final BrokerDiagnosticsResponse? diagnostics;
  /// Settings of Disk Backed Message Buffer.
  final DiskBackedMessageBufferResponse? diskBackedMessageBuffer;
  /// This setting controls whether Kubernetes CPU resource limits are requested. Increasing the number of replicas or workers proportionally increases the amount of CPU resources requested. If this setting is enabled and there are insufficient CPU resources, an error will be emitted.
  final GenerateResourceLimitsResponse? generateResourceLimits;
  /// Memory profile of Broker.
  final String? memoryProfile;
  /// The status of the last operation.
  final String provisioningState;

  /// Creates a new [BrokerPropertiesResponse].
  /// [advanced] Advanced settings of Broker.
  /// [cardinality] The cardinality details of the broker.
  /// [diagnostics] Spec defines the desired identities of Broker diagnostics settings.
  /// [diskBackedMessageBuffer] Settings of Disk Backed Message Buffer.
  /// [generateResourceLimits] This setting controls whether Kubernetes CPU resource limits are requested. Increasing the number of replicas or workers proportionally increases the amount of CPU resources requested. If this setting is enabled and there are insufficient CPU resources, an error will be emitted.
  /// [memoryProfile] Memory profile of Broker.
  /// [provisioningState] The status of the last operation.
  BrokerPropertiesResponse({
    this.advanced,
    this.cardinality,
    this.diagnostics,
    this.diskBackedMessageBuffer,
    this.generateResourceLimits,
    this.memoryProfile,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advanced': ?advanced == null ? null : advanced!.toMap(),
      'cardinality': ?cardinality == null ? null : cardinality!.toMap(),
      'diagnostics': ?diagnostics == null ? null : diagnostics!.toMap(),
      'diskBackedMessageBuffer': ?diskBackedMessageBuffer == null ? null : diskBackedMessageBuffer!.toMap(),
      'generateResourceLimits': ?generateResourceLimits == null ? null : generateResourceLimits!.toMap(),
      'memoryProfile': ?memoryProfile,
      'provisioningState': provisioningState,
    };
  }

  factory BrokerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BrokerPropertiesResponse(
      advanced: map['advanced'] == null ? null : AdvancedSettingsResponse.fromMap((map['advanced'] as Map).cast<String, dynamic>()),
      cardinality: map['cardinality'] == null ? null : CardinalityResponse.fromMap((map['cardinality'] as Map).cast<String, dynamic>()),
      diagnostics: map['diagnostics'] == null ? null : BrokerDiagnosticsResponse.fromMap((map['diagnostics'] as Map).cast<String, dynamic>()),
      diskBackedMessageBuffer: map['diskBackedMessageBuffer'] == null ? null : DiskBackedMessageBufferResponse.fromMap((map['diskBackedMessageBuffer'] as Map).cast<String, dynamic>()),
      generateResourceLimits: map['generateResourceLimits'] == null ? null : GenerateResourceLimitsResponse.fromMap((map['generateResourceLimits'] as Map).cast<String, dynamic>()),
      memoryProfile: map['memoryProfile'] == null ? null : map['memoryProfile'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

