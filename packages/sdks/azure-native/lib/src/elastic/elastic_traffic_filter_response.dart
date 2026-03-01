// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_traffic_filter_rule_response.dart';

/// Elastic traffic filter object
class ElasticTrafficFilterResponse {
  /// Description of the elastic filter
  final String? description;
  /// Id of the elastic filter
  final String? id;
  /// IncludeByDefault for the elastic filter
  final bool? includeByDefault;
  /// Name of the elastic filter
  final String? name;
  /// Region of the elastic filter
  final String? region;
  /// Rules in the elastic filter
  final List<ElasticTrafficFilterRuleResponse>? rules;
  /// Type of the elastic filter
  final String? type;

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
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ElasticTrafficFilterRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory ElasticTrafficFilterResponse.fromMap(Map<String, dynamic> map) {
    return ElasticTrafficFilterResponse(
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      includeByDefault: map['includeByDefault'] == null ? null : map['includeByDefault'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ElasticTrafficFilterRuleResponse>(map['rules'], (value) => ElasticTrafficFilterRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

