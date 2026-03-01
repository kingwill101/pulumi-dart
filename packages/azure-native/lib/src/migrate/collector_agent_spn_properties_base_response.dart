// ignore_for_file: unused_element, unnecessary_cast


/// Collector agent SPN details class.
class CollectorAgentSpnPropertiesBaseResponse {
  /// Gets the AAD application id.
  final String? applicationId;
  /// Gets the AAD audience url.
  final String? audience;
  /// Gets the AAD authority endpoint.
  final String? authority;
  /// Gets the object id of the AAD application.
  final String? objectId;
  /// Gets the tenant id of the AAD application.
  final String? tenantId;

  /// Creates a new [CollectorAgentSpnPropertiesBaseResponse].
  /// [applicationId] Gets the AAD application id.
  /// [audience] Gets the AAD audience url.
  /// [authority] Gets the AAD authority endpoint.
  /// [objectId] Gets the object id of the AAD application.
  /// [tenantId] Gets the tenant id of the AAD application.
  CollectorAgentSpnPropertiesBaseResponse({
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

  factory CollectorAgentSpnPropertiesBaseResponse.fromMap(Map<String, dynamic> map) {
    return CollectorAgentSpnPropertiesBaseResponse(
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      audience: map['audience'] == null ? null : map['audience'] as String,
      authority: map['authority'] == null ? null : map['authority'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

