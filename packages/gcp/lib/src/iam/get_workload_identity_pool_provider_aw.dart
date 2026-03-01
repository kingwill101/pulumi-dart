// ignore_for_file: unused_element, unnecessary_cast

class GetWorkloadIdentityPoolProviderAw {
  /// The AWS account ID.
  final String accountId;

  /// Creates a new [GetWorkloadIdentityPoolProviderAw].
  /// [accountId] The AWS account ID.
  GetWorkloadIdentityPoolProviderAw({required this.accountId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'accountId': accountId};
  }

  factory GetWorkloadIdentityPoolProviderAw.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolProviderAw(
      accountId: map['accountId'] as String,
    );
  }
}
