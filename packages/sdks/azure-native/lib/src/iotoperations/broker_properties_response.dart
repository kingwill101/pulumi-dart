// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_settings_response.dart';
import 'broker_diagnostics_response.dart';
import 'cardinality_response.dart';
import 'disk_backed_message_buffer_response.dart';
import 'generate_resource_limits_response.dart';

/// Broker Resource properties
class BrokerPropertiesResponse {
  /// Advanced settings of Broker.
  final pulumi.Input<AdvancedSettingsResponse>? advanced;
  /// The cardinality details of the broker.
  final pulumi.Input<CardinalityResponse>? cardinality;
  /// Spec defines the desired identities of Broker diagnostics settings.
  final pulumi.Input<BrokerDiagnosticsResponse>? diagnostics;
  /// Settings of Disk Backed Message Buffer.
  final pulumi.Input<DiskBackedMessageBufferResponse>? diskBackedMessageBuffer;
  /// This setting controls whether Kubernetes CPU resource limits are requested. Increasing the number of replicas or workers proportionally increases the amount of CPU resources requested. If this setting is enabled and there are insufficient CPU resources, an error will be emitted.
  final pulumi.Input<GenerateResourceLimitsResponse>? generateResourceLimits;
  /// Memory profile of Broker.
  final pulumi.Input<String>? memoryProfile;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

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
      'advanced': ?pulumi.Input.mapOptionalInputValue<AdvancedSettingsResponse, Map<String, dynamic>>(advanced, (value) => value.toMap()),
      'cardinality': ?pulumi.Input.mapOptionalInputValue<CardinalityResponse, Map<String, dynamic>>(cardinality, (value) => value.toMap()),
      'diagnostics': ?pulumi.Input.mapOptionalInputValue<BrokerDiagnosticsResponse, Map<String, dynamic>>(diagnostics, (value) => value.toMap()),
      'diskBackedMessageBuffer': ?pulumi.Input.mapOptionalInputValue<DiskBackedMessageBufferResponse, Map<String, dynamic>>(diskBackedMessageBuffer, (value) => value.toMap()),
      'generateResourceLimits': ?pulumi.Input.mapOptionalInputValue<GenerateResourceLimitsResponse, Map<String, dynamic>>(generateResourceLimits, (value) => value.toMap()),
      'memoryProfile': ?memoryProfile,
      'provisioningState': provisioningState,
    };
  }

  factory BrokerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BrokerPropertiesResponse(
      advanced: map['advanced'] == null ? null : (AdvancedSettingsResponse.fromMap((map['advanced']! as Map).cast<String, dynamic>())).input(),
      cardinality: map['cardinality'] == null ? null : (CardinalityResponse.fromMap((map['cardinality']! as Map).cast<String, dynamic>())).input(),
      diagnostics: map['diagnostics'] == null ? null : (BrokerDiagnosticsResponse.fromMap((map['diagnostics']! as Map).cast<String, dynamic>())).input(),
      diskBackedMessageBuffer: map['diskBackedMessageBuffer'] == null ? null : (DiskBackedMessageBufferResponse.fromMap((map['diskBackedMessageBuffer']! as Map).cast<String, dynamic>())).input(),
      generateResourceLimits: map['generateResourceLimits'] == null ? null : (GenerateResourceLimitsResponse.fromMap((map['generateResourceLimits']! as Map).cast<String, dynamic>())).input(),
      memoryProfile: map['memoryProfile'] == null ? null : (map['memoryProfile']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

