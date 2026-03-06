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
  const ElasticTrafficFilterResponse({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeByDefault: (() { final guardedValue = map['includeByDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ElasticTrafficFilterRuleResponse>(guardedValue, (value) => ElasticTrafficFilterRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

