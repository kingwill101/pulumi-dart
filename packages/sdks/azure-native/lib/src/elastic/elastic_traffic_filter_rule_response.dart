// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Elastic traffic filter rule object
class ElasticTrafficFilterRuleResponse {
  /// Guid of Private Endpoint in the elastic filter rule
  final pulumi.Input<String>? azureEndpointGuid;
  /// Name of the Private Endpoint in the elastic filter rule
  final pulumi.Input<String>? azureEndpointName;
  /// Description of the elastic filter rule
  final pulumi.Input<String>? description;
  /// Id of the elastic filter rule
  final pulumi.Input<String>? id;
  /// IP of the elastic filter rule
  final pulumi.Input<String>? source;

  /// Creates a new [ElasticTrafficFilterRuleResponse].
  /// [azureEndpointGuid] Guid of Private Endpoint in the elastic filter rule
  /// [azureEndpointName] Name of the Private Endpoint in the elastic filter rule
  /// [description] Description of the elastic filter rule
  /// [id] Id of the elastic filter rule
  /// [source] IP of the elastic filter rule
  const ElasticTrafficFilterRuleResponse({
    this.azureEndpointGuid,
    this.azureEndpointName,
    this.description,
    this.id,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureEndpointGuid': ?azureEndpointGuid,
      'azureEndpointName': ?azureEndpointName,
      'description': ?description,
      'id': ?id,
      'source': ?source,
    };
  }

  factory ElasticTrafficFilterRuleResponse.fromMap(Map<String, dynamic> map) {
    return ElasticTrafficFilterRuleResponse(
      azureEndpointGuid: (() { final guardedValue = map['azureEndpointGuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureEndpointName: (() { final guardedValue = map['azureEndpointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

