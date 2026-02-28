// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_grant_permission.dart';

/// {@template pulumi_index_plugin_plugin_args_doc}
/// The set of arguments for Plugin.
/// {@endtemplate}
/// {@macro pulumi_index_plugin_plugin_args_doc}
class PluginArgs {
  /// Docker Plugin alias
  final pulumi.Input<String>? alias;
  /// HTTP client timeout to enable the plugin
  final pulumi.Input<int>? enableTimeout;
  /// If `true` the plugin is enabled. Defaults to `true`
  final pulumi.Input<bool>? enabled;
  /// The environment variables in the form of `KEY=VALUE`, e.g. `DEBUG=0`
  final pulumi.Input<List<String>>? envs;
  /// If true, then the plugin is destroyed forcibly
  final pulumi.Input<bool>? forceDestroy;
  /// If true, then the plugin is disabled forcibly
  final pulumi.Input<bool>? forceDisable;
  /// If true, grant all permissions necessary to run the plugin
  final pulumi.Input<bool>? grantAllPermissions;
  /// Grant specific permissions only
  final pulumi.Input<List<PluginGrantPermission>>? grantPermissions;
  /// Docker Plugin name
  final pulumi.Input<String>? name;

  /// Creates a new [PluginArgs].
  /// [alias] Docker Plugin alias
  /// [enableTimeout] HTTP client timeout to enable the plugin
  /// [enabled] If `true` the plugin is enabled. Defaults to `true`
  /// [envs] The environment variables in the form of `KEY=VALUE`, e.g. `DEBUG=0`
  /// [forceDestroy] If true, then the plugin is destroyed forcibly
  /// [forceDisable] If true, then the plugin is disabled forcibly
  /// [grantAllPermissions] If true, grant all permissions necessary to run the plugin
  /// [grantPermissions] Grant specific permissions only
  /// [name] Docker Plugin name
  PluginArgs({
    String? alias,
    int? enableTimeout,
    bool? enabled,
    List<String>? envs,
    bool? forceDestroy,
    bool? forceDisable,
    bool? grantAllPermissions,
    List<PluginGrantPermission>? grantPermissions,
    String? name,
  }) :
      alias = pulumi.Input.asOptionalInput<String>(alias),
      enableTimeout = pulumi.Input.asOptionalInput<int>(enableTimeout),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      envs = pulumi.Input.asOptionalInput<List<String>>(envs),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      forceDisable = pulumi.Input.asOptionalInput<bool>(forceDisable),
      grantAllPermissions = pulumi.Input.asOptionalInput<bool>(grantAllPermissions),
      grantPermissions = pulumi.Input.asOptionalInput<List<PluginGrantPermission>>(grantPermissions),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'enableTimeout': ?enableTimeout,
      'enabled': ?enabled,
      'envs': ?envs,
      'forceDestroy': ?forceDestroy,
      'forceDisable': ?forceDisable,
      'grantAllPermissions': ?grantAllPermissions,
      'grantPermissions': ?pulumi.Input.mapOptionalInputValue<List<PluginGrantPermission>, List<Map<String, dynamic>>>(grantPermissions, (value) => pulumi.Input.encodeList<PluginGrantPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory PluginArgs.fromMap(Map<String, dynamic> map) {
    return PluginArgs(
      alias: map['alias'] == null ? null : map['alias'] as String,
      enableTimeout: map['enableTimeout'] == null ? null : map['enableTimeout'] as int,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      envs: map['envs'] == null ? null : (map['envs'] as List).cast<String>(),
      forceDestroy: map['forceDestroy'] == null ? null : map['forceDestroy'] as bool,
      forceDisable: map['forceDisable'] == null ? null : map['forceDisable'] as bool,
      grantAllPermissions: map['grantAllPermissions'] == null ? null : map['grantAllPermissions'] as bool,
      grantPermissions: map['grantPermissions'] == null ? null : pulumi.Input.decodeList<PluginGrantPermission>(map['grantPermissions'], (value) => PluginGrantPermission.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

