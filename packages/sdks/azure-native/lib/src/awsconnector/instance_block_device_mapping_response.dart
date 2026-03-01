// ignore_for_file: unused_element, unnecessary_cast

import 'ebs_instance_block_device_response.dart';

/// Definition of InstanceBlockDeviceMapping
class InstanceBlockDeviceMappingResponse {
  /// <p>The device name (for example, <code>/dev/sdh</code> or <code>xvdh</code>).</p>
  final String? deviceName;
  /// <p>Parameters used to automatically set up EBS volumes when the instance is launched.</p>
  final EbsInstanceBlockDeviceResponse? ebs;

  /// Creates a new [InstanceBlockDeviceMappingResponse].
  /// [deviceName] <p>The device name (for example, <code>/dev/sdh</code> or <code>xvdh</code>).</p>
  /// [ebs] <p>Parameters used to automatically set up EBS volumes when the instance is launched.</p>
  InstanceBlockDeviceMappingResponse({
    this.deviceName,
    this.ebs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'ebs': ?ebs == null ? null : ebs!.toMap(),
    };
  }

  factory InstanceBlockDeviceMappingResponse.fromMap(Map<String, dynamic> map) {
    return InstanceBlockDeviceMappingResponse(
      deviceName: map['deviceName'] == null ? null : map['deviceName'] as String,
      ebs: map['ebs'] == null ? null : EbsInstanceBlockDeviceResponse.fromMap((map['ebs'] as Map).cast<String, dynamic>()),
    );
  }
}

