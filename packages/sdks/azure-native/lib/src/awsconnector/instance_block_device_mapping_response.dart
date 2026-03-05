// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ebs_instance_block_device_response.dart';

/// Definition of InstanceBlockDeviceMapping
class InstanceBlockDeviceMappingResponse {
  /// &lt;p&gt;The device name (for example, &lt;code&gt;/dev/sdh&lt;/code&gt; or &lt;code&gt;xvdh&lt;/code&gt;).&lt;/p&gt;
  final pulumi.Input<String>? deviceName;
  /// &lt;p&gt;Parameters used to automatically set up EBS volumes when the instance is launched.&lt;/p&gt;
  final pulumi.Input<EbsInstanceBlockDeviceResponse>? ebs;

  /// Creates a new [InstanceBlockDeviceMappingResponse].
  /// [deviceName] &lt;p&gt;The device name (for example, &lt;code&gt;/dev/sdh&lt;/code&gt; or &lt;code&gt;xvdh&lt;/code&gt;).&lt;/p&gt;
  /// [ebs] &lt;p&gt;Parameters used to automatically set up EBS volumes when the instance is launched.&lt;/p&gt;
  InstanceBlockDeviceMappingResponse({
    this.deviceName,
    this.ebs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'ebs': ?pulumi.Input.mapOptionalInputValue<EbsInstanceBlockDeviceResponse, Map<String, dynamic>>(ebs, (value) => value.toMap()),
    };
  }

  factory InstanceBlockDeviceMappingResponse.fromMap(Map<String, dynamic> map) {
    return InstanceBlockDeviceMappingResponse(
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ebs: (() { final guardedValue = map['ebs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EbsInstanceBlockDeviceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

