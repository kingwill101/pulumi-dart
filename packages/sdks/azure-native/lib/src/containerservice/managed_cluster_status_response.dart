// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// Contains read-only information about the Managed Cluster.
class ManagedClusterStatusResponse {
  /// The error details information of the managed cluster. Preserves the detailed info of failure. If there was no error, this field is omitted.
  final pulumi.Input<ErrorDetailResponse> provisioningError;

  /// Creates a new [ManagedClusterStatusResponse].
  /// [provisioningError] The error details information of the managed cluster. Preserves the detailed info of failure. If there was no error, this field is omitted.
  ManagedClusterStatusResponse({
    required this.provisioningError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningError': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(provisioningError, (value) => value.toMap()),
    };
  }

  factory ManagedClusterStatusResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStatusResponse(
      provisioningError: (ErrorDetailResponse.fromMap((map['provisioningError'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

