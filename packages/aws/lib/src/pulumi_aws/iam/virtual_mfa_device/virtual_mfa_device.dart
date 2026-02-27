import 'package:pulumi/pulumi.dart';
import 'virtual_mfa_device_args.dart';

/// Provides an IAM Virtual MFA Device.
///
/// > **Note:** All attributes will be stored in the raw state as plain-text.
/// > **Note:** A virtual MFA device cannot be directly associated with an IAM User from the provider.
/// To associate the virtual MFA device with a user and enable it, use the code returned in either `base_32_string_seed` or `qr_code_png` to generate TOTP authentication codes.
/// The authentication codes can then be used with the AWS CLI command [`aws iam enable-mfa-device`](https://docs.aws.amazon.com/cli/latest/reference/iam/enable-mfa-device.html) or the AWS API call [`EnableMFADevice`](https://docs.aws.amazon.com/IAM/latest/APIReference/API_EnableMFADevice.html).
///
/// ## Example Usage
///
/// **Using certs on file:**
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM Virtual MFA Devices using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/virtualMfaDevice:VirtualMfaDevice example arn:aws:iam::123456789012:mfa/example
/// ```
class VirtualMfaDevice extends CustomResource {
  /// Amazon Resource Name (ARN), which is also the serial number, of the virtual MFA device.
  late final Output<String> arn;

  /// Base32 seed defined as specified in [RFC3548](https://tools.ietf.org/html/rfc3548.txt). The `base_32_string_seed` is base64-encoded.
  late final Output<String> base32StringSeed;

  /// Date and time when the virtual MFA device was enabled.
  late final Output<String> enableDate;

  /// Path for the virtual MFA device.
  late final Output<String?> path;

  /// QR code PNG image that encodes `otpauth://totp/$virtualMFADeviceName@$AccountName?secret=$Base32String` where `$virtualMFADeviceName` is one of the create call arguments. `AccountName` is the user name if set (otherwise, the account ID), and `Base32String` is the seed in base32 format.
  late final Output<String> qrCodePng;

  /// Serial number associated with the virtual MFA device.
  late final Output<String> serialNumber;

  /// Map of resource tags for the virtual mfa device. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Name of the IAM user associated with this virtual MFA device.
  late final Output<String> userName;

  /// Name of the virtual MFA device. Use with path to uniquely identify a virtual MFA device.
  late final Output<String> virtualMfaDeviceName;

  VirtualMfaDevice(
    String name, {
    VirtualMfaDeviceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/virtualMfaDevice:VirtualMfaDevice',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.base32StringSeed = registerOutput<String>('base32StringSeed');
    this.enableDate = registerOutput<String>('enableDate');
    this.path = registerOutput<String?>('path');
    this.qrCodePng = registerOutput<String>('qrCodePng');
    this.serialNumber = registerOutput<String>('serialNumber');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userName = registerOutput<String>('userName');
    this.virtualMfaDeviceName = registerOutput<String>('virtualMfaDeviceName');
  }
}
