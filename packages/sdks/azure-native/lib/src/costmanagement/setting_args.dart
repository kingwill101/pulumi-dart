// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings_properties_cache.dart';

/// {@template pulumi_costmanagement_setting_args_doc}
/// The set of arguments for Setting.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_setting_args_doc}
class SettingArgs {
  /// Array of scopes with additional details used by Cost Management in the Azure portal.
  final pulumi.Input<List<SettingsPropertiesCache>?>? cache;
  /// Sets the default scope the current user will see when they sign into Azure Cost Management in the Azure portal.
  final pulumi.Input<String> scope;
  /// Name of the setting. Allowed values: myscope
  final pulumi.Input<String?>? settingName;
  /// Indicates what scope Cost Management in the Azure portal should default to. Allowed values: LastUsed.
  final pulumi.Input<String?>? startOn;

  /// Creates a new [SettingArgs].
  /// [cache] Array of scopes with additional details used by Cost Management in the Azure portal.
  /// [scope] Sets the default scope the current user will see when they sign into Azure Cost Management in the Azure portal.
  /// [settingName] Name of the setting. Allowed values: myscope
  /// [startOn] Indicates what scope Cost Management in the Azure portal should default to. Allowed values: LastUsed.
  const SettingArgs({
    this.cache,
    required this.scope,
    this.settingName,
    this.startOn,
  });

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
      cache: (() { final guardedValue = map['cache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SettingsPropertiesCache>(guardedValue, (value) => SettingsPropertiesCache.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      settingName: (() { final guardedValue = map['settingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startOn: (() { final guardedValue = map['startOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
