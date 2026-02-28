// ignore_for_file: unused_element, unnecessary_cast

class GetLogDataProtectionPolicyDocumentStatementOperationDeidentify {
  /// An empty object that configures masking.
  final Map<String, dynamic> maskConfig;

  /// Creates a new [GetLogDataProtectionPolicyDocumentStatementOperationDeidentify].
  /// [maskConfig] An empty object that configures masking.
  GetLogDataProtectionPolicyDocumentStatementOperationDeidentify({
    required this.maskConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maskConfig'] = maskConfig;
    return map;
  }

  factory GetLogDataProtectionPolicyDocumentStatementOperationDeidentify.fromMap(
      Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentStatementOperationDeidentify(
      maskConfig: (map['maskConfig'] as Map).cast<String, dynamic>(),
    );
  }
}
