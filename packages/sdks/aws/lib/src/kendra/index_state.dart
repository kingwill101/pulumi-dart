// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_capacity_units.dart';
import 'index_document_metadata_configuration_update.dart';
import 'index_index_statistic.dart';
import 'index_server_side_encryption_configuration.dart';
import 'index_user_group_resolution_configuration.dart';
import 'index_user_token_configurations.dart';

/// Input properties used for looking up and filtering Index resources.
class IndexState {
  /// The Amazon Resource Name (ARN) of the Index.
  final pulumi.Input<String>? arn;
  /// A block that sets the number of additional document storage and query capacity units that should be used by the index. Detailed below.
  final pulumi.Input<IndexCapacityUnits>? capacityUnits;
  /// The Unix datetime that the index was created.
  final pulumi.Input<String>? createdAt;
  /// The description of the Index.
  final pulumi.Input<String>? description;
  /// One or more blocks that specify the configuration settings for any metadata applied to the documents in the index. Minimum number of 0 items. Maximum number of 500 items. If specified, you must define all elements, including those that are provided by default. These index fields are documented at [Amazon Kendra Index documentation](https://docs.aws.amazon.com/kendra/latest/dg/hiw-index.html). For an example resource that defines these default index fields, refer to the default example above. For an example resource that appends additional index fields, refer to the append example above. All arguments for each block must be specified. Note that blocks cannot be removed since index fields cannot be deleted. This argument is detailed below.
  final pulumi.Input<List<IndexDocumentMetadataConfigurationUpdate>>? documentMetadataConfigurationUpdates;
  /// The Amazon Kendra edition to use for the index. Choose `DEVELOPER_EDITION` for indexes intended for development, testing, or proof of concept. Use `ENTERPRISE_EDITION` for your production databases. Use `GEN_AI_ENTERPRISE_EDITION` for creating generative AI applications. Once you set the edition for an index, it can't be changed. Defaults to `ENTERPRISE_EDITION`.
  final pulumi.Input<String>? edition;
  /// When the Status field value is `FAILED`, this contains a message that explains why.
  final pulumi.Input<String>? errorMessage;
  /// A block that provides information about the number of FAQ questions and answers and the number of text documents indexed. Detailed below.
  final pulumi.Input<List<IndexIndexStatistic>>? indexStatistics;
  /// Specifies the name of the Index.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// An AWS Identity and Access Management (IAM) role that gives Amazon Kendra permissions to access your Amazon CloudWatch logs and metrics. This is also the role you use when you call the `BatchPutDocument` API to index documents from an Amazon S3 bucket.
  final pulumi.Input<String>? roleArn;
  /// A block that specifies the identifier of the AWS KMS customer managed key (CMK) that's used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs. Detailed below.
  final pulumi.Input<IndexServerSideEncryptionConfiguration>? serverSideEncryptionConfiguration;
  /// The current status of the index. When the value is `ACTIVE`, the index is ready for use. If the Status field value is `FAILED`, the `error_message` field contains a message that explains why.
  final pulumi.Input<String>? status;
  /// Tags to apply to the Index. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The Unix datetime that the index was last updated.
  final pulumi.Input<String>? updatedAt;
  /// The user context policy. Valid values are `ATTRIBUTE_FILTER` or `USER_TOKEN`. For more information, refer to [UserContextPolicy](https://docs.aws.amazon.com/kendra/latest/APIReference/API_CreateIndex.html#kendra-CreateIndex-request-UserContextPolicy). Defaults to `ATTRIBUTE_FILTER`.
  final pulumi.Input<String>? userContextPolicy;
  /// A block that enables fetching access levels of groups and users from an AWS Single Sign-On identity source. To configure this, see [UserGroupResolutionConfiguration](https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html). Detailed below.
  final pulumi.Input<IndexUserGroupResolutionConfiguration>? userGroupResolutionConfiguration;
  /// A block that specifies the user token configuration. Detailed below.
  final pulumi.Input<IndexUserTokenConfigurations>? userTokenConfigurations;

  /// Creates a new [IndexState].
  /// [arn] The Amazon Resource Name (ARN) of the Index.
  /// [capacityUnits] A block that sets the number of additional document storage and query capacity units that should be used by the index. Detailed below.
  /// [createdAt] The Unix datetime that the index was created.
  /// [description] The description of the Index.
  /// [documentMetadataConfigurationUpdates] One or more blocks that specify the configuration settings for any metadata applied to the documents in the index. Minimum number of 0 items. Maximum number of 500 items. If specified, you must define all elements, including those that are provided by default. These index fields are documented at [Amazon Kendra Index documentation](https://docs.aws.amazon.com/kendra/latest/dg/hiw-index.html). For an example resource that defines these default index fields, refer to the default example above. For an example resource that appends additional index fields, refer to the append example above. All arguments for each block must be specified. Note that blocks cannot be removed since index fields cannot be deleted. This argument is detailed below.
  /// [edition] The Amazon Kendra edition to use for the index. Choose `DEVELOPER_EDITION` for indexes intended for development, testing, or proof of concept. Use `ENTERPRISE_EDITION` for your production databases. Use `GEN_AI_ENTERPRISE_EDITION` for creating generative AI applications. Once you set the edition for an index, it can't be changed. Defaults to `ENTERPRISE_EDITION`.
  /// [errorMessage] When the Status field value is `FAILED`, this contains a message that explains why.
  /// [indexStatistics] A block that provides information about the number of FAQ questions and answers and the number of text documents indexed. Detailed below.
  /// [name] Specifies the name of the Index.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] An AWS Identity and Access Management (IAM) role that gives Amazon Kendra permissions to access your Amazon CloudWatch logs and metrics. This is also the role you use when you call the `BatchPutDocument` API to index documents from an Amazon S3 bucket.
  /// [serverSideEncryptionConfiguration] A block that specifies the identifier of the AWS KMS customer managed key (CMK) that's used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs. Detailed below.
  /// [status] The current status of the index. When the value is `ACTIVE`, the index is ready for use. If the Status field value is `FAILED`, the `error_message` field contains a message that explains why.
  /// [tags] Tags to apply to the Index. If configured with a provider
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [updatedAt] The Unix datetime that the index was last updated.
  /// [userContextPolicy] The user context policy. Valid values are `ATTRIBUTE_FILTER` or `USER_TOKEN`. For more information, refer to [UserContextPolicy](https://docs.aws.amazon.com/kendra/latest/APIReference/API_CreateIndex.html#kendra-CreateIndex-request-UserContextPolicy). Defaults to `ATTRIBUTE_FILTER`.
  /// [userGroupResolutionConfiguration] A block that enables fetching access levels of groups and users from an AWS Single Sign-On identity source. To configure this, see [UserGroupResolutionConfiguration](https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html). Detailed below.
  /// [userTokenConfigurations] A block that specifies the user token configuration. Detailed below.
  IndexState({
    pulumi.Output<String>? arn,
    pulumi.Output<IndexCapacityUnits>? capacityUnits,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? description,
    pulumi.Output<List<IndexDocumentMetadataConfigurationUpdate>>? documentMetadataConfigurationUpdates,
    pulumi.Output<String>? edition,
    pulumi.Output<String>? errorMessage,
    pulumi.Output<List<IndexIndexStatistic>>? indexStatistics,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<IndexServerSideEncryptionConfiguration>? serverSideEncryptionConfiguration,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? updatedAt,
    pulumi.Output<String>? userContextPolicy,
    pulumi.Output<IndexUserGroupResolutionConfiguration>? userGroupResolutionConfiguration,
    pulumi.Output<IndexUserTokenConfigurations>? userTokenConfigurations,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      capacityUnits = pulumi.Input.asOptionalInput<IndexCapacityUnits>(capacityUnits),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      description = pulumi.Input.asOptionalInput<String>(description),
      documentMetadataConfigurationUpdates = pulumi.Input.asOptionalInput<List<IndexDocumentMetadataConfigurationUpdate>>(documentMetadataConfigurationUpdates),
      edition = pulumi.Input.asOptionalInput<String>(edition),
      errorMessage = pulumi.Input.asOptionalInput<String>(errorMessage),
      indexStatistics = pulumi.Input.asOptionalInput<List<IndexIndexStatistic>>(indexStatistics),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      serverSideEncryptionConfiguration = pulumi.Input.asOptionalInput<IndexServerSideEncryptionConfiguration>(serverSideEncryptionConfiguration),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt),
      userContextPolicy = pulumi.Input.asOptionalInput<String>(userContextPolicy),
      userGroupResolutionConfiguration = pulumi.Input.asOptionalInput<IndexUserGroupResolutionConfiguration>(userGroupResolutionConfiguration),
      userTokenConfigurations = pulumi.Input.asOptionalInput<IndexUserTokenConfigurations>(userTokenConfigurations);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'capacityUnits': ?pulumi.Input.mapOptionalInputValue<IndexCapacityUnits, Map<String, dynamic>>(capacityUnits, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'description': ?description,
      'documentMetadataConfigurationUpdates': ?pulumi.Input.mapOptionalInputValue<List<IndexDocumentMetadataConfigurationUpdate>, List<Map<String, dynamic>>>(documentMetadataConfigurationUpdates, (value) => pulumi.Input.encodeList<IndexDocumentMetadataConfigurationUpdate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'edition': ?edition,
      'errorMessage': ?errorMessage,
      'indexStatistics': ?pulumi.Input.mapOptionalInputValue<List<IndexIndexStatistic>, List<Map<String, dynamic>>>(indexStatistics, (value) => pulumi.Input.encodeList<IndexIndexStatistic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      'serverSideEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<IndexServerSideEncryptionConfiguration, Map<String, dynamic>>(serverSideEncryptionConfiguration, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'updatedAt': ?updatedAt,
      'userContextPolicy': ?userContextPolicy,
      'userGroupResolutionConfiguration': ?pulumi.Input.mapOptionalInputValue<IndexUserGroupResolutionConfiguration, Map<String, dynamic>>(userGroupResolutionConfiguration, (value) => value.toMap()),
      'userTokenConfigurations': ?pulumi.Input.mapOptionalInputValue<IndexUserTokenConfigurations, Map<String, dynamic>>(userTokenConfigurations, (value) => value.toMap()),
    };
  }

  factory IndexState.fromMap(Map<String, dynamic> map) {
    return IndexState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      capacityUnits: map['capacityUnits'] == null ? null : pulumi.Output.create<IndexCapacityUnits>(IndexCapacityUnits.fromMap((map['capacityUnits'] as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      documentMetadataConfigurationUpdates: map['documentMetadataConfigurationUpdates'] == null ? null : pulumi.Output.create<List<IndexDocumentMetadataConfigurationUpdate>>(pulumi.Input.decodeList<IndexDocumentMetadataConfigurationUpdate>(map['documentMetadataConfigurationUpdates'], (value) => IndexDocumentMetadataConfigurationUpdate.fromMap((value as Map).cast<String, dynamic>()))),
      edition: map['edition'] == null ? null : pulumi.Output.create<String>(map['edition'] as String),
      errorMessage: map['errorMessage'] == null ? null : pulumi.Output.create<String>(map['errorMessage'] as String),
      indexStatistics: map['indexStatistics'] == null ? null : pulumi.Output.create<List<IndexIndexStatistic>>(pulumi.Input.decodeList<IndexIndexStatistic>(map['indexStatistics'], (value) => IndexIndexStatistic.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      serverSideEncryptionConfiguration: map['serverSideEncryptionConfiguration'] == null ? null : pulumi.Output.create<IndexServerSideEncryptionConfiguration>(IndexServerSideEncryptionConfiguration.fromMap((map['serverSideEncryptionConfiguration'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
      userContextPolicy: map['userContextPolicy'] == null ? null : pulumi.Output.create<String>(map['userContextPolicy'] as String),
      userGroupResolutionConfiguration: map['userGroupResolutionConfiguration'] == null ? null : pulumi.Output.create<IndexUserGroupResolutionConfiguration>(IndexUserGroupResolutionConfiguration.fromMap((map['userGroupResolutionConfiguration'] as Map).cast<String, dynamic>())),
      userTokenConfigurations: map['userTokenConfigurations'] == null ? null : pulumi.Output.create<IndexUserTokenConfigurations>(IndexUserTokenConfigurations.fromMap((map['userTokenConfigurations'] as Map).cast<String, dynamic>())),
    );
  }
}

