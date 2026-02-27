import 'package:pulumi/pulumi.dart';
import '../thesaurus_source_s3_path/thesaurus_source_s3_path.dart';
import 'thesaurus_args.dart';

/// Resource for managing an AWS Kendra Thesaurus.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.kendra.Thesaurus` using the unique identifiers of the thesaurus and index separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:kendra/thesaurus:Thesaurus example thesaurus-123456780/idx-8012925589
/// ```
class Thesaurus extends CustomResource {
  /// ARN of the thesaurus.
  late final Output<String> arn;
  late final Output<String?> description;

  /// The identifier of the index for a thesaurus.
  late final Output<String> indexId;

  /// The name for the thesaurus.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  late final Output<String> region;

  /// The IAM (Identity and Access Management) role used to access the thesaurus file in S3.
  late final Output<String> roleArn;

  /// The S3 path where your thesaurus file sits in S3. Detailed below.
  late final Output<ThesaurusSourceS3Path> sourceS3Path;

  /// The current status of the thesaurus.
  late final Output<String> status;
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<String> thesaurusId;

  Thesaurus(
    String name, {
    ThesaurusArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kendra/thesaurus:Thesaurus',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.indexId = registerOutput<String>('indexId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.sourceS3Path = registerOutput<ThesaurusSourceS3Path>('sourceS3Path');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.thesaurusId = registerOutput<String>('thesaurusId');
  }
}
