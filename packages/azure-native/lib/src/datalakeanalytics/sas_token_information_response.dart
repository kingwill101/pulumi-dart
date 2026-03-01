// ignore_for_file: unused_element, unnecessary_cast


/// SAS token information.
class SasTokenInformationResponse {
  /// The access token for the associated Azure Storage Container.
  final String accessToken;

  /// Creates a new [SasTokenInformationResponse].
  /// [accessToken] The access token for the associated Azure Storage Container.
  SasTokenInformationResponse({
    required this.accessToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
    };
  }

  factory SasTokenInformationResponse.fromMap(Map<String, dynamic> map) {
    return SasTokenInformationResponse(
      accessToken: map['accessToken'] as String,
    );
  }
}

