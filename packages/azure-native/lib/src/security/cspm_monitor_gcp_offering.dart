// ignore_for_file: unused_element, unnecessary_cast

import 'cspm_monitor_gcp_offering_native_cloud_connection.dart';

/// The CSPM monitoring for GCP offering
class CspmMonitorGcpOffering {
  /// The native cloud connection configuration
  final CspmMonitorGcpOfferingNativeCloudConnection? nativeCloudConnection;
  /// The type of the security offering.
  /// Expected value is 'CspmMonitorGcp'.
  final String offeringType;

  /// Creates a new [CspmMonitorGcpOffering].
  /// [nativeCloudConnection] The native cloud connection configuration
  /// [offeringType] The type of the security offering.
  CspmMonitorGcpOffering({
    this.nativeCloudConnection,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nativeCloudConnection': ?nativeCloudConnection == null ? null : nativeCloudConnection!.toMap(),
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorGcpOffering.fromMap(Map<String, dynamic> map) {
    return CspmMonitorGcpOffering(
      nativeCloudConnection: map['nativeCloudConnection'] == null ? null : CspmMonitorGcpOfferingNativeCloudConnection.fromMap((map['nativeCloudConnection'] as Map).cast<String, dynamic>()),
      offeringType: map['offeringType'] as String,
    );
  }
}

