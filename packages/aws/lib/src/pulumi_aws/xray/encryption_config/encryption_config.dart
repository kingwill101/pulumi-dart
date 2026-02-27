import 'package:pulumi/pulumi.dart';
import 'encryption_config_args.dart';

/// Creates and manages an AWS XRay Encryption Config.
///
/// > **NOTE:** Removing this resource from the provider has no effect to the encryption configuration within X-Ray.
///
/// ## Example Usage
///
///
///
///
/// ### With KMS Key
///
///
///
/// ## Import
///
/// Using `pulumi import`, import XRay Encryption Config using the region name. For example:
///
/// ```sh
/// $ pulumi import aws:xray/encryptionConfig:EncryptionConfig example us-west-2
/// ```
class EncryptionConfig extends CustomResource {
  /// An AWS KMS customer master key (CMK) ARN.
  late final Output<String?> keyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The type of encryption. Set to `KMS` to use your own key for encryption. Set to `NONE` for default encryption.
  late final Output<String> type;

  EncryptionConfig(
    String name, {
    EncryptionConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:xray/encryptionConfig:EncryptionConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.keyId = registerOutput<String?>('keyId');
    this.region = registerOutput<String>('region');
    this.type = registerOutput<String>('type');
  }
}
