// ignore_for_file: unused_element, unnecessary_cast

import 'resource_range_response.dart';

/// The properties describe the recommended machine configuration for this Image Definition. These properties are updatable.
class RecommendedMachineConfigurationResponse {
  /// Describes the resource range.
  final ResourceRangeResponse? memory;
  /// Describes the resource range.
  final ResourceRangeResponse? vCPUs;

  /// Creates a new [RecommendedMachineConfigurationResponse].
  /// [memory] Describes the resource range.
  /// [vCPUs] Describes the resource range.
  RecommendedMachineConfigurationResponse({
    this.memory,
    this.vCPUs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memory': ?memory == null ? null : memory!.toMap(),
      'vCPUs': ?vCPUs == null ? null : vCPUs!.toMap(),
    };
  }

  factory RecommendedMachineConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return RecommendedMachineConfigurationResponse(
      memory: map['memory'] == null ? null : ResourceRangeResponse.fromMap((map['memory'] as Map).cast<String, dynamic>()),
      vCPUs: map['vCPUs'] == null ? null : ResourceRangeResponse.fromMap((map['vCPUs'] as Map).cast<String, dynamic>()),
    );
  }
}

