// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUserPoolClients.
class GetUserPoolClientsResult {
  /// List of Cognito user pool client IDs.
  final List<String> clientIds;
  /// List of Cognito user pool client names.
  final List<String> clientNames;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final String userPoolId;

  /// Creates a new [GetUserPoolClientsResult].
  /// [clientIds] List of Cognito user pool client IDs.
  /// [clientNames] List of Cognito user pool client names.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [userPoolId] Required.
  const GetUserPoolClientsResult({
    required this.clientIds,
    required this.clientNames,
    required this.id,
    required this.region,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIds': clientIds,
      'clientNames': clientNames,
      'id': id,
      'region': region,
      'userPoolId': userPoolId,
    };
  }

  factory GetUserPoolClientsResult.fromMap(Map<String, dynamic> map) {
    return GetUserPoolClientsResult(
      clientIds: (map['clientIds'] as List).cast<String>(),
      clientNames: (map['clientNames'] as List).cast<String>(),
      id: map['id'] as String,
      region: map['region'] as String,
      userPoolId: map['userPoolId'] as String,
    );
  }
}
