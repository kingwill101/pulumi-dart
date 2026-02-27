import 'package:pulumi/pulumi.dart';
import 'default_kms_key_args.dart';

/// Provides a resource to manage the default customer master key (CMK) that your AWS account uses to encrypt EBS volumes.
///
/// Your AWS account has an AWS-managed default CMK that is used for encrypting an EBS volume when no CMK is specified in the API call that creates the volume.
/// By using the `aws.ebs.DefaultKmsKey` resource, you can specify a customer-managed CMK to use in place of the AWS-managed default CMK.
///
/// > **NOTE:** Creating an `aws.ebs.DefaultKmsKey` resource does not enable default EBS encryption. Use the `aws.ebs.EncryptionByDefault` to enable default EBS encryption.
///
/// > **NOTE:** Destroying this resource will reset the default CMK to the account's AWS-managed default CMK for EBS.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the EBS default KMS CMK using the KMS key ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ebs/defaultKmsKey:DefaultKmsKey example arn:aws:kms:us-east-1:123456789012:key/abcd-1234
/// ```
class DefaultKmsKey extends CustomResource {
  /// The ARN of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use to encrypt the EBS volume.
  late final Output<String> keyArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  DefaultKmsKey(
    String name, {
    DefaultKmsKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ebs/defaultKmsKey:DefaultKmsKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.keyArn = registerOutput<String>('keyArn');
    this.region = registerOutput<String>('region');
  }
}
