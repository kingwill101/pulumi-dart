// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_index_capacity_unit.dart';
import 'get_index_document_metadata_configuration_update.dart';
import 'get_index_index_statistic.dart';
import 'get_index_server_side_encryption_configuration.dart';
import 'get_index_user_group_resolution_configuration.dart';
import 'get_index_user_token_configuration.dart';

/// Result data returned by getIndex.
class GetIndexResult {
  /// ARN of the Index.
  final String arn;
  /// Block that sets the number of additional document storage and query capacity units that should be used by the index. Documented below.
  final List<GetIndexCapacityUnit> capacityUnits;
  /// Unix datetime that the index was created.
  final String createdAt;
  /// Description of the Index.
  final String description;
  /// One or more blocks that specify the configuration settings for any metadata applied to the documents in the index. Documented below.
  final List<GetIndexDocumentMetadataConfigurationUpdate> documentMetadataConfigurationUpdates;
  /// Amazon Kendra edition for the index.
  final String edition;
  /// When the Status field value is `FAILED`, this contains a message that explains why.
  final String errorMessage;
  /// Identifier of the Index.
  final String id;
  /// Block that provides information about the number of FAQ questions and answers and the number of text documents indexed. Documented below.
  final List<GetIndexIndexStatistic> indexStatistics;
  /// Name of the index field. Minimum length of 1. Maximum length of 30.
  final String name;
  final String region;
  /// An AWS Identity and Access Management (IAM) role that gives Amazon Kendra permissions to access your Amazon CloudWatch logs and metrics. This is also the role you use when you call the `BatchPutDocument` API to index documents from an Amazon S3 bucket.
  final String roleArn;
  /// A block that specifies the identifier of the AWS KMS customer managed key (CMK) that's used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs. Documented below.
  final List<GetIndexServerSideEncryptionConfiguration> serverSideEncryptionConfigurations;
  /// Current status of the index. When the value is `ACTIVE`, the index is ready for use. If the Status field value is `FAILED`, the `errorMessage` field contains a message that explains why.
  final String status;
  /// Metadata that helps organize the Indices you create.
  final Map<String, String> tags;
  /// Unix datetime that the index was last updated.
  final String updatedAt;
  /// User context policy. Valid values are `ATTRIBUTE_FILTER` or `USER_TOKEN`. For more information, refer to [UserContextPolicy](https://docs.aws.amazon.com/kendra/latest/APIReference/API_CreateIndex.html#kendra-CreateIndex-request-UserContextPolicy).
  final String userContextPolicy;
  /// A block that enables fetching access levels of groups and users from an AWS Single Sign-On identity source. Documented below.
  final List<GetIndexUserGroupResolutionConfiguration> userGroupResolutionConfigurations;
  /// A block that specifies the user token configuration. Documented below.
  final List<GetIndexUserTokenConfiguration> userTokenConfigurations;

  /// Creates a new [GetIndexResult].
  /// [arn] ARN of the Index.
  /// [capacityUnits] Block that sets the number of additional document storage and query capacity units that should be used by the index. Documented below.
  /// [createdAt] Unix datetime that the index was created.
  /// [description] Description of the Index.
  /// [documentMetadataConfigurationUpdates] One or more blocks that specify the configuration settings for any metadata applied to the documents in the index. Documented below.
  /// [edition] Amazon Kendra edition for the index.
  /// [errorMessage] When the Status field value is `FAILED`, this contains a message that explains why.
  /// [id] Identifier of the Index.
  /// [indexStatistics] Block that provides information about the number of FAQ questions and answers and the number of text documents indexed. Documented below.
  /// [name] Name of the index field. Minimum length of 1. Maximum length of 30.
  /// [region] Required.
  /// [roleArn] An AWS Identity and Access Management (IAM) role that gives Amazon Kendra permissions to access your Amazon CloudWatch logs and metrics. This is also the role you use when you call the `BatchPutDocument` API to index documents from an Amazon S3 bucket.
  /// [serverSideEncryptionConfigurations] A block that specifies the identifier of the AWS KMS customer managed key (CMK) that's used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs. Documented below.
  /// [status] Current status of the index. When the value is `ACTIVE`, the index is ready for use. If the Status field value is `FAILED`, the `errorMessage` field contains a message that explains why.
  /// [tags] Metadata that helps organize the Indices you create.
  /// [updatedAt] Unix datetime that the index was last updated.
  /// [userContextPolicy] User context policy. Valid values are `ATTRIBUTE_FILTER` or `USER_TOKEN`. For more information, refer to [UserContextPolicy](https://docs.aws.amazon.com/kendra/latest/APIReference/API_CreateIndex.html#kendra-CreateIndex-request-UserContextPolicy).
  /// [userGroupResolutionConfigurations] A block that enables fetching access levels of groups and users from an AWS Single Sign-On identity source. Documented below.
  /// [userTokenConfigurations] A block that specifies the user token configuration. Documented below.
  const GetIndexResult({
    required this.arn,
    required this.capacityUnits,
    required this.createdAt,
    required this.description,
    required this.documentMetadataConfigurationUpdates,
    required this.edition,
    required this.errorMessage,
    required this.id,
    required this.indexStatistics,
    required this.name,
    required this.region,
    required this.roleArn,
    required this.serverSideEncryptionConfigurations,
    required this.status,
    required this.tags,
    required this.updatedAt,
    required this.userContextPolicy,
    required this.userGroupResolutionConfigurations,
    required this.userTokenConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'capacityUnits': pulumi.Input.encodeList<GetIndexCapacityUnit, Map<String, dynamic>>(capacityUnits, (value) => value.toMap()),
      'createdAt': createdAt,
      'description': description,
      'documentMetadataConfigurationUpdates': pulumi.Input.encodeList<GetIndexDocumentMetadataConfigurationUpdate, Map<String, dynamic>>(documentMetadataConfigurationUpdates, (value) => value.toMap()),
      'edition': edition,
      'errorMessage': errorMessage,
      'id': id,
      'indexStatistics': pulumi.Input.encodeList<GetIndexIndexStatistic, Map<String, dynamic>>(indexStatistics, (value) => value.toMap()),
      'name': name,
      'region': region,
      'roleArn': roleArn,
      'serverSideEncryptionConfigurations': pulumi.Input.encodeList<GetIndexServerSideEncryptionConfiguration, Map<String, dynamic>>(serverSideEncryptionConfigurations, (value) => value.toMap()),
      'status': status,
      'tags': tags,
      'updatedAt': updatedAt,
      'userContextPolicy': userContextPolicy,
      'userGroupResolutionConfigurations': pulumi.Input.encodeList<GetIndexUserGroupResolutionConfiguration, Map<String, dynamic>>(userGroupResolutionConfigurations, (value) => value.toMap()),
      'userTokenConfigurations': pulumi.Input.encodeList<GetIndexUserTokenConfiguration, Map<String, dynamic>>(userTokenConfigurations, (value) => value.toMap()),
    };
  }

  factory GetIndexResult.fromMap(Map<String, dynamic> map) {
    return GetIndexResult(
      arn: map['arn'] as String,
      capacityUnits: pulumi.Input.decodeList<GetIndexCapacityUnit>(map['capacityUnits']!, (value) => GetIndexCapacityUnit.fromMap((value as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] as String,
      description: map['description'] as String,
      documentMetadataConfigurationUpdates: pulumi.Input.decodeList<GetIndexDocumentMetadataConfigurationUpdate>(map['documentMetadataConfigurationUpdates']!, (value) => GetIndexDocumentMetadataConfigurationUpdate.fromMap((value as Map).cast<String, dynamic>())),
      edition: map['edition'] as String,
      errorMessage: map['errorMessage'] as String,
      id: map['id'] as String,
      indexStatistics: pulumi.Input.decodeList<GetIndexIndexStatistic>(map['indexStatistics']!, (value) => GetIndexIndexStatistic.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      region: map['region'] as String,
      roleArn: map['roleArn'] as String,
      serverSideEncryptionConfigurations: pulumi.Input.decodeList<GetIndexServerSideEncryptionConfiguration>(map['serverSideEncryptionConfigurations']!, (value) => GetIndexServerSideEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      updatedAt: map['updatedAt'] as String,
      userContextPolicy: map['userContextPolicy'] as String,
      userGroupResolutionConfigurations: pulumi.Input.decodeList<GetIndexUserGroupResolutionConfiguration>(map['userGroupResolutionConfigurations']!, (value) => GetIndexUserGroupResolutionConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      userTokenConfigurations: pulumi.Input.decodeList<GetIndexUserTokenConfiguration>(map['userTokenConfigurations']!, (value) => GetIndexUserTokenConfiguration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
