// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_limits_response.dart';
import 'file_share_provisioning_constants_response.dart';

/// File share limits API result.
class FileShareLimitsOutputResponse {
  /// The limits for the file share.
  final pulumi.Input<FileShareLimitsResponse> limits;
  /// The provisioning constants for the file share.
  final pulumi.Input<FileShareProvisioningConstantsResponse> provisioningConstants;

  /// Creates a new [FileShareLimitsOutputResponse].
  /// [limits] The limits for the file share.
  /// [provisioningConstants] The provisioning constants for the file share.
  const FileShareLimitsOutputResponse({
    required this.limits,
    required this.provisioningConstants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': pulumi.Input.mapInputValue<FileShareLimitsResponse, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'provisioningConstants': pulumi.Input.mapInputValue<FileShareProvisioningConstantsResponse, Map<String, dynamic>>(provisioningConstants, (value) => value.toMap()),
    };
  }

  factory FileShareLimitsOutputResponse.fromMap(Map<String, dynamic> map) {
    return FileShareLimitsOutputResponse(
      limits: pulumi.Input.fromValue(FileShareLimitsResponse.fromMap((map['limits']! as Map).cast<String, dynamic>())),
      provisioningConstants: pulumi.Input.fromValue(FileShareProvisioningConstantsResponse.fromMap((map['provisioningConstants']! as Map).cast<String, dynamic>())),
    );
  }
}

