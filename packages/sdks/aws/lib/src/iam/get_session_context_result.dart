// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSessionContext.
class GetSessionContextResult {
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// IAM source role ARN if `arn` corresponds to an STS assumed role. Otherwise, `issuerArn` is equal to `arn`.
  final String? issuerArn;
  /// Unique identifier of the IAM role that issues the STS assumed role.
  final String? issuerId;
  /// Name of the source role. Only available if `arn` corresponds to an STS assumed role.
  final String? issuerName;
  /// Name of the STS session. Only available if `arn` corresponds to an STS assumed role.
  final String? sessionName;

  /// Creates a new [GetSessionContextResult].
  /// [arn] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [issuerArn] IAM source role ARN if `arn` corresponds to an STS assumed role. Otherwise, `issuerArn` is equal to `arn`.
  /// [issuerId] Unique identifier of the IAM role that issues the STS assumed role.
  /// [issuerName] Name of the source role. Only available if `arn` corresponds to an STS assumed role.
  /// [sessionName] Name of the STS session. Only available if `arn` corresponds to an STS assumed role.
  const GetSessionContextResult({
    this.arn,
    this.id,
    this.issuerArn,
    this.issuerId,
    this.issuerName,
    this.sessionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'issuerArn': ?issuerArn,
      'issuerId': ?issuerId,
      'issuerName': ?issuerName,
      'sessionName': ?sessionName,
    };
  }

  factory GetSessionContextResult.fromMap(Map<String, dynamic> map) {
    return GetSessionContextResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuerArn: (() { final guardedValue = map['issuerArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuerId: (() { final guardedValue = map['issuerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuerName: (() { final guardedValue = map['issuerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sessionName: (() { final guardedValue = map['sessionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
