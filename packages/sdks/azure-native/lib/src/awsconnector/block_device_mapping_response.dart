// ignore_for_file: unused_element, unnecessary_cast

import 'ebs_block_device_response.dart';

/// Definition of BlockDeviceMapping
class BlockDeviceMappingResponse {
  /// <p>The device name (for example, <code>/dev/sdh</code> or <code>xvdh</code>).</p>
  final String? deviceName;
  /// <p>Parameters used to automatically set up EBS volumes when the instance is launched.</p>
  final EbsBlockDeviceResponse? ebs;
  /// <p>To omit the device from the block device mapping, specify an empty string. When this property is specified, the device is removed from the block device mapping regardless of the assigned value.</p>
  final String? noDevice;
  /// <p>The virtual device name (<code>ephemeral</code>N). Instance store volumes are numbered starting from 0. An instance type with 2 available instance store volumes can specify mappings for <code>ephemeral0</code> and <code>ephemeral1</code>. The number of available instance store volumes depends on the instance type. After you connect to the instance, you must mount the volume.</p> <p>NVMe instance store volumes are automatically enumerated and assigned a device name. Including them in your block device mapping has no effect.</p> <p>Constraints: For M3 instances, you must specify instance store volumes in the block device mapping for the instance. When you launch an M3 instance, we ignore any instance store volumes specified in the block device mapping for the AMI.</p>
  final String? virtualName;

  /// Creates a new [BlockDeviceMappingResponse].
  /// [deviceName] <p>The device name (for example, <code>/dev/sdh</code> or <code>xvdh</code>).</p>
  /// [ebs] <p>Parameters used to automatically set up EBS volumes when the instance is launched.</p>
  /// [noDevice] <p>To omit the device from the block device mapping, specify an empty string. When this property is specified, the device is removed from the block device mapping regardless of the assigned value.</p>
  /// [virtualName] <p>The virtual device name (<code>ephemeral</code>N). Instance store volumes are numbered starting from 0. An instance type with 2 available instance store volumes can specify mappings for <code>ephemeral0</code> and <code>ephemeral1</code>. The number of available instance store volumes depends on the instance type. After you connect to the instance, you must mount the volume.</p> <p>NVMe instance store volumes are automatically enumerated and assigned a device name. Including them in your block device mapping has no effect.</p> <p>Constraints: For M3 instances, you must specify instance store volumes in the block device mapping for the instance. When you launch an M3 instance, we ignore any instance store volumes specified in the block device mapping for the AMI.</p>
  BlockDeviceMappingResponse({
    this.deviceName,
    this.ebs,
    this.noDevice,
    this.virtualName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'ebs': ?ebs == null ? null : ebs!.toMap(),
      'noDevice': ?noDevice,
      'virtualName': ?virtualName,
    };
  }

  factory BlockDeviceMappingResponse.fromMap(Map<String, dynamic> map) {
    return BlockDeviceMappingResponse(
      deviceName: map['deviceName'] == null ? null : map['deviceName'] as String,
      ebs: map['ebs'] == null ? null : EbsBlockDeviceResponse.fromMap((map['ebs'] as Map).cast<String, dynamic>()),
      noDevice: map['noDevice'] == null ? null : map['noDevice'] as String,
      virtualName: map['virtualName'] == null ? null : map['virtualName'] as String,
    );
  }
}

