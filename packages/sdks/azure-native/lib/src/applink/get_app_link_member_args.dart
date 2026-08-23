// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_applink_get_app_link_member_args_doc}
/// Arguments for getAppLinkMember.
/// {@endtemplate}
/// {@macro pulumi_applink_get_app_link_member_args_doc}
class GetAppLinkMemberArgs {
  /// The name of the AppLinkMember
  final pulumi.Input<String> appLinkMemberName;
  /// The name of the AppLink
  final pulumi.Input<String> appLinkName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAppLinkMemberArgs].
  /// [appLinkMemberName] The name of the AppLinkMember
  /// [appLinkName] The name of the AppLink
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAppLinkMemberArgs({
    required this.appLinkMemberName,
    required this.appLinkName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLinkMemberName': appLinkMemberName,
      'appLinkName': appLinkName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAppLinkMemberArgs.fromMap(Map<String, dynamic> map) {
    return GetAppLinkMemberArgs(
      appLinkMemberName: pulumi.Input.fromValue(map['appLinkMemberName'] as String),
      appLinkName: pulumi.Input.fromValue(map['appLinkName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
