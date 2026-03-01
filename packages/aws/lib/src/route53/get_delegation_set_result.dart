// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDelegationSet.
class GetDelegationSetResult {
  /// ARN of the Delegation Set.
  final String arn;

  /// Caller Reference of the delegation set.
  final String callerReference;
  final String id;

  /// List of DNS name servers for the delegation set.
  final List<String> nameServers;

  /// Creates a new [GetDelegationSetResult].
  /// [arn] ARN of the Delegation Set.
  /// [callerReference] Caller Reference of the delegation set.
  /// [id] Required.
  /// [nameServers] List of DNS name servers for the delegation set.
  GetDelegationSetResult({
    required this.arn,
    required this.callerReference,
    required this.id,
    required this.nameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'callerReference': callerReference,
      'id': id,
      'nameServers': nameServers,
    };
  }

  factory GetDelegationSetResult.fromMap(Map<String, dynamic> map) {
    return GetDelegationSetResult(
      arn: map['arn'] as String,
      callerReference: map['callerReference'] as String,
      id: map['id'] as String,
      nameServers: (map['nameServers'] as List).cast<String>(),
    );
  }
}
