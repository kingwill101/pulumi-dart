// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration {
  /// Indicates whether the job has a public IP address.
  final pulumi.Input<bool> assignPublicIp;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration].
  /// [assignPublicIp] Indicates whether the job has a public IP address.
  GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration({
    required this.assignPublicIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignPublicIp': assignPublicIp,
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration(
      assignPublicIp: pulumi.Input.fromValue(map['assignPublicIp'] as bool),
    );
  }
}

