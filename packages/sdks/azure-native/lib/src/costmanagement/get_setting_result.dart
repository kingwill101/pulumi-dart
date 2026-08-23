// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings_properties_response_cache.dart';

/// Result data returned by getSetting.
class GetSettingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Array of scopes with additional details used by Cost Management in the Azure portal.
  final List<SettingsPropertiesResponseCache>? cache;
  /// Resource Id.
  final String id;
  /// Resource kind.
  final String kind;
  /// Resource name.
  final String name;
  /// Sets the default scope the current user will see when they sign into Azure Cost Management in the Azure portal.
  final String scope;
  /// Indicates what scope Cost Management in the Azure portal should default to. Allowed values: LastUsed.
  final String? startOn;
  /// Resource type.
  final String type;

  /// Creates a new [GetSettingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cache] Array of scopes with additional details used by Cost Management in the Azure portal.
  /// [id] Resource Id.
  /// [kind] Resource kind.
  /// [name] Resource name.
  /// [scope] Sets the default scope the current user will see when they sign into Azure Cost Management in the Azure portal.
  /// [startOn] Indicates what scope Cost Management in the Azure portal should default to. Allowed values: LastUsed.
  /// [type] Resource type.
  const GetSettingResult({
    required this.azureApiVersion,
    this.cache,
    required this.id,
    required this.kind,
    required this.name,
    required this.scope,
    this.startOn,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'cache': ?(() { final guardedValue = cache; if (guardedValue == null) return null; return pulumi.Input.encodeList<SettingsPropertiesResponseCache, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'kind': kind,
      'name': name,
      'scope': scope,
      'startOn': ?startOn,
      'type': type,
    };
  }

  factory GetSettingResult.fromMap(Map<String, dynamic> map) {
    return GetSettingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      cache: (() { final guardedValue = map['cache']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SettingsPropertiesResponseCache>(guardedValue, (value) => SettingsPropertiesResponseCache.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      scope: map['scope'] as String,
      startOn: (() { final guardedValue = map['startOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}
