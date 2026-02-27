// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../index_capacity_units/index_capacity_units.dart';
import '../index_document_metadata_configuration_update/index_document_metadata_configuration_update.dart';
import '../index_server_side_encryption_configuration/index_server_side_encryption_configuration.dart';
import '../index_user_group_resolution_configuration/index_user_group_resolution_configuration.dart';
import '../index_user_token_configurations/index_user_token_configurations.dart';

/// The set of arguments for Index.
class IndexArgs {
  /// A block that sets the number of additional document storage and query capacity units that should be used by the index. Detailed below.
  final Input<IndexCapacityUnits>? capacityUnits;

  /// The description of the Index.
  final Input<String>? description;

  /// One or more blocks that specify the configuration settings for any metadata applied to the documents in the index. Minimum number of 0 items. Maximum number of 500 items. If specified, you must define all elements, including those that are provided by default. These index fields are documented at [Amazon Kendra Index documentation](https://docs.aws.amazon.com/kendra/latest/dg/hiw-index.html). For an example resource that defines these default index fields, refer to the default example above. For an example resource that appends additional index fields, refer to the append example above. All arguments for each block must be specified. Note that blocks cannot be removed since index fields cannot be deleted. This argument is detailed below.
  final Input<List<IndexDocumentMetadataConfigurationUpdate>>?
      documentMetadataConfigurationUpdates;

  /// The Amazon Kendra edition to use for the index. Choose `DEVELOPER_EDITION` for indexes intended for development, testing, or proof of concept. Use `ENTERPRISE_EDITION` for your production databases. Use `GEN_AI_ENTERPRISE_EDITION` for creating generative AI applications. Once you set the edition for an index, it can't be changed. Defaults to `ENTERPRISE_EDITION`.
  final Input<String>? edition;

  /// Specifies the name of the Index.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// An AWS Identity and Access Management (IAM) role that gives Amazon Kendra permissions to access your Amazon CloudWatch logs and metrics. This is also the role you use when you call the `BatchPutDocument` API to index documents from an Amazon S3 bucket.
  final Input<String> roleArn;

  /// A block that specifies the identifier of the AWS KMS customer managed key (CMK) that's used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs. Detailed below.
  final Input<IndexServerSideEncryptionConfiguration>?
      serverSideEncryptionConfiguration;

  /// Tags to apply to the Index. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The user context policy. Valid values are `ATTRIBUTE_FILTER` or `USER_TOKEN`. For more information, refer to [UserContextPolicy](https://docs.aws.amazon.com/kendra/latest/APIReference/API_CreateIndex.html#kendra-CreateIndex-request-UserContextPolicy). Defaults to `ATTRIBUTE_FILTER`.
  final Input<String>? userContextPolicy;

  /// A block that enables fetching access levels of groups and users from an AWS Single Sign-On identity source. To configure this, see [UserGroupResolutionConfiguration](https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html). Detailed below.
  final Input<IndexUserGroupResolutionConfiguration>?
      userGroupResolutionConfiguration;

  /// A block that specifies the user token configuration. Detailed below.
  final Input<IndexUserTokenConfigurations>? userTokenConfigurations;

  IndexArgs({
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
    final map = <String, dynamic>{};
    final capacityUnitsValue = capacityUnits;
    if (capacityUnitsValue != null) {
      map['capacityUnits'] =
          Input.mapOptionalInputValue<IndexCapacityUnits, Map<String, dynamic>>(
              capacityUnitsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final documentMetadataConfigurationUpdatesValue =
        documentMetadataConfigurationUpdates;
    if (documentMetadataConfigurationUpdatesValue != null) {
      map['documentMetadataConfigurationUpdates'] = Input.mapOptionalInputValue<
              List<IndexDocumentMetadataConfigurationUpdate>,
              List<Map<String, dynamic>>>(
          documentMetadataConfigurationUpdatesValue,
          (value) => Input.encodeList<IndexDocumentMetadataConfigurationUpdate,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final editionValue = edition;
    if (editionValue != null) {
      map['edition'] = editionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final serverSideEncryptionConfigurationValue =
        serverSideEncryptionConfiguration;
    if (serverSideEncryptionConfigurationValue != null) {
      map['serverSideEncryptionConfiguration'] = Input.mapOptionalInputValue<
              IndexServerSideEncryptionConfiguration, Map<String, dynamic>>(
          serverSideEncryptionConfigurationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final userContextPolicyValue = userContextPolicy;
    if (userContextPolicyValue != null) {
      map['userContextPolicy'] = userContextPolicyValue;
    }
    final userGroupResolutionConfigurationValue =
        userGroupResolutionConfiguration;
    if (userGroupResolutionConfigurationValue != null) {
      map['userGroupResolutionConfiguration'] = Input.mapOptionalInputValue<
              IndexUserGroupResolutionConfiguration, Map<String, dynamic>>(
          userGroupResolutionConfigurationValue, (value) => value.toMap());
    }
    final userTokenConfigurationsValue = userTokenConfigurations;
    if (userTokenConfigurationsValue != null) {
      map['userTokenConfigurations'] = Input.mapOptionalInputValue<
              IndexUserTokenConfigurations, Map<String, dynamic>>(
          userTokenConfigurationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory IndexArgs.fromMap(Map<String, dynamic> map) {
    return IndexArgs(
      capacityUnits:
          Input.asOptionalInput<IndexCapacityUnits>(map['capacityUnits']),
      description: Input.asOptionalInput<String>(map['description']),
      documentMetadataConfigurationUpdates:
          Input.asOptionalInput<List<IndexDocumentMetadataConfigurationUpdate>>(
              map['documentMetadataConfigurationUpdates']),
      edition: Input.asOptionalInput<String>(map['edition']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      serverSideEncryptionConfiguration:
          Input.asOptionalInput<IndexServerSideEncryptionConfiguration>(
              map['serverSideEncryptionConfiguration']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      userContextPolicy:
          Input.asOptionalInput<String>(map['userContextPolicy']),
      userGroupResolutionConfiguration:
          Input.asOptionalInput<IndexUserGroupResolutionConfiguration>(
              map['userGroupResolutionConfiguration']),
      userTokenConfigurations:
          Input.asOptionalInput<IndexUserTokenConfigurations>(
              map['userTokenConfigurations']),
    );
  }
}
