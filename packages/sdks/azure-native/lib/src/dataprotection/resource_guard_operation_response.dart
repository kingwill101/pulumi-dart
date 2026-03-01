// ignore_for_file: unused_element, unnecessary_cast


/// This class contains all the details about a critical operation.
class ResourceGuardOperationResponse {
  /// Type of resource request.
  final String requestResourceType;
  /// Name of the critical operation.
  final String vaultCriticalOperation;

  /// Creates a new [ResourceGuardOperationResponse].
  /// [requestResourceType] Type of resource request.
  /// [vaultCriticalOperation] Name of the critical operation.
  ResourceGuardOperationResponse({
    required this.requestResourceType,
    required this.vaultCriticalOperation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestResourceType': requestResourceType,
      'vaultCriticalOperation': vaultCriticalOperation,
    };
  }

  factory ResourceGuardOperationResponse.fromMap(Map<String, dynamic> map) {
    return ResourceGuardOperationResponse(
      requestResourceType: map['requestResourceType'] as String,
      vaultCriticalOperation: map['vaultCriticalOperation'] as String,
    );
  }
}

