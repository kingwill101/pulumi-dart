import 'package:pulumi/pulumi.dart';
import '../query_suggestions_block_list_source_s3_path/query_suggestions_block_list_source_s3_path.dart';
import 'query_suggestions_block_list_args.dart';

/// Use the `aws_kendra_index_block_list` resource to manage an AWS Kendra block list used for query suggestions for an index.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the `aws.kendra.QuerySuggestionsBlockList` resource using the unique identifiers of the block list and index separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:kendra/querySuggestionsBlockList:QuerySuggestionsBlockList example blocklist-123456780/idx-8012925589
/// ```
class QuerySuggestionsBlockList extends CustomResource {
  /// ARN of the block list.
  late final Output<String> arn;
  late final Output<String?> description;

  /// Identifier of the index for a block list.
  late final Output<String> indexId;

  /// Name for the block list.
  late final Output<String> name;

  /// Unique identifier of the block list.
  late final Output<String> querySuggestionsBlockListId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  late final Output<String> region;

  /// IAM (Identity and Access Management) role used to access the block list text file in S3.
  late final Output<String> roleArn;

  /// S3 path where your block list text file is located. See details below.
  late final Output<QuerySuggestionsBlockListSourceS3Path> sourceS3Path;
  late final Output<String> status;
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider's default_tags configuration block.
  late final Output<Map<String, String>> tagsAll;

  QuerySuggestionsBlockList(
    String name, {
    QuerySuggestionsBlockListArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kendra/querySuggestionsBlockList:QuerySuggestionsBlockList',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.indexId = registerOutput<String>('indexId');
    this.name = registerOutput<String>('name');
    this.querySuggestionsBlockListId =
        registerOutput<String>('querySuggestionsBlockListId');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.sourceS3Path =
        registerOutput<QuerySuggestionsBlockListSourceS3Path>('sourceS3Path');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
