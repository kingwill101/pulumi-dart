// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration {
  /// Whether the job has a public IP address.
  final pulumi.Input<bool> assignPublicIp;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration].
  /// [assignPublicIp] Whether the job has a public IP address.
  const GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration({
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
