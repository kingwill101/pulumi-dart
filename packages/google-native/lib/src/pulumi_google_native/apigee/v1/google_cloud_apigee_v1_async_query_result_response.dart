// ignore_for_file: unused_element, unnecessary_cast

class GoogleCloudApigeeV1AsyncQueryResultResponse {
  /// Query result will be unaccessable after this time.
  final String expires;

  /// Self link of the query results. Example: `/organizations/myorg/environments/myenv/queries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd/result` or following format if query is running at host level: `/organizations/myorg/hostQueries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd/result`
  final String self;

  GoogleCloudApigeeV1AsyncQueryResultResponse({
    required this.expires,
    required this.self,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expires'] = expires;
    map['self'] = self;
    return map;
  }

  factory GoogleCloudApigeeV1AsyncQueryResultResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1AsyncQueryResultResponse(
      expires: map['expires'] as String,
      self: map['self'] as String,
    );
  }
}
