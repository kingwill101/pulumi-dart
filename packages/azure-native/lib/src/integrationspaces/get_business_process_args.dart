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
    required String applicationName,
    required String businessProcessName,
    required String resourceGroupName,
    required String spaceName,
  }) :
      applicationName = pulumi.Input.asInput<String>(applicationName),
      businessProcessName = pulumi.Input.asInput<String>(businessProcessName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      spaceName = pulumi.Input.asInput<String>(spaceName);

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
      applicationName: map['applicationName'] as String,
      businessProcessName: map['businessProcessName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      spaceName: map['spaceName'] as String,
    );
  }
}

