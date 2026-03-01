// ignore_for_file: unused_element, unnecessary_cast


/// Definition of awsIamMFADevice
class AwsIamMFADevicePropertiesResponse {
  /// <p>The date when the MFA device was enabled for the user.</p>
  final String? enableDate;
  /// <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.</p>
  final String? serialNumber;
  /// <p>The user with whom the MFA device is associated.</p>
  final String? userName;

  /// Creates a new [AwsIamMFADevicePropertiesResponse].
  /// [enableDate] <p>The date when the MFA device was enabled for the user.</p>
  /// [serialNumber] <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.</p>
  /// [userName] <p>The user with whom the MFA device is associated.</p>
  AwsIamMFADevicePropertiesResponse({
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
      enableDate: map['enableDate'] == null ? null : map['enableDate'] as String,
      serialNumber: map['serialNumber'] == null ? null : map['serialNumber'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

