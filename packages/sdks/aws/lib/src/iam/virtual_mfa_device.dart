import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_mfa_device_args.dart';
import 'virtual_mfa_device_state.dart';

/// Provides an IAM Virtual MFA Device.
///
/// &gt; **Note:** All attributes will be stored in the raw state as plain-text.
/// &gt; **Note:** A virtual MFA device cannot be directly associated with an IAM User from the provider.
/// To associate the virtual MFA device with a user and enable it, use the code returned in either `base32StringSeed` or `qrCodePng` to generate TOTP authentication codes.
/// The authentication codes can then be used with the AWS CLI command [`aws iam enable-mfa-device`](https://docs.aws.amazon.com/cli/latest/reference/iam/enable-mfa-device.html) or the AWS API call [`EnableMFADevice`](https://docs.aws.amazon.com/IAM/latest/APIReference/API_EnableMFADevice.html).
///
/// ## Example Usage
///
/// **Using certs on file:**
///
///
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
///     var example = new Aws.Iam.VirtualMfaDevice("example", new()
///     {
///         VirtualMfaDeviceName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewVirtualMfaDevice(ctx, "example", &iam.VirtualMfaDeviceArgs{
/// 			VirtualMfaDeviceName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_iam_virtualmfadevice" "example" {
///   virtual_mfa_device_name = "example"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new VirtualMfaDevice("example", VirtualMfaDeviceArgs.builder()
///             .virtualMfaDeviceName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:VirtualMfaDevice
///     properties:
///       virtualMfaDeviceName: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM Virtual MFA Devices using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/virtualMfaDevice:VirtualMfaDevice example arn:aws:iam::123456789012:mfa/example
/// ```
class VirtualMfaDevice extends pulumi.CustomResource {
  /// ARN, which is also the serial number, of the virtual MFA device.
  late final pulumi.Output<String> arn;
  /// Base32 seed defined as specified in [RFC3548](https://tools.ietf.org/html/rfc3548.txt). The `base32StringSeed` is base64-encoded.
  late final pulumi.Output<String> base32StringSeed;
  /// Date and time when the virtual MFA device was enabled.
  late final pulumi.Output<String> enableDate;
  /// Path for the virtual MFA device.
  late final pulumi.Output<String?> path;
  /// QR code PNG image that encodes `otpauth://totp/$virtualMFADeviceName@$AccountName?secret=$Base32String` where `$virtualMFADeviceName` is one of the create call arguments. `AccountName` is the user name if set (otherwise, the account ID), and `Base32String` is the seed in base32 format.
  late final pulumi.Output<String> qrCodePng;
  /// Serial number associated with the virtual MFA device.
  late final pulumi.Output<String> serialNumber;
  /// Map of resource tags for the virtual mfa device. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Name of the IAM user associated with this virtual MFA device.
  late final pulumi.Output<String> userName;
  /// Name of the virtual MFA device. Use with path to uniquely identify a virtual MFA device.
  late final pulumi.Output<String> virtualMfaDeviceName;

  /// Creates a new [VirtualMfaDevice].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMfaDevice]. {@macro pulumi_iam_virtual_mfa_device_virtual_mfa_device_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMfaDevice(
    String name, {
    VirtualMfaDeviceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/virtualMfaDevice:VirtualMfaDevice',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    base32StringSeed = registerOutput<String>('base32StringSeed');
    enableDate = registerOutput<String>('enableDate');
    path = registerOutput<String?>('path');
    qrCodePng = registerOutput<String>('qrCodePng');
    serialNumber = registerOutput<String>('serialNumber');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userName = registerOutput<String>('userName');
    virtualMfaDeviceName = registerOutput<String>('virtualMfaDeviceName');
  }

  /// Gets an existing [VirtualMfaDevice] resource's state with the given [name] and [id].
  static VirtualMfaDevice get(
    String name,
    pulumi.Input<String> id, {
    VirtualMfaDeviceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VirtualMfaDevice._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VirtualMfaDevice._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/virtualMfaDevice:VirtualMfaDevice',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    base32StringSeed = registerOutput<String>('base32StringSeed');
    enableDate = registerOutput<String>('enableDate');
    path = registerOutput<String?>('path');
    qrCodePng = registerOutput<String>('qrCodePng');
    serialNumber = registerOutput<String>('serialNumber');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userName = registerOutput<String>('userName');
    virtualMfaDeviceName = registerOutput<String>('virtualMfaDeviceName');
  }

  /// Creates a typed reference to an existing [VirtualMfaDevice] resource.
  VirtualMfaDevice.reference(String urn)
    : super(
        'aws:iam/virtualMfaDevice:VirtualMfaDevice',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    base32StringSeed = registerOutput<String>('base32StringSeed');
    enableDate = registerOutput<String>('enableDate');
    path = registerOutput<String?>('path');
    qrCodePng = registerOutput<String>('qrCodePng');
    serialNumber = registerOutput<String>('serialNumber');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userName = registerOutput<String>('userName');
    virtualMfaDeviceName = registerOutput<String>('virtualMfaDeviceName');
  }
}
