// ignore_for_file: unused_element, unnecessary_cast


class CollectorBodyAgentSpnPropertiesResponse {
  /// Application/client Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  final String? applicationId;
  /// Intended audience for the service principal.
  final String? audience;
  /// AAD Authority URL which was used to request the token for the service principal.
  final String? authority;
  /// Object Id of the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  final String? objectId;
  /// Tenant Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  final String? tenantId;

  /// Creates a new [CollectorBodyAgentSpnPropertiesResponse].
  /// [applicationId] Application/client Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  /// [audience] Intended audience for the service principal.
  /// [authority] AAD Authority URL which was used to request the token for the service principal.
  /// [objectId] Object Id of the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  /// [tenantId] Tenant Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  CollectorBodyAgentSpnPropertiesResponse({
    this.applicationId,
    this.audience,
    this.authority,
    this.objectId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'audience': ?audience,
      'authority': ?authority,
      'objectId': ?objectId,
      'tenantId': ?tenantId,
    };
  }

  factory CollectorBodyAgentSpnPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CollectorBodyAgentSpnPropertiesResponse(
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      audience: map['audience'] == null ? null : map['audience'] as String,
      authority: map['authority'] == null ? null : map['authority'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

