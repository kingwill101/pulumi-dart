import 'package:pulumi/pulumi.dart';
import '../faq_s3_path/faq_s3_path.dart';
import 'faq_args.dart';

/// Resource for managing an AWS Kendra FAQ.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### With File Format
///
///
///
/// ### With Language Code
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.kendra.Faq` using the unique identifiers of the FAQ and index separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:kendra/faq:Faq example faq-123456780/idx-8012925589
/// ```
class Faq extends CustomResource {
  /// ARN of the FAQ.
  late final Output<String> arn;

  /// The Unix datetime that the FAQ was created.
  late final Output<String> createdAt;
  late final Output<String?> description;

  /// When the Status field value is `FAILED`, this contains a message that explains why.
  late final Output<String> errorMessage;

  /// The identifier of the FAQ.
  late final Output<String> faqId;
  late final Output<String?> fileFormat;

  /// The identifier of the index for a FAQ.
  late final Output<String> indexId;
  late final Output<String> languageCode;

  /// The name that should be associated with the FAQ.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of a role with permission to access the S3 bucket that contains the FAQs. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  late final Output<String> roleArn;

  /// The S3 location of the FAQ input data. Detailed below.
  late final Output<FaqS3Path> s3Path;

  /// The status of the FAQ. It is ready to use when the status is ACTIVE.
  late final Output<String> status;
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The date and time that the FAQ was last updated.
  late final Output<String> updatedAt;

  Faq(
    String name, {
    FaqArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kendra/faq:Faq',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.description = registerOutput<String?>('description');
    this.errorMessage = registerOutput<String>('errorMessage');
    this.faqId = registerOutput<String>('faqId');
    this.fileFormat = registerOutput<String?>('fileFormat');
    this.indexId = registerOutput<String>('indexId');
    this.languageCode = registerOutput<String>('languageCode');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.s3Path = registerOutput<FaqS3Path>('s3Path');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updatedAt = registerOutput<String>('updatedAt');
  }
}
