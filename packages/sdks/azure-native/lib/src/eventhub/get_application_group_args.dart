// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_application_group_args_doc}
/// Arguments for getApplicationGroup.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_application_group_args_doc}
class GetApplicationGroupArgs {
  /// The Application Group name
  final pulumi.Input<String> applicationGroupName;

  /// The Namespace name
  final pulumi.Input<String> namespaceName;

  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApplicationGroupArgs].
  /// [applicationGroupName] The Application Group name
  /// [namespaceName] The Namespace name
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  GetApplicationGroupArgs({
    required this.applicationGroupName,
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGroupName': applicationGroupName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApplicationGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationGroupArgs(
      applicationGroupName: pulumi.Input.fromValue(
        map['applicationGroupName'] as String,
      ),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
