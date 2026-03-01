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
    required String applicationGroupName,
    required String namespaceName,
    required String resourceGroupName,
  }) :
      applicationGroupName = pulumi.Input.asInput<String>(applicationGroupName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGroupName': applicationGroupName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApplicationGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationGroupArgs(
      applicationGroupName: map['applicationGroupName'] as String,
      namespaceName: map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

