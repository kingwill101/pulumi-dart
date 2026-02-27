import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_by_default_args.dart';

/// Provides a resource to manage whether default EBS encryption is enabled for your AWS account in the current AWS region. To manage the default KMS key for the region, see the `aws.ebs.DefaultKmsKey` resource.
///
/// > **NOTE:** Removing this resource disables default EBS encryption.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the default EBS encryption state. For example:
///
/// ```sh
/// $ pulumi import aws:ebs/encryptionByDefault:EncryptionByDefault example default
/// ```
class EncryptionByDefault extends pulumi.CustomResource {
  /// Whether or not default EBS encryption is enabled. Valid values are `true` or `false`. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  EncryptionByDefault(
    String name, {
    EncryptionByDefaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ebs/encryptionByDefault:EncryptionByDefault',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool?>('enabled');
    this.region = registerOutput<String>('region');
  }
}
