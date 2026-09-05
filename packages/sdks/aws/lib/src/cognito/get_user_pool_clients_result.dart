// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUserPoolClients.
class GetUserPoolClientsResult {
  /// List of Cognito user pool client IDs.
  final List<String>? clientIds;
  /// List of Cognito user pool client names.
  final List<String>? clientNames;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  final String? userPoolId;

  /// Creates a new [GetUserPoolClientsResult].
  /// [clientIds] List of Cognito user pool client IDs.
  /// [clientNames] List of Cognito user pool client names.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [userPoolId] Optional.
  const GetUserPoolClientsResult({
    this.clientIds,
    this.clientNames,
    this.id,
    this.region,
    this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIds': ?clientIds,
      'clientNames': ?clientNames,
      'id': ?id,
      'region': ?region,
      'userPoolId': ?userPoolId,
    };
  }

  factory GetUserPoolClientsResult.fromMap(Map<String, dynamic> map) {
    return GetUserPoolClientsResult(
      clientIds: (() { final guardedValue = map['clientIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      clientNames: (() { final guardedValue = map['clientNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userPoolId: (() { final guardedValue = map['userPoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
