// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsIamMFADevice
class AwsIamMFADevicePropertiesResponse {
  /// &lt;p&gt;The date when the MFA device was enabled for the user.&lt;/p&gt;
  final pulumi.Input<String?>? enableDate;
  /// &lt;p&gt;The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.&lt;/p&gt;
  final pulumi.Input<String?>? serialNumber;
  /// &lt;p&gt;The user with whom the MFA device is associated.&lt;/p&gt;
  final pulumi.Input<String?>? userName;

  /// Creates a new [AwsIamMFADevicePropertiesResponse].
  /// [enableDate] &lt;p&gt;The date when the MFA device was enabled for the user.&lt;/p&gt;
  /// [serialNumber] &lt;p&gt;The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.&lt;/p&gt;
  /// [userName] &lt;p&gt;The user with whom the MFA device is associated.&lt;/p&gt;
  const AwsIamMFADevicePropertiesResponse({
    this.enableDate,
    this.serialNumber,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDate': ?enableDate,
      'serialNumber': ?serialNumber,
      'userName': ?userName,
    };
  }

  factory AwsIamMFADevicePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsIamMFADevicePropertiesResponse(
      enableDate: (() { final guardedValue = map['enableDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
