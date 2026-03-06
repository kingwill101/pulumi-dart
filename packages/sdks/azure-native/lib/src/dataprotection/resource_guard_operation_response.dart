// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This class contains all the details about a critical operation.
class ResourceGuardOperationResponse {
  /// Type of resource request.
  final pulumi.Input<String> requestResourceType;
  /// Name of the critical operation.
  final pulumi.Input<String> vaultCriticalOperation;

  /// Creates a new [ResourceGuardOperationResponse].
  /// [requestResourceType] Type of resource request.
  /// [vaultCriticalOperation] Name of the critical operation.
  const ResourceGuardOperationResponse({
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
      requestResourceType: pulumi.Input.fromValue(map['requestResourceType'] as String),
      vaultCriticalOperation: pulumi.Input.fromValue(map['vaultCriticalOperation'] as String),
    );
  }
}

