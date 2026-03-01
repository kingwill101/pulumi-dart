// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nic_detail_response.dart';

/// The device Configuration for edge device.
class DeviceConfigurationResponse {
  /// Device metadata details.
  final String? deviceMetadata;
  /// NIC Details of device
  final List<NicDetailResponse>? nicDetails;

  /// Creates a new [DeviceConfigurationResponse].
  /// [deviceMetadata] Device metadata details.
  /// [nicDetails] NIC Details of device
  DeviceConfigurationResponse({
    this.deviceMetadata,
    this.nicDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceMetadata': ?deviceMetadata,
      'nicDetails': ?nicDetails == null ? null : pulumi.Input.encodeList<NicDetailResponse, Map<String, dynamic>>(nicDetails!, (value) => value.toMap()),
    };
  }

  factory DeviceConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DeviceConfigurationResponse(
      deviceMetadata: map['deviceMetadata'] == null ? null : map['deviceMetadata'] as String,
      nicDetails: map['nicDetails'] == null ? null : pulumi.Input.decodeList<NicDetailResponse>(map['nicDetails'], (value) => NicDetailResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

