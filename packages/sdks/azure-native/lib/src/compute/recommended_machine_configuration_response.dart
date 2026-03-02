// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_range_response.dart';

/// The properties describe the recommended machine configuration for this Image Definition. These properties are updatable.
class RecommendedMachineConfigurationResponse {
  /// Describes the resource range.
  final pulumi.Input<ResourceRangeResponse>? memory;
  /// Describes the resource range.
  final pulumi.Input<ResourceRangeResponse>? vCPUs;

  /// Creates a new [RecommendedMachineConfigurationResponse].
  /// [memory] Describes the resource range.
  /// [vCPUs] Describes the resource range.
  RecommendedMachineConfigurationResponse({
    this.memory,
    this.vCPUs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memory': ?pulumi.Input.mapOptionalInputValue<ResourceRangeResponse, Map<String, dynamic>>(memory, (value) => value.toMap()),
      'vCPUs': ?pulumi.Input.mapOptionalInputValue<ResourceRangeResponse, Map<String, dynamic>>(vCPUs, (value) => value.toMap()),
    };
  }

  factory RecommendedMachineConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return RecommendedMachineConfigurationResponse(
      memory: map['memory'] == null ? null : (ResourceRangeResponse.fromMap((map['memory']! as Map).cast<String, dynamic>())).input(),
      vCPUs: map['vCPUs'] == null ? null : (ResourceRangeResponse.fromMap((map['vCPUs']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

