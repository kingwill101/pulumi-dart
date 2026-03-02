// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_service_agent_pool_size_properties_response.dart';

/// Build service agent pool properties
class BuildServiceAgentPoolPropertiesResponse {
  /// build service agent pool size properties
  final pulumi.Input<BuildServiceAgentPoolSizePropertiesResponse>? poolSize;
  /// Provisioning state of the build service agent pool
  final pulumi.Input<String> provisioningState;

  /// Creates a new [BuildServiceAgentPoolPropertiesResponse].
  /// [poolSize] build service agent pool size properties
  /// [provisioningState] Provisioning state of the build service agent pool
  BuildServiceAgentPoolPropertiesResponse({
    this.poolSize,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'poolSize': ?pulumi.Input.mapOptionalInputValue<BuildServiceAgentPoolSizePropertiesResponse, Map<String, dynamic>>(poolSize, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory BuildServiceAgentPoolPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BuildServiceAgentPoolPropertiesResponse(
      poolSize: map['poolSize'] == null ? null : (BuildServiceAgentPoolSizePropertiesResponse.fromMap((map['poolSize']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

