// ignore_for_file: unused_element, unnecessary_cast

class AiEndpointDeployedModelPrivateEndpoint {
  /// (Output)
  /// Output only. Http(s) path to send explain requests.
  final String? explainHttpUri;

  /// (Output)
  /// Output only. Http(s) path to send health check requests.
  final String? healthHttpUri;

  /// (Output)
  /// Output only. Http(s) path to send prediction requests.
  final String? predictHttpUri;

  /// (Output)
  /// Output only. The name of the service attachment resource. Populated if private service connect is enabled.
  final String? serviceAttachment;

  /// Creates a new [AiEndpointDeployedModelPrivateEndpoint].
  /// [explainHttpUri] (Output)
  /// [healthHttpUri] (Output)
  /// [predictHttpUri] (Output)
  /// [serviceAttachment] (Output)
  AiEndpointDeployedModelPrivateEndpoint({
    this.explainHttpUri,
    this.healthHttpUri,
    this.predictHttpUri,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final explainHttpUriValue = explainHttpUri;
    if (explainHttpUriValue != null) {
      map['explainHttpUri'] = explainHttpUriValue;
    }
    final healthHttpUriValue = healthHttpUri;
    if (healthHttpUriValue != null) {
      map['healthHttpUri'] = healthHttpUriValue;
    }
    final predictHttpUriValue = predictHttpUri;
    if (predictHttpUriValue != null) {
      map['predictHttpUri'] = predictHttpUriValue;
    }
    final serviceAttachmentValue = serviceAttachment;
    if (serviceAttachmentValue != null) {
      map['serviceAttachment'] = serviceAttachmentValue;
    }
    return map;
  }

  factory AiEndpointDeployedModelPrivateEndpoint.fromMap(
      Map<String, dynamic> map) {
    return AiEndpointDeployedModelPrivateEndpoint(
      explainHttpUri: map['explainHttpUri'] == null
          ? null
          : map['explainHttpUri'] as String,
      healthHttpUri:
          map['healthHttpUri'] == null ? null : map['healthHttpUri'] as String,
      predictHttpUri: map['predictHttpUri'] == null
          ? null
          : map['predictHttpUri'] as String,
      serviceAttachment: map['serviceAttachment'] == null
          ? null
          : map['serviceAttachment'] as String,
    );
  }
}
