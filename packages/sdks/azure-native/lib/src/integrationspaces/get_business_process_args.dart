// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrationspaces_get_business_process_args_doc}
/// Arguments for getBusinessProcess.
/// {@endtemplate}
/// {@macro pulumi_integrationspaces_get_business_process_args_doc}
class GetBusinessProcessArgs {
  /// The name of the Application
  final pulumi.Input<String> applicationName;
  /// The name of the business process
  final pulumi.Input<String> businessProcessName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the space
  final pulumi.Input<String> spaceName;

  /// Creates a new [GetBusinessProcessArgs].
  /// [applicationName] The name of the Application
  /// [businessProcessName] The name of the business process
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [spaceName] The name of the space
  GetBusinessProcessArgs({
    required this.applicationName,
    required this.businessProcessName,
    required this.resourceGroupName,
    required this.spaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'businessProcessName': businessProcessName,
      'resourceGroupName': resourceGroupName,
      'spaceName': spaceName,
    };
  }

  factory GetBusinessProcessArgs.fromMap(Map<String, dynamic> map) {
    return GetBusinessProcessArgs(
      applicationName: (map['applicationName'] as String).input(),
      businessProcessName: (map['businessProcessName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      spaceName: (map['spaceName'] as String).input(),
    );
  }
}

