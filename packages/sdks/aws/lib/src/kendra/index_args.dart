// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_capacity_units.dart';
import 'index_document_metadata_configuration_update.dart';
import 'index_server_side_encryption_configuration.dart';
import 'index_user_group_resolution_configuration.dart';
import 'index_user_token_configurations.dart';

/// {@template pulumi_kendra_index_index_args_doc}
/// The set of arguments for Index.
/// {@endtemplate}
/// {@macro pulumi_kendra_index_index_args_doc}
class IndexArgs {
  /// A block that sets the number of additional document storage and query capacity units that should be used by the index. Detailed below.
  final pulumi.Input<IndexCapacityUnits>? capacityUnits;
  /// The description of the Index.
  final pulumi.Input<String>? description;
  /// One or more blocks that specify the configuration settings for any metadata applied to the documents in the index. Minimum number of 0 items. Maximum number of 500 items. If specified, you must define all elements, including those that are provided by default. These index fields are documented at [Amazon Kendra Index documentation](https://docs.aws.amazon.com/kendra/latest/dg/hiw-index.html). For an example resource that defines these default index fields, refer to the default example above. For an example resource that appends additional index fields, refer to the append example above. All arguments for each block must be specified. Note that blocks cannot be removed since index fields cannot be deleted. This argument is detailed below.
  final pulumi.Input<List<IndexDocumentMetadataConfigurationUpdate>>? documentMetadataConfigurationUpdates;
  /// The Amazon Kendra edition to use for the index. Choose `DEVELOPER_EDITION` for indexes intended for development, testing, or proof of concept. Use `ENTERPRISE_EDITION` for your production databases. Use `GEN_AI_ENTERPRISE_EDITION` for creating generative AI applications. Once you set the edition for an index, it can't be changed. Defaults to `ENTERPRISE_EDITION`.
  final pulumi.Input<String>? edition;
  /// Specifies the name of the Index.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// An AWS Identity and Access Management (IAM) role that gives Amazon Kendra permissions to access your Amazon CloudWatch logs and metrics. This is also the role you use when you call the `BatchPutDocument` API to index documents from an Amazon S3 bucket.
  final pulumi.Input<String> roleArn;
  /// A block that specifies the identifier of the AWS KMS customer managed key (CMK) that's used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs. Detailed below.
  final pulumi.Input<IndexServerSideEncryptionConfiguration>? serverSideEncryptionConfiguration;
  /// Tags to apply to the Index. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The user context policy. Valid values are `ATTRIBUTE_FILTER` or `USER_TOKEN`. For more information, refer to [UserContextPolicy](https://docs.aws.amazon.com/kendra/latest/APIReference/API_CreateIndex.html#kendra-CreateIndex-request-UserContextPolicy). Defaults to `ATTRIBUTE_FILTER`.
  final pulumi.Input<String>? userContextPolicy;
  /// A block that enables fetching access levels of groups and users from an AWS Single Sign-On identity source. To configure this, see [UserGroupResolutionConfiguration](https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html). Detailed below.
  final pulumi.Input<IndexUserGroupResolutionConfiguration>? userGroupResolutionConfiguration;
  /// A block that specifies the user token configuration. Detailed below.
  final pulumi.Input<IndexUserTokenConfigurations>? userTokenConfigurations;

  /// Creates a new [IndexArgs].
  /// [capacityUnits] A block that sets the number of additional document storage and query capacity units that should be used by the index. Detailed below.
  /// [description] The description of the Index.
  /// [documentMetadataConfigurationUpdates] One or more blocks that specify the configuration settings for any metadata applied to the documents in the index. Minimum number of 0 items. Maximum number of 500 items. If specified, you must define all elements, including those that are provided by default. These index fields are documented at [Amazon Kendra Index documentation](https://docs.aws.amazon.com/kendra/latest/dg/hiw-index.html). For an example resource that defines these default index fields, refer to the default example above. For an example resource that appends additional index fields, refer to the append example above. All arguments for each block must be specified. Note that blocks cannot be removed since index fields cannot be deleted. This argument is detailed below.
  /// [edition] The Amazon Kendra edition to use for the index. Choose `DEVELOPER_EDITION` for indexes intended for development, testing, or proof of concept. Use `ENTERPRISE_EDITION` for your production databases. Use `GEN_AI_ENTERPRISE_EDITION` for creating generative AI applications. Once you set the edition for an index, it can't be changed. Defaults to `ENTERPRISE_EDITION`.
  /// [name] Specifies the name of the Index.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] An AWS Identity and Access Management (IAM) role that gives Amazon Kendra permissions to access your Amazon CloudWatch logs and metrics. This is also the role you use when you call the `BatchPutDocument` API to index documents from an Amazon S3 bucket.
  /// [serverSideEncryptionConfiguration] A block that specifies the identifier of the AWS KMS customer managed key (CMK) that's used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs. Detailed below.
  /// [tags] Tags to apply to the Index. If configured with a provider
  /// [userContextPolicy] The user context policy. Valid values are `ATTRIBUTE_FILTER` or `USER_TOKEN`. For more information, refer to [UserContextPolicy](https://docs.aws.amazon.com/kendra/latest/APIReference/API_CreateIndex.html#kendra-CreateIndex-request-UserContextPolicy). Defaults to `ATTRIBUTE_FILTER`.
  /// [userGroupResolutionConfiguration] A block that enables fetching access levels of groups and users from an AWS Single Sign-On identity source. To configure this, see [UserGroupResolutionConfiguration](https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html). Detailed below.
  /// [userTokenConfigurations] A block that specifies the user token configuration. Detailed below.
  const IndexArgs({
    this.capacityUnits,
    this.description,
    this.documentMetadataConfigurationUpdates,
    this.edition,
    this.name,
    this.region,
    required this.roleArn,
    this.serverSideEncryptionConfiguration,
    this.tags,
    this.userContextPolicy,
    this.userGroupResolutionConfiguration,
    this.userTokenConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityUnits': ?pulumi.Input.mapOptionalInputValue<IndexCapacityUnits, Map<String, dynamic>>(capacityUnits, (value) => value.toMap()),
      'description': ?description,
      'documentMetadataConfigurationUpdates': ?pulumi.Input.mapOptionalInputValue<List<IndexDocumentMetadataConfigurationUpdate>, List<Map<String, dynamic>>>(documentMetadataConfigurationUpdates, (value) => pulumi.Input.encodeList<IndexDocumentMetadataConfigurationUpdate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'edition': ?edition,
      'name': ?name,
      'region': ?region,
      'roleArn': roleArn,
      'serverSideEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<IndexServerSideEncryptionConfiguration, Map<String, dynamic>>(serverSideEncryptionConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'userContextPolicy': ?userContextPolicy,
      'userGroupResolutionConfiguration': ?pulumi.Input.mapOptionalInputValue<IndexUserGroupResolutionConfiguration, Map<String, dynamic>>(userGroupResolutionConfiguration, (value) => value.toMap()),
      'userTokenConfigurations': ?pulumi.Input.mapOptionalInputValue<IndexUserTokenConfigurations, Map<String, dynamic>>(userTokenConfigurations, (value) => value.toMap()),
    };
  }

  factory IndexArgs.fromMap(Map<String, dynamic> map) {
    return IndexArgs(
      capacityUnits: (() { final guardedValue = map['capacityUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexCapacityUnits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentMetadataConfigurationUpdates: (() { final guardedValue = map['documentMetadataConfigurationUpdates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IndexDocumentMetadataConfigurationUpdate>(guardedValue, (value) => IndexDocumentMetadataConfigurationUpdate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      serverSideEncryptionConfiguration: (() { final guardedValue = map['serverSideEncryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexServerSideEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userContextPolicy: (() { final guardedValue = map['userContextPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userGroupResolutionConfiguration: (() { final guardedValue = map['userGroupResolutionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexUserGroupResolutionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userTokenConfigurations: (() { final guardedValue = map['userTokenConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexUserTokenConfigurations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

