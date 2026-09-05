// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDelegationSet.
class GetDelegationSetResult {
  /// ARN of the Delegation Set.
  final String? arn;
  /// Caller Reference of the delegation set.
  final String? callerReference;
  final String? id;
  /// List of DNS name servers for the delegation set.
  final List<String>? nameServers;

  /// Creates a new [GetDelegationSetResult].
  /// [arn] ARN of the Delegation Set.
  /// [callerReference] Caller Reference of the delegation set.
  /// [id] Optional.
  /// [nameServers] List of DNS name servers for the delegation set.
  const GetDelegationSetResult({
    this.arn,
    this.callerReference,
    this.id,
    this.nameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'callerReference': ?callerReference,
      'id': ?id,
      'nameServers': ?nameServers,
    };
  }

  factory GetDelegationSetResult.fromMap(Map<String, dynamic> map) {
    return GetDelegationSetResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      callerReference: (() { final guardedValue = map['callerReference']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameServers: (() { final guardedValue = map['nameServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
