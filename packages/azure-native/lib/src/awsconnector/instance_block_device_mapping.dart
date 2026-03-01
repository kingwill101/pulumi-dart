// ignore_for_file: unused_element, unnecessary_cast

import 'ebs_instance_block_device.dart';

/// Definition of InstanceBlockDeviceMapping
class InstanceBlockDeviceMapping {
  /// <p>The device name (for example, <code>/dev/sdh</code> or <code>xvdh</code>).</p>
  final String? deviceName;
  /// <p>Parameters used to automatically set up EBS volumes when the instance is launched.</p>
  final EbsInstanceBlockDevice? ebs;

  /// Creates a new [InstanceBlockDeviceMapping].
  /// [deviceName] <p>The device name (for example, <code>/dev/sdh</code> or <code>xvdh</code>).</p>
  /// [ebs] <p>Parameters used to automatically set up EBS volumes when the instance is launched.</p>
  InstanceBlockDeviceMapping({
    this.deviceName,
    this.ebs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'ebs': ?ebs == null ? null : ebs!.toMap(),
    };
  }

  factory InstanceBlockDeviceMapping.fromMap(Map<String, dynamic> map) {
    return InstanceBlockDeviceMapping(
      deviceName: map['deviceName'] == null ? null : map['deviceName'] as String,
      ebs: map['ebs'] == null ? null : EbsInstanceBlockDevice.fromMap((map['ebs'] as Map).cast<String, dynamic>()),
    );
  }
}

