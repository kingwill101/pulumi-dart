// ignore_for_file: unused_element, unnecessary_cast

/// Additional config for Apple for code flow.
class GoogleCloudIdentitytoolkitAdminV2CodeFlowConfigResponse {
  /// Key ID for the private key.
  final String keyId;

  /// Private key used for signing the client secret JWT.
  final String privateKey;

  /// Apple Developer Team ID.
  final String teamId;

  GoogleCloudIdentitytoolkitAdminV2CodeFlowConfigResponse({
    required this.keyId,
    required this.privateKey,
    required this.teamId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyId'] = keyId;
    map['privateKey'] = privateKey;
    map['teamId'] = teamId;
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2CodeFlowConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2CodeFlowConfigResponse(
      keyId: map['keyId'] as String,
      privateKey: map['privateKey'] as String,
      teamId: map['teamId'] as String,
    );
  }
}
