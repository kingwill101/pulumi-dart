// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualMfaDevice resources.
class VirtualMfaDeviceState {
  /// Amazon Resource Name (ARN), which is also the serial number, of the virtual MFA device.
  final pulumi.Input<String>? arn;
  /// Base32 seed defined as specified in [RFC3548](https://tools.ietf.org/html/rfc3548.txt). The `base_32_string_seed` is base64-encoded.
  final pulumi.Input<String>? base32StringSeed;
  /// Date and time when the virtual MFA device was enabled.
  final pulumi.Input<String>? enableDate;
  /// Path for the virtual MFA device.
  final pulumi.Input<String>? path;
  /// QR code PNG image that encodes `otpauth://totp/$virtualMFADeviceName@$AccountName?secret=$Base32String` where `$virtualMFADeviceName` is one of the create call arguments. `AccountName` is the user name if set (otherwise, the account ID), and `Base32String` is the seed in base32 format.
  final pulumi.Input<String>? qrCodePng;
  /// Serial number associated with the virtual MFA device.
  final pulumi.Input<String>? serialNumber;
  /// Map of resource tags for the virtual mfa device. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Name of the IAM user associated with this virtual MFA device.
  final pulumi.Input<String>? userName;
  /// Name of the virtual MFA device. Use with path to uniquely identify a virtual MFA device.
  final pulumi.Input<String>? virtualMfaDeviceName;

  /// Creates a new [VirtualMfaDeviceState].
  /// [arn] Amazon Resource Name (ARN), which is also the serial number, of the virtual MFA device.
  /// [base32StringSeed] Base32 seed defined as specified in [RFC3548](https://tools.ietf.org/html/rfc3548.txt). The `base_32_string_seed` is base64-encoded.
  /// [enableDate] Date and time when the virtual MFA device was enabled.
  /// [path] Path for the virtual MFA device.
  /// [qrCodePng] QR code PNG image that encodes `otpauth://totp/$virtualMFADeviceName@$AccountName?secret=$Base32String` where `$virtualMFADeviceName` is one of the create call arguments. `AccountName` is the user name if set (otherwise, the account ID), and `Base32String` is the seed in base32 format.
  /// [serialNumber] Serial number associated with the virtual MFA device.
  /// [tags] Map of resource tags for the virtual mfa device. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [userName] Name of the IAM user associated with this virtual MFA device.
  /// [virtualMfaDeviceName] Name of the virtual MFA device. Use with path to uniquely identify a virtual MFA device.
  VirtualMfaDeviceState({
    this.arn,
    this.base32StringSeed,
    this.enableDate,
    this.path,
    this.qrCodePng,
    this.serialNumber,
    this.tags,
    this.tagsAll,
    this.userName,
    this.virtualMfaDeviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'base32StringSeed': ?base32StringSeed,
      'enableDate': ?enableDate,
      'path': ?path,
      'qrCodePng': ?qrCodePng,
      'serialNumber': ?serialNumber,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'userName': ?userName,
      'virtualMfaDeviceName': ?virtualMfaDeviceName,
    };
  }

  factory VirtualMfaDeviceState.fromMap(Map<String, dynamic> map) {
    return VirtualMfaDeviceState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      base32StringSeed: map['base32StringSeed'] == null ? null : ((map['base32StringSeed'] as String).input()).input(),
      enableDate: map['enableDate'] == null ? null : ((map['enableDate'] as String).input()).input(),
      path: map['path'] == null ? null : ((map['path'] as String).input()).input(),
      qrCodePng: map['qrCodePng'] == null ? null : ((map['qrCodePng'] as String).input()).input(),
      serialNumber: map['serialNumber'] == null ? null : ((map['serialNumber'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      userName: map['userName'] == null ? null : ((map['userName'] as String).input()).input(),
      virtualMfaDeviceName: map['virtualMfaDeviceName'] == null ? null : ((map['virtualMfaDeviceName'] as String).input()).input(),
    );
  }
}

