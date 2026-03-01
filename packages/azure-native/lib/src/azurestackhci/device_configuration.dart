// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nic_detail.dart';

/// The device Configuration for edge device.
class DeviceConfiguration {
  /// Device metadata details.
  final String? deviceMetadata;
  /// NIC Details of device
  final List<NicDetail>? nicDetails;

  /// Creates a new [DeviceConfiguration].
  /// [deviceMetadata] Device metadata details.
  /// [nicDetails] NIC Details of device
  DeviceConfiguration({
    this.deviceMetadata,
    this.nicDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceMetadata': ?deviceMetadata,
      'nicDetails': ?nicDetails == null ? null : pulumi.Input.encodeList<NicDetail, Map<String, dynamic>>(nicDetails!, (value) => value.toMap()),
    };
  }

  factory DeviceConfiguration.fromMap(Map<String, dynamic> map) {
    return DeviceConfiguration(
      deviceMetadata: map['deviceMetadata'] == null ? null : map['deviceMetadata'] as String,
      nicDetails: map['nicDetails'] == null ? null : pulumi.Input.decodeList<NicDetail>(map['nicDetails'], (value) => NicDetail.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

