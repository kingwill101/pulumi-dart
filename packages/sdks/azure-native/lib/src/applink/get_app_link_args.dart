// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_applink_get_app_link_args_doc}
/// Arguments for getAppLink.
/// {@endtemplate}
/// {@macro pulumi_applink_get_app_link_args_doc}
class GetAppLinkArgs {
  /// The name of the AppLink
  final pulumi.Input<String> appLinkName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAppLinkArgs].
  /// [appLinkName] The name of the AppLink
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAppLinkArgs({
    required this.appLinkName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLinkName': appLinkName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAppLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetAppLinkArgs(
      appLinkName: pulumi.Input.fromValue(map['appLinkName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
