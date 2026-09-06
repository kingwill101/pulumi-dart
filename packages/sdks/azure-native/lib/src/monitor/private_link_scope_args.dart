// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_mode_settings.dart';

/// {@template pulumi_monitor_private_link_scope_args_doc}
/// The set of arguments for PrivateLinkScope.
/// {@endtemplate}
/// {@macro pulumi_monitor_private_link_scope_args_doc}
class PrivateLinkScopeArgs {
  /// Access mode settings
  final pulumi.Input<AccessModeSettings> accessModeSettings;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure Monitor PrivateLinkScope resource.
  final pulumi.Input<String?>? scopeName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [PrivateLinkScopeArgs].
  /// [accessModeSettings] Access mode settings
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scopeName] The name of the Azure Monitor PrivateLinkScope resource.
  /// [tags] Resource tags.
  const PrivateLinkScopeArgs({
    required this.accessModeSettings,
    this.location,
    required this.resourceGroupName,
    this.scopeName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessModeSettings': pulumi.Input.mapInputValue<AccessModeSettings, Map<String, dynamic>>(accessModeSettings, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'scopeName': ?scopeName,
      'tags': ?tags,
    };
  }

  factory PrivateLinkScopeArgs.fromMap(Map<String, dynamic> map) {
    return PrivateLinkScopeArgs(
      accessModeSettings: pulumi.Input.fromValue(AccessModeSettings.fromMap((map['accessModeSettings']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scopeName: (() { final guardedValue = map['scopeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
