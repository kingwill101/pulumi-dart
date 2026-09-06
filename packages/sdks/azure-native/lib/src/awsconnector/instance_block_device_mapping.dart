// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ebs_instance_block_device.dart';

/// Definition of InstanceBlockDeviceMapping
class InstanceBlockDeviceMapping {
  /// &lt;p&gt;The device name (for example, &lt;code&gt;/dev/sdh&lt;/code&gt; or &lt;code&gt;xvdh&lt;/code&gt;).&lt;/p&gt;
  final pulumi.Input<String?>? deviceName;
  /// &lt;p&gt;Parameters used to automatically set up EBS volumes when the instance is launched.&lt;/p&gt;
  final pulumi.Input<EbsInstanceBlockDevice?>? ebs;

  /// Creates a new [InstanceBlockDeviceMapping].
  /// [deviceName] &lt;p&gt;The device name (for example, &lt;code&gt;/dev/sdh&lt;/code&gt; or &lt;code&gt;xvdh&lt;/code&gt;).&lt;/p&gt;
  /// [ebs] &lt;p&gt;Parameters used to automatically set up EBS volumes when the instance is launched.&lt;/p&gt;
  const InstanceBlockDeviceMapping({
    this.deviceName,
    this.ebs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'ebs': ?pulumi.Input.mapOptionalInputValue<EbsInstanceBlockDevice, Map<String, dynamic>>(ebs, (value) => value.toMap()),
    };
  }

  factory InstanceBlockDeviceMapping.fromMap(Map<String, dynamic> map) {
    return InstanceBlockDeviceMapping(
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ebs: (() { final guardedValue = map['ebs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EbsInstanceBlockDevice.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
