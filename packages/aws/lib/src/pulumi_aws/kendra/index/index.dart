import 'package:pulumi/pulumi.dart' as pulumi;
import '../index_capacity_units/index_capacity_units.dart';
import '../index_document_metadata_configuration_update/index_document_metadata_configuration_update.dart';
import '../index_index_statistic/index_index_statistic.dart';
import '../index_server_side_encryption_configuration/index_server_side_encryption_configuration.dart';
import '../index_user_group_resolution_configuration/index_user_group_resolution_configuration.dart';
import '../index_user_token_configurations/index_user_token_configurations.dart';
import 'index_args.dart';

/// Provides an Amazon Kendra Index resource.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### With capacity units
///
///
///
/// ### With server side encryption configuration
///
///
///
/// ### With user group resolution configuration
///
///
///
/// ### With Document Metadata Configuration Updates
///
/// ### Specifying the predefined elements
///
/// Refer to [Amazon Kendra documentation on built-in document fields](https://docs.aws.amazon.com/kendra/latest/dg/hiw-index.html#index-reserved-fields) for more information.
///
///
///
/// ### Appending additional elements
///
/// The example below shows additional elements with names, `example-string-value`, `example-long-value`, `example-string-list-value`, `example-date-value` representing the 4 types of `STRING_VALUE`, `LONG_VALUE`, `STRING_LIST_VALUE`, `DATE_VALUE` respectively.
///
///
///
/// ### With JSON token type configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Kendra Indexes using its `id`. For example:
///
/// ```sh
/// $ pulumi import aws:kendra/index:Index example 12345678-1234-5678-9123-123456789123
/// ```
class Index extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the Index.
  late final pulumi.Output<String> arn;

  /// A block that sets the number of additional document storage and query capacity units that should be used by the index. Detailed below.
  late final pulumi.Output<IndexCapacityUnits> capacityUnits;

  /// The Unix datetime that the index was created.
  late final pulumi.Output<String> createdAt;

  /// The description of the Index.
  late final pulumi.Output<String?> description;

  /// One or more blocks that specify the configuration settings for any metadata applied to the documents in the index. Minimum number of 0 items. Maximum number of 500 items. If specified, you must define all elements, including those that are provided by default. These index fields are documented at [Amazon Kendra Index documentation](https://docs.aws.amazon.com/kendra/latest/dg/hiw-index.html). For an example resource that defines these default index fields, refer to the default example above. For an example resource that appends additional index fields, refer to the append example above. All arguments for each block must be specified. Note that blocks cannot be removed since index fields cannot be deleted. This argument is detailed below.
  late final pulumi.Output<List<IndexDocumentMetadataConfigurationUpdate>>
      documentMetadataConfigurationUpdates;

  /// The Amazon Kendra edition to use for the index. Choose `DEVELOPER_EDITION` for indexes intended for development, testing, or proof of concept. Use `ENTERPRISE_EDITION` for your production databases. Use `GEN_AI_ENTERPRISE_EDITION` for creating generative AI applications. Once you set the edition for an index, it can't be changed. Defaults to `ENTERPRISE_EDITION`.
  late final pulumi.Output<String?> edition;

  /// When the Status field value is `FAILED`, this contains a message that explains why.
  late final pulumi.Output<String> errorMessage;

  /// A block that provides information about the number of FAQ questions and answers and the number of text documents indexed. Detailed below.
  late final pulumi.Output<List<IndexIndexStatistic>> indexStatistics;

  /// Specifies the name of the Index.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// An AWS Identity and Access Management (IAM) role that gives Amazon Kendra permissions to access your Amazon CloudWatch logs and metrics. This is also the role you use when you call the `BatchPutDocument` API to index documents from an Amazon S3 bucket.
  late final pulumi.Output<String> roleArn;

  /// A block that specifies the identifier of the AWS KMS customer managed key (CMK) that's used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs. Detailed below.
  late final pulumi.Output<IndexServerSideEncryptionConfiguration?>
      serverSideEncryptionConfiguration;

  /// The current status of the index. When the value is `ACTIVE`, the index is ready for use. If the Status field value is `FAILED`, the `error_message` field contains a message that explains why.
  late final pulumi.Output<String> status;

  /// Tags to apply to the Index. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The Unix datetime that the index was last updated.
  late final pulumi.Output<String> updatedAt;

  /// The user context policy. Valid values are `ATTRIBUTE_FILTER` or `USER_TOKEN`. For more information, refer to [UserContextPolicy](https://docs.aws.amazon.com/kendra/latest/APIReference/API_CreateIndex.html#kendra-CreateIndex-request-UserContextPolicy). Defaults to `ATTRIBUTE_FILTER`.
  late final pulumi.Output<String?> userContextPolicy;

  /// A block that enables fetching access levels of groups and users from an AWS Single Sign-On identity source. To configure this, see [UserGroupResolutionConfiguration](https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html). Detailed below.
  late final pulumi.Output<IndexUserGroupResolutionConfiguration?>
      userGroupResolutionConfiguration;

  /// A block that specifies the user token configuration. Detailed below.
  late final pulumi.Output<IndexUserTokenConfigurations?>
      userTokenConfigurations;

  Index(
    String name, {
    IndexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kendra/index:Index',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.capacityUnits = registerOutput<IndexCapacityUnits>('capacityUnits');
    this.createdAt = registerOutput<String>('createdAt');
    this.description = registerOutput<String?>('description');
    this.documentMetadataConfigurationUpdates =
        registerOutput<List<IndexDocumentMetadataConfigurationUpdate>>(
            'documentMetadataConfigurationUpdates');
    this.edition = registerOutput<String?>('edition');
    this.errorMessage = registerOutput<String>('errorMessage');
    this.indexStatistics =
        registerOutput<List<IndexIndexStatistic>>('indexStatistics');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.serverSideEncryptionConfiguration =
        registerOutput<IndexServerSideEncryptionConfiguration?>(
            'serverSideEncryptionConfiguration');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updatedAt = registerOutput<String>('updatedAt');
    this.userContextPolicy = registerOutput<String?>('userContextPolicy');
    this.userGroupResolutionConfiguration =
        registerOutput<IndexUserGroupResolutionConfiguration?>(
            'userGroupResolutionConfiguration');
    this.userTokenConfigurations =
        registerOutput<IndexUserTokenConfigurations?>(
            'userTokenConfigurations');
  }
}
