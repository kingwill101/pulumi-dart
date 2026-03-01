// ignore_for_file: unused_element, unnecessary_cast


/// Class for site properties.
class SiteSpnPropertiesResponse {
  /// Gets or sets the AAD Authority URL which was used to request the token for
  /// the
  /// service principal.
  final String? aadAuthority;
  /// Gets or sets the application/client Id for the service principal with which
  /// the
  /// on-premise management/data plane components would communicate
  /// with our Azure
  /// services.
  final String? applicationId;
  /// Gets or sets the intended audience for the service principal.
  final String? audience;
  /// Gets or sets the object Id of the service principal with which the on-premise
  ///
  /// management/data plane components would communicate with our Azure
  /// services.
  final String? objectId;
  /// Gets or sets the raw certificate data for building certificate expiry flows.
  final String? rawCertData;
  /// Gets or sets the tenant Id for the service principal with which the
  /// on-premise
  /// management/data plane components would communicate with
  /// our Azure services.
  final String? tenantId;

  /// Creates a new [SiteSpnPropertiesResponse].
  /// [aadAuthority] Gets or sets the AAD Authority URL which was used to request the token for
  /// [applicationId] Gets or sets the application/client Id for the service principal with which
  /// [audience] Gets or sets the intended audience for the service principal.
  /// [objectId] Gets or sets the object Id of the service principal with which the on-premise
  /// [rawCertData] Gets or sets the raw certificate data for building certificate expiry flows.
  /// [tenantId] Gets or sets the tenant Id for the service principal with which the
  SiteSpnPropertiesResponse({
    this.aadAuthority,
    this.applicationId,
    this.audience,
    this.objectId,
    this.rawCertData,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthority': ?aadAuthority,
      'applicationId': ?applicationId,
      'audience': ?audience,
      'objectId': ?objectId,
      'rawCertData': ?rawCertData,
      'tenantId': ?tenantId,
    };
  }

  factory SiteSpnPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SiteSpnPropertiesResponse(
      aadAuthority: map['aadAuthority'] == null ? null : map['aadAuthority'] as String,
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      audience: map['audience'] == null ? null : map['audience'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      rawCertData: map['rawCertData'] == null ? null : map['rawCertData'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

