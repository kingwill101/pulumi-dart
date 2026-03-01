// ignore_for_file: unused_element, unnecessary_cast


/// VaultCritical Operation protected by a resource guard
class ResourceGuardOperationDetail {
  final String? defaultResourceRequest;
  final String? vaultCriticalOperation;

  /// Creates a new [ResourceGuardOperationDetail].
  /// [defaultResourceRequest] Optional.
  /// [vaultCriticalOperation] Optional.
  ResourceGuardOperationDetail({
    this.defaultResourceRequest,
    this.vaultCriticalOperation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultResourceRequest': ?defaultResourceRequest,
      'vaultCriticalOperation': ?vaultCriticalOperation,
    };
  }

  factory ResourceGuardOperationDetail.fromMap(Map<String, dynamic> map) {
    return ResourceGuardOperationDetail(
      defaultResourceRequest: map['defaultResourceRequest'] == null ? null : map['defaultResourceRequest'] as String,
      vaultCriticalOperation: map['vaultCriticalOperation'] == null ? null : map['vaultCriticalOperation'] as String,
    );
  }
}

