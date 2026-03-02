// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsIamMFADevice
class AwsIamMFADeviceProperties {
  /// <p>The date when the MFA device was enabled for the user.</p>
  final pulumi.Input<String>? enableDate;
  /// <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.</p>
  final pulumi.Input<String>? serialNumber;
  /// <p>The user with whom the MFA device is associated.</p>
  final pulumi.Input<String>? userName;

  /// Creates a new [AwsIamMFADeviceProperties].
  /// [enableDate] <p>The date when the MFA device was enabled for the user.</p>
  /// [serialNumber] <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.</p>
  /// [userName] <p>The user with whom the MFA device is associated.</p>
  AwsIamMFADeviceProperties({
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

  factory AwsIamMFADeviceProperties.fromMap(Map<String, dynamic> map) {
    return AwsIamMFADeviceProperties(
      enableDate: map['enableDate'] == null ? null : (map['enableDate'] as String).input(),
      serialNumber: map['serialNumber'] == null ? null : (map['serialNumber'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
    );
  }
}

