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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? base32StringSeed,
    pulumi.Output<String>? enableDate,
    pulumi.Output<String>? path,
    pulumi.Output<String>? qrCodePng,
    pulumi.Output<String>? serialNumber,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? userName,
    pulumi.Output<String>? virtualMfaDeviceName,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      base32StringSeed = pulumi.Input.asOptionalInput<String>(base32StringSeed),
      enableDate = pulumi.Input.asOptionalInput<String>(enableDate),
      path = pulumi.Input.asOptionalInput<String>(path),
      qrCodePng = pulumi.Input.asOptionalInput<String>(qrCodePng),
      serialNumber = pulumi.Input.asOptionalInput<String>(serialNumber),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      userName = pulumi.Input.asOptionalInput<String>(userName),
      virtualMfaDeviceName = pulumi.Input.asOptionalInput<String>(virtualMfaDeviceName);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      base32StringSeed: map['base32StringSeed'] == null ? null : pulumi.Output.create<String>(map['base32StringSeed'] as String),
      enableDate: map['enableDate'] == null ? null : pulumi.Output.create<String>(map['enableDate'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      qrCodePng: map['qrCodePng'] == null ? null : pulumi.Output.create<String>(map['qrCodePng'] as String),
      serialNumber: map['serialNumber'] == null ? null : pulumi.Output.create<String>(map['serialNumber'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
      virtualMfaDeviceName: map['virtualMfaDeviceName'] == null ? null : pulumi.Output.create<String>(map['virtualMfaDeviceName'] as String),
    );
  }
}

