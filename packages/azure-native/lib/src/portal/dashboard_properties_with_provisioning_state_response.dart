// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_lens_response.dart';

/// Dashboard Properties with Provisioning state
class DashboardPropertiesWithProvisioningStateResponse {
  /// The dashboard lenses.
  final List<DashboardLensResponse>? lenses;
  /// The dashboard metadata.
  final dynamic metadata;
  /// The status of the last operation.
  final String provisioningState;

  /// Creates a new [DashboardPropertiesWithProvisioningStateResponse].
  /// [lenses] The dashboard lenses.
  /// [metadata] The dashboard metadata.
  /// [provisioningState] The status of the last operation.
  DashboardPropertiesWithProvisioningStateResponse({
    this.lenses,
    this.metadata,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lenses': ?lenses == null ? null : pulumi.Input.encodeList<DashboardLensResponse, Map<String, dynamic>>(lenses!, (value) => value.toMap()),
      'metadata': ?metadata,
      'provisioningState': provisioningState,
    };
  }

  factory DashboardPropertiesWithProvisioningStateResponse.fromMap(Map<String, dynamic> map) {
    return DashboardPropertiesWithProvisioningStateResponse(
      lenses: map['lenses'] == null ? null : pulumi.Input.decodeList<DashboardLensResponse>(map['lenses'], (value) => DashboardLensResponse.fromMap((value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null ? null : map['metadata'],
      provisioningState: map['provisioningState'] as String,
    );
  }
}

