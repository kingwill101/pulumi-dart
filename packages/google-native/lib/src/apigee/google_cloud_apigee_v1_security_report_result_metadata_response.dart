// ignore_for_file: unused_element, unnecessary_cast


/// Contains informations about the security report results.
class GoogleCloudApigeeV1SecurityReportResultMetadataResponse {
  /// Expire_time is set to 7 days after report creation. Query result will be unaccessable after this time. Example: "2021-05-04T13:38:52-07:00"
  final String expires;
  /// Self link of the query results. Example: `/organizations/myorg/environments/myenv/securityReports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd/result` or following format if query is running at host level: `/organizations/myorg/hostSecurityReports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd/result`
  final String self;

  /// Creates a new [GoogleCloudApigeeV1SecurityReportResultMetadataResponse].
  /// [expires] Expire_time is set to 7 days after report creation. Query result will be unaccessable after this time. Example: "2021-05-04T13:38:52-07:00"
  /// [self] Self link of the query results. Example: `/organizations/myorg/environments/myenv/securityReports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd/result` or following format if query is running at host level: `/organizations/myorg/hostSecurityReports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd/result`
  GoogleCloudApigeeV1SecurityReportResultMetadataResponse({
    required this.expires,
    required this.self,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expires': expires,
      'self': self,
    };
  }

  factory GoogleCloudApigeeV1SecurityReportResultMetadataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1SecurityReportResultMetadataResponse(
      expires: map['expires'] as String,
      self: map['self'] as String,
    );
  }
}

