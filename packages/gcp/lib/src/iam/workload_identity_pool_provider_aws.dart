// ignore_for_file: unused_element, unnecessary_cast

class WorkloadIdentityPoolProviderAws {
  /// The AWS account ID.
  final String accountId;

  /// Creates a new [WorkloadIdentityPoolProviderAws].
  /// [accountId] The AWS account ID.
  WorkloadIdentityPoolProviderAws({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    return map;
  }

  factory WorkloadIdentityPoolProviderAws.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolProviderAws(
      accountId: map['accountId'] as String,
    );
  }
}
