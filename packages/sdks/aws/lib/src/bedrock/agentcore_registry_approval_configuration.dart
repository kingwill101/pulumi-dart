// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreRegistryApprovalConfiguration {
  final pulumi.Input<bool> autoApproval;

  /// Creates a new [AgentcoreRegistryApprovalConfiguration].
  /// [autoApproval] Required.
  const AgentcoreRegistryApprovalConfiguration({
    required this.autoApproval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoApproval': autoApproval,
    };
  }

  factory AgentcoreRegistryApprovalConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreRegistryApprovalConfiguration(
      autoApproval: pulumi.Input.fromValue(map['autoApproval'] as bool),
    );
  }
}
