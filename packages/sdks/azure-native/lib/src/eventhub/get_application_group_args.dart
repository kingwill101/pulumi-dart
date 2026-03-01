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
    required pulumi.Output<String> applicationGroupName,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
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
      applicationGroupName: pulumi.Output.create<String>(map['applicationGroupName'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

