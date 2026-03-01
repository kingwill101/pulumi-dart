// ignore_for_file: unused_element, unnecessary_cast

import 'build_service_agent_pool_size_properties_response.dart';

/// Build service agent pool properties
class BuildServiceAgentPoolPropertiesResponse {
  /// build service agent pool size properties
  final BuildServiceAgentPoolSizePropertiesResponse? poolSize;
  /// Provisioning state of the build service agent pool
  final String provisioningState;

  /// Creates a new [BuildServiceAgentPoolPropertiesResponse].
  /// [poolSize] build service agent pool size properties
  /// [provisioningState] Provisioning state of the build service agent pool
  BuildServiceAgentPoolPropertiesResponse({
    this.poolSize,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'poolSize': ?poolSize == null ? null : poolSize!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory BuildServiceAgentPoolPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BuildServiceAgentPoolPropertiesResponse(
      poolSize: map['poolSize'] == null ? null : BuildServiceAgentPoolSizePropertiesResponse.fromMap((map['poolSize'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

