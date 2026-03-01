// ignore_for_file: unused_element, unnecessary_cast


/// A Facebook page for Facebook channel registration
class FacebookPageResponse {
  /// Facebook application access token. Value only returned through POST to the action Channel List API, otherwise empty.
  final String? accessToken;
  /// Page id
  final String id;

  /// Creates a new [FacebookPageResponse].
  /// [accessToken] Facebook application access token. Value only returned through POST to the action Channel List API, otherwise empty.
  /// [id] Page id
  FacebookPageResponse({
    this.accessToken,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'id': id,
    };
  }

  factory FacebookPageResponse.fromMap(Map<String, dynamic> map) {
    return FacebookPageResponse(
      accessToken: map['accessToken'] == null ? null : map['accessToken'] as String,
      id: map['id'] as String,
    );
  }
}

