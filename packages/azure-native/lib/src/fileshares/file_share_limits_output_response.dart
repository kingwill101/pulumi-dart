// ignore_for_file: unused_element, unnecessary_cast

import 'file_share_limits_response.dart';
import 'file_share_provisioning_constants_response.dart';

/// File share limits API result.
class FileShareLimitsOutputResponse {
  /// The limits for the file share.
  final FileShareLimitsResponse limits;
  /// The provisioning constants for the file share.
  final FileShareProvisioningConstantsResponse provisioningConstants;

  /// Creates a new [FileShareLimitsOutputResponse].
  /// [limits] The limits for the file share.
  /// [provisioningConstants] The provisioning constants for the file share.
  FileShareLimitsOutputResponse({
    required this.limits,
    required this.provisioningConstants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': limits.toMap(),
      'provisioningConstants': provisioningConstants.toMap(),
    };
  }

  factory FileShareLimitsOutputResponse.fromMap(Map<String, dynamic> map) {
    return FileShareLimitsOutputResponse(
      limits: FileShareLimitsResponse.fromMap((map['limits'] as Map).cast<String, dynamic>()),
      provisioningConstants: FileShareProvisioningConstantsResponse.fromMap((map['provisioningConstants'] as Map).cast<String, dynamic>()),
    );
  }
}

