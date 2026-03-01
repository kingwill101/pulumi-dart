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
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure Monitor PrivateLinkScope resource.
  final pulumi.Input<String>? scopeName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PrivateLinkScopeArgs].
  /// [accessModeSettings] Access mode settings
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scopeName] The name of the Azure Monitor PrivateLinkScope resource.
  /// [tags] Resource tags.
  PrivateLinkScopeArgs({
    required AccessModeSettings accessModeSettings,
    String? location,
    required String resourceGroupName,
    String? scopeName,
    Map<String, String>? tags,
  }) :
      accessModeSettings = pulumi.Input.asInput<AccessModeSettings>(accessModeSettings),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scopeName = pulumi.Input.asOptionalInput<String>(scopeName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      accessModeSettings: AccessModeSettings.fromMap((map['accessModeSettings'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scopeName: map['scopeName'] == null ? null : map['scopeName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

