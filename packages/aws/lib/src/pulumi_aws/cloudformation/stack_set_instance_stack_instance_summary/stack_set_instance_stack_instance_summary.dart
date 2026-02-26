// ignore_for_file: unused_element, unnecessary_cast

class StackSetInstanceStackInstanceSummary {
  /// Target AWS Account ID to create a Stack based on the StackSet. Defaults to current account.
  final String? accountId;

  /// Organizational unit ID in which the stack is deployed.
  final String? organizationalUnitId;

  /// Stack identifier.
  final String? stackId;

  StackSetInstanceStackInstanceSummary({
    this.accountId,
    this.organizationalUnitId,
    this.stackId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    final organizationalUnitIdValue = organizationalUnitId;
    if (organizationalUnitIdValue != null) {
      map['organizationalUnitId'] = organizationalUnitIdValue;
    }
    final stackIdValue = stackId;
    if (stackIdValue != null) {
      map['stackId'] = stackIdValue;
    }
    return map;
  }

  factory StackSetInstanceStackInstanceSummary.fromMap(
      Map<String, dynamic> map) {
    return StackSetInstanceStackInstanceSummary(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      organizationalUnitId: map['organizationalUnitId'] == null
          ? null
          : map['organizationalUnitId'] as String,
      stackId: map['stackId'] == null ? null : map['stackId'] as String,
    );
  }
}
