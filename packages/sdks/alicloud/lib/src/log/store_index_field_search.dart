// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'store_index_field_search_json_key.dart';

class StoreIndexFieldSearch {
  /// The alias of one field.
  final pulumi.Input<String>? alias;
  /// Whether the case sensitive for the field. Default to false. It is valid when "type" is "text" or "json".
  final pulumi.Input<bool>? caseSensitive;
  /// Whether to enable field analytics. Default to true.
  final pulumi.Input<bool>? enableAnalytics;
  /// Whether includes the chinese for the field. Default to false. It is valid when "type" is "text" or "json".
  final pulumi.Input<bool>? includeChinese;
  /// Use nested index when type is json. See `json_keys` below.
  final pulumi.Input<List<StoreIndexFieldSearchJsonKey>>? jsonKeys;
  /// When using the json_keys field, this field is required.
  final pulumi.Input<String> name;
  /// The string of several split words, like "\r", "#". It is valid when "type" is "text" or "json".
  final pulumi.Input<String>? token;
  /// The type of one field. Valid values: ["long", "text", "double"]. Default to "long"
  final pulumi.Input<String>? type;

  /// Creates a new [StoreIndexFieldSearch].
  /// [alias] The alias of one field.
  /// [caseSensitive] Whether the case sensitive for the field. Default to false. It is valid when "type" is "text" or "json".
  /// [enableAnalytics] Whether to enable field analytics. Default to true.
  /// [includeChinese] Whether includes the chinese for the field. Default to false. It is valid when "type" is "text" or "json".
  /// [jsonKeys] Use nested index when type is json. See `json_keys` below.
  /// [name] When using the json_keys field, this field is required.
  /// [token] The string of several split words, like "\r", "#". It is valid when "type" is "text" or "json".
  /// [type] The type of one field. Valid values: ["long", "text", "double"]. Default to "long"
  StoreIndexFieldSearch({
    this.alias,
    this.caseSensitive,
    this.enableAnalytics,
    this.includeChinese,
    this.jsonKeys,
    required this.name,
    this.token,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'caseSensitive': ?caseSensitive,
      'enableAnalytics': ?enableAnalytics,
      'includeChinese': ?includeChinese,
      'jsonKeys': ?pulumi.Input.mapOptionalInputValue<List<StoreIndexFieldSearchJsonKey>, List<Map<String, dynamic>>>(jsonKeys, (value) => pulumi.Input.encodeList<StoreIndexFieldSearchJsonKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'token': ?token,
      'type': ?type,
    };
  }

  factory StoreIndexFieldSearch.fromMap(Map<String, dynamic> map) {
    return StoreIndexFieldSearch(
      alias: map['alias'] == null ? null : (map['alias']! as String).input(),
      caseSensitive: map['caseSensitive'] == null ? null : (map['caseSensitive']! as bool).input(),
      enableAnalytics: map['enableAnalytics'] == null ? null : (map['enableAnalytics']! as bool).input(),
      includeChinese: map['includeChinese'] == null ? null : (map['includeChinese']! as bool).input(),
      jsonKeys: map['jsonKeys'] == null ? null : (pulumi.Input.decodeList<StoreIndexFieldSearchJsonKey>(map['jsonKeys']!, (value) => StoreIndexFieldSearchJsonKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      token: map['token'] == null ? null : (map['token']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

