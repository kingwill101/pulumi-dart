// ignore_for_file: unused_element, unnecessary_cast

/// Represents an Amazon Web Services identity provider.
class Aws {
  /// The AWS account ID.
  final String accountId;

  /// Creates a new [Aws].
  /// [accountId] The AWS account ID.
  Aws({required this.accountId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'accountId': accountId};
  }

  factory Aws.fromMap(Map<String, dynamic> map) {
    return Aws(accountId: map['accountId'] as String);
  }
}
