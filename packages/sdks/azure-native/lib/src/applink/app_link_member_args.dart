// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_link_member_properties.dart';

/// {@template pulumi_applink_app_link_member_args_doc}
/// The set of arguments for AppLinkMember.
/// {@endtemplate}
/// {@macro pulumi_applink_app_link_member_args_doc}
class AppLinkMemberArgs {
  /// The name of the AppLinkMember
  final pulumi.Input<String>? appLinkMemberName;
  /// The name of the AppLink
  final pulumi.Input<String> appLinkName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<AppLinkMemberProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AppLinkMemberArgs].
  /// [appLinkMemberName] The name of the AppLinkMember
  /// [appLinkName] The name of the AppLink
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const AppLinkMemberArgs({
    this.appLinkMemberName,
    required this.appLinkName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLinkMemberName': ?appLinkMemberName,
      'appLinkName': appLinkName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<AppLinkMemberProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AppLinkMemberArgs.fromMap(Map<String, dynamic> map) {
    return AppLinkMemberArgs(
      appLinkMemberName: (() { final guardedValue = map['appLinkMemberName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appLinkName: pulumi.Input.fromValue(map['appLinkName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppLinkMemberProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
