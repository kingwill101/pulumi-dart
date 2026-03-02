// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_get_communication_service_args_doc}
/// Arguments for getCommunicationService.
/// {@endtemplate}
/// {@macro pulumi_communication_get_communication_service_args_doc}
class GetCommunicationServiceArgs {
  /// The name of the CommunicationService resource.
  final pulumi.Input<String> communicationServiceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCommunicationServiceArgs].
  /// [communicationServiceName] The name of the CommunicationService resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCommunicationServiceArgs({
    required this.communicationServiceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communicationServiceName': communicationServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCommunicationServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetCommunicationServiceArgs(
      communicationServiceName: (map['communicationServiceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

