// ignore_for_file: unused_element, unnecessary_cast


/// Elastic traffic filter rule object
class ElasticTrafficFilterRuleResponse {
  /// Guid of Private Endpoint in the elastic filter rule
  final String? azureEndpointGuid;
  /// Name of the Private Endpoint in the elastic filter rule
  final String? azureEndpointName;
  /// Description of the elastic filter rule
  final String? description;
  /// Id of the elastic filter rule
  final String? id;
  /// IP of the elastic filter rule
  final String? source;

  /// Creates a new [ElasticTrafficFilterRuleResponse].
  /// [azureEndpointGuid] Guid of Private Endpoint in the elastic filter rule
  /// [azureEndpointName] Name of the Private Endpoint in the elastic filter rule
  /// [description] Description of the elastic filter rule
  /// [id] Id of the elastic filter rule
  /// [source] IP of the elastic filter rule
  ElasticTrafficFilterRuleResponse({
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
      azureEndpointGuid: map['azureEndpointGuid'] == null ? null : map['azureEndpointGuid'] as String,
      azureEndpointName: map['azureEndpointName'] == null ? null : map['azureEndpointName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}

