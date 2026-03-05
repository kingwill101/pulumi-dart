// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_service_agent_pool_size_properties.dart';

/// Build service agent pool properties
class BuildServiceAgentPoolProperties {
  /// build service agent pool size properties
  final pulumi.Input<BuildServiceAgentPoolSizeProperties>? poolSize;

  /// Creates a new [BuildServiceAgentPoolProperties].
  /// [poolSize] build service agent pool size properties
  BuildServiceAgentPoolProperties({
    this.poolSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'poolSize': ?pulumi.Input.mapOptionalInputValue<BuildServiceAgentPoolSizeProperties, Map<String, dynamic>>(poolSize, (value) => value.toMap()),
    };
  }

  factory BuildServiceAgentPoolProperties.fromMap(Map<String, dynamic> map) {
    return BuildServiceAgentPoolProperties(
      poolSize: (() { final guardedValue = map['poolSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildServiceAgentPoolSizeProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

