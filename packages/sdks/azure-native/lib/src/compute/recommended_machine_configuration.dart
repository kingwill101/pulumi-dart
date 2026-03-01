// ignore_for_file: unused_element, unnecessary_cast

import 'resource_range.dart';

/// The properties describe the recommended machine configuration for this Image Definition. These properties are updatable.
class RecommendedMachineConfiguration {
  /// Describes the resource range.
  final ResourceRange? memory;
  /// Describes the resource range.
  final ResourceRange? vCPUs;

  /// Creates a new [RecommendedMachineConfiguration].
  /// [memory] Describes the resource range.
  /// [vCPUs] Describes the resource range.
  RecommendedMachineConfiguration({
    this.memory,
    this.vCPUs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memory': ?memory == null ? null : memory!.toMap(),
      'vCPUs': ?vCPUs == null ? null : vCPUs!.toMap(),
    };
  }

  factory RecommendedMachineConfiguration.fromMap(Map<String, dynamic> map) {
    return RecommendedMachineConfiguration(
      memory: map['memory'] == null ? null : ResourceRange.fromMap((map['memory'] as Map).cast<String, dynamic>()),
      vCPUs: map['vCPUs'] == null ? null : ResourceRange.fromMap((map['vCPUs'] as Map).cast<String, dynamic>()),
    );
  }
}

