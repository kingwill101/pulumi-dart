// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_get_windows_web_app_get_windows_web_app_args_doc}
/// Arguments for getWindowsWebApp.
/// {@endtemplate}
/// {@macro pulumi_appservice_get_windows_web_app_get_windows_web_app_args_doc}
class GetWindowsWebAppArgs {
  /// The name of this Windows Web App.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Windows Web App exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWindowsWebAppArgs].
  /// [name] The name of this Windows Web App.
  /// [resourceGroupName] The name of the Resource Group where the Windows Web App exists.
  GetWindowsWebAppArgs({
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

  factory GetWindowsWebAppArgs.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

