// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBillingServiceAccount.
class GetBillingServiceAccountResult {
  /// ARN of the AWS billing service account.
  final String? arn;
  /// ID of the AWS billing service account.
  final String? id;

  /// Creates a new [GetBillingServiceAccountResult].
  /// [arn] ARN of the AWS billing service account.
  /// [id] ID of the AWS billing service account.
  const GetBillingServiceAccountResult({
    this.arn,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
    };
  }

  factory GetBillingServiceAccountResult.fromMap(Map<String, dynamic> map) {
    return GetBillingServiceAccountResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
