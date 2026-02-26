import 'package:pulumi/pulumi.dart';
import 'virtual_mfa_device_args.dart';

/// Provides an IAM Virtual MFA Device.
///
/// > **Note:** All attributes will be stored in the raw state as plain-text.
/// > **Note:** A virtual MFA device cannot be directly associated with an IAM User from the provider.
/// To associate the virtual MFA device with a user and enable it, use the code returned in either <span pulumi-lang-nodejs="`base32StringSeed`" pulumi-lang-dotnet="`Base32StringSeed`" pulumi-lang-go="`base32StringSeed`" pulumi-lang-python="`base_32_string_seed`" pulumi-lang-yaml="`base32StringSeed`" pulumi-lang-java="`base32StringSeed`">`base_32_string_seed`</span> or <span pulumi-lang-nodejs="`qrCodePng`" pulumi-lang-dotnet="`QrCodePng`" pulumi-lang-go="`qrCodePng`" pulumi-lang-python="`qr_code_png`" pulumi-lang-yaml="`qrCodePng`" pulumi-lang-java="`qrCodePng`">`qr_code_png`</span> to generate TOTP authentication codes.
/// The authentication codes can then be used with the AWS CLI command [`aws iam enable-mfa-device`](https://docs.aws.amazon.com/cli/latest/reference/iam/enable-mfa-device.html) or the AWS API call [`EnableMFADevice`](https://docs.aws.amazon.com/IAM/latest/APIReference/API_EnableMFADevice.html).
///
/// ## Example Usage
///
/// **Using certs on file:**
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.VirtualMfaDevice("example", {virtualMfaDeviceName: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.VirtualMfaDevice("example", virtual_mfa_device_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Iam.VirtualMfaDevice("example", new()
/// {
/// VirtualMfaDeviceName = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewVirtualMfaDevice(ctx, "example", &iam.VirtualMfaDeviceArgs{
/// VirtualMfaDeviceName: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.VirtualMfaDevice;
/// import com.pulumi.aws.iam.VirtualMfaDeviceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new VirtualMfaDevice("example", VirtualMfaDeviceArgs.builder()
/// .virtualMfaDeviceName("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iam:VirtualMfaDevice
/// properties:
/// virtualMfaDeviceName: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import IAM Virtual MFA Devices using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:iam/virtualMfaDevice:VirtualMfaDevice example arn:aws:iam::123456789012:mfa/example
/// ```
class VirtualMfaDevice extends CustomResource {
  /// Amazon Resource Name (ARN), which is also the serial number, of the virtual MFA device.
  late final Output<String> arn;

  /// Base32 seed defined as specified in [RFC3548](https://tools.ietf.org/html/rfc3548.txt). The <span pulumi-lang-nodejs="`base32StringSeed`" pulumi-lang-dotnet="`Base32StringSeed`" pulumi-lang-go="`base32StringSeed`" pulumi-lang-python="`base_32_string_seed`" pulumi-lang-yaml="`base32StringSeed`" pulumi-lang-java="`base32StringSeed`">`base_32_string_seed`</span> is base64-encoded.
  late final Output<String> base32StringSeed;

  /// Date and time when the virtual MFA device was enabled.
  late final Output<String> enableDate;

  /// Path for the virtual MFA device.
  late final Output<String?> path;

  /// QR code PNG image that encodes `otpauth://totp/$virtualMFADeviceName@$AccountName?secret=$Base32String` where `$virtualMFADeviceName` is one of the create call arguments. `AccountName` is the user name if set (otherwise, the account ID), and `Base32String` is the seed in base32 format.
  late final Output<String> qrCodePng;

  /// Serial number associated with the virtual MFA device.
  late final Output<String> serialNumber;

  /// Map of resource tags for the virtual mfa device. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
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
    this.arn = Output.createUnknown<String>();
    this.base32StringSeed = Output.createUnknown<String>();
    this.enableDate = Output.createUnknown<String>();
    this.path = Output.createUnknown<String?>();
    this.qrCodePng = Output.createUnknown<String>();
    this.serialNumber = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.userName = Output.createUnknown<String>();
    this.virtualMfaDeviceName = Output.createUnknown<String>();
  }
}
