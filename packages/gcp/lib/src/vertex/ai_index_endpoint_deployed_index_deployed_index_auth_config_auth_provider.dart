// ignore_for_file: unused_element, unnecessary_cast

class AiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProvider {
  /// A list of allowed JWT issuers. Each entry must be a valid Google service account, in the following format: service-account-name@project-id.iam.gserviceaccount.com
  final List<String>? allowedIssuers;

  /// The list of JWT audiences. that are allowed to access. A JWT containing any of these audiences will be accepted.
  final List<String>? audiences;

  /// Creates a new [AiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProvider].
  /// [allowedIssuers] A list of allowed JWT issuers. Each entry must be a valid Google service account, in the following format: service-account-name@project-id.iam.gserviceaccount.com
  /// [audiences] The list of JWT audiences. that are allowed to access. A JWT containing any of these audiences will be accepted.
  AiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProvider({
    this.allowedIssuers,
    this.audiences,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedIssuersValue = allowedIssuers;
    if (allowedIssuersValue != null) {
      map['allowedIssuers'] = allowedIssuersValue;
    }
    final audiencesValue = audiences;
    if (audiencesValue != null) {
      map['audiences'] = audiencesValue;
    }
    return map;
  }

  factory AiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProvider.fromMap(
      Map<String, dynamic> map) {
    return AiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProvider(
      allowedIssuers: map['allowedIssuers'] == null
          ? null
          : (map['allowedIssuers'] as List).cast<String>(),
      audiences: map['audiences'] == null
          ? null
          : (map['audiences'] as List).cast<String>(),
    );
  }
}
