// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nic_detail.dart';

/// The device Configuration for edge device.
class DeviceConfiguration {
  /// Device metadata details.
  final pulumi.Input<String>? deviceMetadata;
  /// NIC Details of device
  final pulumi.Input<List<NicDetail>>? nicDetails;

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
      'nicDetails': ?pulumi.Input.mapOptionalInputValue<List<NicDetail>, List<Map<String, dynamic>>>(nicDetails, (value) => pulumi.Input.encodeList<NicDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeviceConfiguration.fromMap(Map<String, dynamic> map) {
    return DeviceConfiguration(
      deviceMetadata: (() { final guardedValue = map['deviceMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nicDetails: (() { final guardedValue = map['nicDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NicDetail>(guardedValue, (value) => NicDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

