// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_sync_function_triggers_args_doc}
/// Arguments for listWebAppSyncFunctionTriggers.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_sync_function_triggers_args_doc}
class ListWebAppSyncFunctionTriggersArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListWebAppSyncFunctionTriggersArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  ListWebAppSyncFunctionTriggersArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListWebAppSyncFunctionTriggersArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppSyncFunctionTriggersArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

