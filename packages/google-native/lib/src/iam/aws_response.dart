// ignore_for_file: unused_element, unnecessary_cast

/// Represents an Amazon Web Services identity provider.
class AwsResponse {
  /// The AWS account ID.
  final String accountId;

  /// Creates a new [AwsResponse].
  /// [accountId] The AWS account ID.
  AwsResponse({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    return map;
  }

  factory AwsResponse.fromMap(Map<String, dynamic> map) {
    return AwsResponse(
      accountId: map['accountId'] as String,
    );
  }
}
