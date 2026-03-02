// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_range.dart';

/// The properties describe the recommended machine configuration for this Image Definition. These properties are updatable.
class RecommendedMachineConfiguration {
  /// Describes the resource range.
  final pulumi.Input<ResourceRange>? memory;
  /// Describes the resource range.
  final pulumi.Input<ResourceRange>? vCPUs;

  /// Creates a new [RecommendedMachineConfiguration].
  /// [memory] Describes the resource range.
  /// [vCPUs] Describes the resource range.
  RecommendedMachineConfiguration({
    this.memory,
    this.vCPUs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memory': ?pulumi.Input.mapOptionalInputValue<ResourceRange, Map<String, dynamic>>(memory, (value) => value.toMap()),
      'vCPUs': ?pulumi.Input.mapOptionalInputValue<ResourceRange, Map<String, dynamic>>(vCPUs, (value) => value.toMap()),
    };
  }

  factory RecommendedMachineConfiguration.fromMap(Map<String, dynamic> map) {
    return RecommendedMachineConfiguration(
      memory: map['memory'] == null ? null : (ResourceRange.fromMap((map['memory'] as Map).cast<String, dynamic>())).input(),
      vCPUs: map['vCPUs'] == null ? null : (ResourceRange.fromMap((map['vCPUs'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

