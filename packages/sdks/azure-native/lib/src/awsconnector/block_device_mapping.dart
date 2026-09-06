// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ebs_block_device.dart';

/// Definition of BlockDeviceMapping
class BlockDeviceMapping {
  /// &lt;p&gt;The device name (for example, &lt;code&gt;/dev/sdh&lt;/code&gt; or &lt;code&gt;xvdh&lt;/code&gt;).&lt;/p&gt;
  final pulumi.Input<String?>? deviceName;
  /// &lt;p&gt;Parameters used to automatically set up EBS volumes when the instance is launched.&lt;/p&gt;
  final pulumi.Input<EbsBlockDevice?>? ebs;
  /// &lt;p&gt;To omit the device from the block device mapping, specify an empty string. When this property is specified, the device is removed from the block device mapping regardless of the assigned value.&lt;/p&gt;
  final pulumi.Input<String?>? noDevice;
  /// &lt;p&gt;The virtual device name (&lt;code&gt;ephemeral&lt;/code&gt;N). Instance store volumes are numbered starting from 0. An instance type with 2 available instance store volumes can specify mappings for &lt;code&gt;ephemeral0&lt;/code&gt; and &lt;code&gt;ephemeral1&lt;/code&gt;. The number of available instance store volumes depends on the instance type. After you connect to the instance, you must mount the volume.&lt;/p&gt; &lt;p&gt;NVMe instance store volumes are automatically enumerated and assigned a device name. Including them in your block device mapping has no effect.&lt;/p&gt; &lt;p&gt;Constraints: For M3 instances, you must specify instance store volumes in the block device mapping for the instance. When you launch an M3 instance, we ignore any instance store volumes specified in the block device mapping for the AMI.&lt;/p&gt;
  final pulumi.Input<String?>? virtualName;

  /// Creates a new [BlockDeviceMapping].
  /// [deviceName] &lt;p&gt;The device name (for example, &lt;code&gt;/dev/sdh&lt;/code&gt; or &lt;code&gt;xvdh&lt;/code&gt;).&lt;/p&gt;
  /// [ebs] &lt;p&gt;Parameters used to automatically set up EBS volumes when the instance is launched.&lt;/p&gt;
  /// [noDevice] &lt;p&gt;To omit the device from the block device mapping, specify an empty string. When this property is specified, the device is removed from the block device mapping regardless of the assigned value.&lt;/p&gt;
  /// [virtualName] &lt;p&gt;The virtual device name (&lt;code&gt;ephemeral&lt;/code&gt;N). Instance store volumes are numbered starting from 0. An instance type with 2 available instance store volumes can specify mappings for &lt;code&gt;ephemeral0&lt;/code&gt; and &lt;code&gt;ephemeral1&lt;/code&gt;. The number of available instance store volumes depends on the instance type. After you connect to the instance, you must mount the volume.&lt;/p&gt; &lt;p&gt;NVMe instance store volumes are automatically enumerated and assigned a device name. Including them in your block device mapping has no effect.&lt;/p&gt; &lt;p&gt;Constraints: For M3 instances, you must specify instance store volumes in the block device mapping for the instance. When you launch an M3 instance, we ignore any instance store volumes specified in the block device mapping for the AMI.&lt;/p&gt;
  const BlockDeviceMapping({
    this.deviceName,
    this.ebs,
    this.noDevice,
    this.virtualName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'ebs': ?pulumi.Input.mapOptionalInputValue<EbsBlockDevice, Map<String, dynamic>>(ebs, (value) => value.toMap()),
      'noDevice': ?noDevice,
      'virtualName': ?virtualName,
    };
  }

  factory BlockDeviceMapping.fromMap(Map<String, dynamic> map) {
    return BlockDeviceMapping(
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ebs: (() { final guardedValue = map['ebs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EbsBlockDevice.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      noDevice: (() { final guardedValue = map['noDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualName: (() { final guardedValue = map['virtualName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
