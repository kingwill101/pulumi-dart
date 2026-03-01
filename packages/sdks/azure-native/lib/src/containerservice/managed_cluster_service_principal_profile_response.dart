// ignore_for_file: unused_element, unnecessary_cast


/// Information about a service principal identity for the cluster to use for manipulating Azure APIs.
class ManagedClusterServicePrincipalProfileResponse {
  /// The ID for the service principal.
  final String clientId;
  /// The secret password associated with the service principal in plain text.
  final String? secret;

  /// Creates a new [ManagedClusterServicePrincipalProfileResponse].
  /// [clientId] The ID for the service principal.
  /// [secret] The secret password associated with the service principal in plain text.
  ManagedClusterServicePrincipalProfileResponse({
    required this.clientId,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'secret': ?secret,
    };
  }

  factory ManagedClusterServicePrincipalProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterServicePrincipalProfileResponse(
      clientId: map['clientId'] as String,
      secret: map['secret'] == null ? null : map['secret'] as String,
    );
  }
}

