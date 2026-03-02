// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_traffic_filter_rule_response.dart';

/// Elastic traffic filter object
class ElasticTrafficFilterResponse {
  /// Description of the elastic filter
  final pulumi.Input<String>? description;
  /// Id of the elastic filter
  final pulumi.Input<String>? id;
  /// IncludeByDefault for the elastic filter
  final pulumi.Input<bool>? includeByDefault;
  /// Name of the elastic filter
  final pulumi.Input<String>? name;
  /// Region of the elastic filter
  final pulumi.Input<String>? region;
  /// Rules in the elastic filter
  final pulumi.Input<List<ElasticTrafficFilterRuleResponse>>? rules;
  /// Type of the elastic filter
  final pulumi.Input<String>? type;

  /// Creates a new [ElasticTrafficFilterResponse].
  /// [description] Description of the elastic filter
  /// [id] Id of the elastic filter
  /// [includeByDefault] IncludeByDefault for the elastic filter
  /// [name] Name of the elastic filter
  /// [region] Region of the elastic filter
  /// [rules] Rules in the elastic filter
  /// [type] Type of the elastic filter
  ElasticTrafficFilterResponse({
    this.description,
    this.id,
    this.includeByDefault,
    this.name,
    this.region,
    this.rules,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'includeByDefault': ?includeByDefault,
      'name': ?name,
      'region': ?region,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ElasticTrafficFilterRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ElasticTrafficFilterRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory ElasticTrafficFilterResponse.fromMap(Map<String, dynamic> map) {
    return ElasticTrafficFilterResponse(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      includeByDefault: map['includeByDefault'] == null ? null : (map['includeByDefault']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<ElasticTrafficFilterRuleResponse>(map['rules']!, (value) => ElasticTrafficFilterRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

