// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOfferAccessToken.
class GetOfferAccessTokenResult {
  /// The access token.
  final String accessToken;
  /// The disk id.
  final String? diskId;
  /// The access token creation status.
  final String? status;

  /// Creates a new [GetOfferAccessTokenResult].
  /// [accessToken] The access token.
  /// [diskId] The disk id.
  /// [status] The access token creation status.
  GetOfferAccessTokenResult({
    required this.accessToken,
    this.diskId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
      'diskId': ?diskId,
      'status': ?status,
    };
  }

  factory GetOfferAccessTokenResult.fromMap(Map<String, dynamic> map) {
    return GetOfferAccessTokenResult(
      accessToken: map['accessToken'] as String,
      diskId: map['diskId'] == null ? null : map['diskId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

