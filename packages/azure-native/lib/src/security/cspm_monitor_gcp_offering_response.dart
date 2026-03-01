// ignore_for_file: unused_element, unnecessary_cast

import 'cspm_monitor_gcp_offering_response_native_cloud_connection.dart';

/// The CSPM monitoring for GCP offering
class CspmMonitorGcpOfferingResponse {
  /// The offering description.
  final String description;
  /// The native cloud connection configuration
  final CspmMonitorGcpOfferingResponseNativeCloudConnection? nativeCloudConnection;
  /// The type of the security offering.
  /// Expected value is 'CspmMonitorGcp'.
  final String offeringType;

  /// Creates a new [CspmMonitorGcpOfferingResponse].
  /// [description] The offering description.
  /// [nativeCloudConnection] The native cloud connection configuration
  /// [offeringType] The type of the security offering.
  CspmMonitorGcpOfferingResponse({
    required this.description,
    this.nativeCloudConnection,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'nativeCloudConnection': ?nativeCloudConnection == null ? null : nativeCloudConnection!.toMap(),
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorGcpOfferingResponse.fromMap(Map<String, dynamic> map) {
    return CspmMonitorGcpOfferingResponse(
      description: map['description'] as String,
      nativeCloudConnection: map['nativeCloudConnection'] == null ? null : CspmMonitorGcpOfferingResponseNativeCloudConnection.fromMap((map['nativeCloudConnection'] as Map).cast<String, dynamic>()),
      offeringType: map['offeringType'] as String,
    );
  }
}

