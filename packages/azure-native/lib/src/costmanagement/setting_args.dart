// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings_properties_cache.dart';

/// {@template pulumi_costmanagement_setting_args_doc}
/// The set of arguments for Setting.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_setting_args_doc}
class SettingArgs {
  /// Array of scopes with additional details used by Cost Management in the Azure portal.
  final pulumi.Input<List<SettingsPropertiesCache>>? cache;
  /// Sets the default scope the current user will see when they sign into Azure Cost Management in the Azure portal.
  final pulumi.Input<String> scope;
  /// Name of the setting. Allowed values: myscope
  final pulumi.Input<String>? settingName;
  /// Indicates what scope Cost Management in the Azure portal should default to. Allowed values: LastUsed.
  final pulumi.Input<String>? startOn;

  /// Creates a new [SettingArgs].
  /// [cache] Array of scopes with additional details used by Cost Management in the Azure portal.
  /// [scope] Sets the default scope the current user will see when they sign into Azure Cost Management in the Azure portal.
  /// [settingName] Name of the setting. Allowed values: myscope
  /// [startOn] Indicates what scope Cost Management in the Azure portal should default to. Allowed values: LastUsed.
  SettingArgs({
    List<SettingsPropertiesCache>? cache,
    required String scope,
    String? settingName,
    String? startOn,
  }) :
      cache = pulumi.Input.asOptionalInput<List<SettingsPropertiesCache>>(cache),
      scope = pulumi.Input.asInput<String>(scope),
      settingName = pulumi.Input.asOptionalInput<String>(settingName),
      startOn = pulumi.Input.asOptionalInput<String>(startOn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cache': ?pulumi.Input.mapOptionalInputValue<List<SettingsPropertiesCache>, List<Map<String, dynamic>>>(cache, (value) => pulumi.Input.encodeList<SettingsPropertiesCache, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scope': scope,
      'settingName': ?settingName,
      'startOn': ?startOn,
    };
  }

  factory SettingArgs.fromMap(Map<String, dynamic> map) {
    return SettingArgs(
      cache: map['cache'] == null ? null : pulumi.Input.decodeList<SettingsPropertiesCache>(map['cache'], (value) => SettingsPropertiesCache.fromMap((value as Map).cast<String, dynamic>())),
      scope: map['scope'] as String,
      settingName: map['settingName'] == null ? null : map['settingName'] as String,
      startOn: map['startOn'] == null ? null : map['startOn'] as String,
    );
  }
}

