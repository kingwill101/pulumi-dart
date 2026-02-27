import 'package:pulumi/pulumi.dart' as pulumi;
import '../conformance_pack_input_parameter/conformance_pack_input_parameter.dart';
import 'conformance_pack_args.dart';

/// Manages a Config Conformance Pack. More information about this collection of Config rules and remediation actions can be found in the
/// [Conformance Packs](https://docs.aws.amazon.com/config/latest/developerguide/conformance-packs.html) documentation.
/// Sample Conformance Pack templates may be found in the
/// [AWS Config Rules Repository](https://github.com/awslabs/aws-config-rules/tree/master/aws-config-conformance-packs).
///
/// > **NOTE:** The account must have a Configuration Recorder with proper IAM permissions before the Conformance Pack will
/// successfully create or update. See also the
/// `aws.cfg.Recorder` resource.
///
/// ## Example Usage
///
/// ### Template Body
///
///
///
/// ### Template S3 URI
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Config Conformance Packs using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/conformancePack:ConformancePack example example
/// ```
class ConformancePack extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the conformance pack.
  late final pulumi.Output<String> arn;

  /// Amazon S3 bucket where AWS Config stores conformance pack templates. Maximum length of 63.
  late final pulumi.Output<String?> deliveryS3Bucket;

  /// The prefix for the Amazon S3 bucket. Maximum length of 1024.
  late final pulumi.Output<String?> deliveryS3KeyPrefix;

  /// Set of configuration blocks describing input parameters passed to the conformance pack template. Documented below. When configured, the parameters must also be included in the `template_body` or in the template stored in Amazon S3 if using `template_s3_uri`.
  late final pulumi.Output<List<ConformancePackInputParameter>?>
      inputParameters;

  /// The name of the conformance pack. Must begin with a letter and contain from 1 to 256 alphanumeric characters and hyphens.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A string containing full conformance pack template body. Maximum length of 51200. Drift detection is not possible with this argument.
  late final pulumi.Output<String?> templateBody;

  /// Location of file, e.g., `s3://bucketname/prefix`, containing the template body. The uri must point to the conformance pack template that is located in an Amazon S3 bucket in the same region as the conformance pack. Maximum length of 1024. Drift detection is not possible with this argument.
  ///
  /// > **Note:** If both `template_body` and `template_s3_uri` are specified, AWS Config uses the `template_s3_uri` and ignores the `template_body`.
  late final pulumi.Output<String?> templateS3Uri;

  ConformancePack(
    String name, {
    ConformancePackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/conformancePack:ConformancePack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deliveryS3Bucket = registerOutput<String?>('deliveryS3Bucket');
    this.deliveryS3KeyPrefix = registerOutput<String?>('deliveryS3KeyPrefix');
    this.inputParameters =
        registerOutput<List<ConformancePackInputParameter>?>('inputParameters');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.templateBody = registerOutput<String?>('templateBody');
    this.templateS3Uri = registerOutput<String?>('templateS3Uri');
  }
}
