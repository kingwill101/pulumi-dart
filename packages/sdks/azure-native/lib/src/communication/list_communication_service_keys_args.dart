// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_list_communication_service_keys_args_doc}
/// Arguments for listCommunicationServiceKeys.
/// {@endtemplate}
/// {@macro pulumi_communication_list_communication_service_keys_args_doc}
class ListCommunicationServiceKeysArgs {
  /// The name of the CommunicationService resource.
  final pulumi.Input<String> communicationServiceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListCommunicationServiceKeysArgs].
  /// [communicationServiceName] The name of the CommunicationService resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListCommunicationServiceKeysArgs({
    required this.communicationServiceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communicationServiceName': communicationServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListCommunicationServiceKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListCommunicationServiceKeysArgs(
      communicationServiceName: pulumi.Input.fromValue(map['communicationServiceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
