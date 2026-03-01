// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentsByOpenaiApiKeyAgentFunction {
  /// API Key value
  final String? apiKey;
  /// Created At timestamp for the Function
  final String createdAt;
  /// Description of the Function
  final String? description;
  /// Name of function
  final String? faasname;
  /// Namespace of function
  final String? faasnamespace;
  /// Guardrail UUID for the Function
  final String? guardrailUuid;
  /// Name of function
  final String? name;
  /// Updated At timestamp for the Agent
  final String updatedAt;
  /// Url of the Deployment
  final String? url;
  /// API Key value
  final String? uuid;

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyAgentFunction].
  /// [apiKey] API Key value
  /// [createdAt] Created At timestamp for the Function
  /// [description] Description of the Function
  /// [faasname] Name of function
  /// [faasnamespace] Namespace of function
  /// [guardrailUuid] Guardrail UUID for the Function
  /// [name] Name of function
  /// [updatedAt] Updated At timestamp for the Agent
  /// [url] Url of the Deployment
  /// [uuid] API Key value
  GetGradientaiAgentsByOpenaiApiKeyAgentFunction({
    this.apiKey,
    required this.createdAt,
    this.description,
    this.faasname,
    this.faasnamespace,
    this.guardrailUuid,
    this.name,
    required this.updatedAt,
    this.url,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'createdAt': createdAt,
      'description': ?description,
      'faasname': ?faasname,
      'faasnamespace': ?faasnamespace,
      'guardrailUuid': ?guardrailUuid,
      'name': ?name,
      'updatedAt': updatedAt,
      'url': ?url,
      'uuid': ?uuid,
    };
  }

  factory GetGradientaiAgentsByOpenaiApiKeyAgentFunction.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsByOpenaiApiKeyAgentFunction(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
      createdAt: map['createdAt'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      faasname: map['faasname'] == null ? null : map['faasname'] as String,
      faasnamespace: map['faasnamespace'] == null ? null : map['faasnamespace'] as String,
      guardrailUuid: map['guardrailUuid'] == null ? null : map['guardrailUuid'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      updatedAt: map['updatedAt'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
    );
  }
}

