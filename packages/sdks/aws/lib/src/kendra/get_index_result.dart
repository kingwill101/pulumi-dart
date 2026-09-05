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
  final String? arn;
  /// Block that sets the number of additional document storage and query capacity units that should be used by the index. Documented below.
  final List<GetIndexCapacityUnit>? capacityUnits;
  /// Unix datetime that the index was created.
  final String? createdAt;
  /// Description of the Index.
  final String? description;
  /// One or more blocks that specify the configuration settings for any metadata applied to the documents in the index. Documented below.
  final List<GetIndexDocumentMetadataConfigurationUpdate>? documentMetadataConfigurationUpdates;
  /// Amazon Kendra edition for the index.
  final String? edition;
  /// When the Status field value is `FAILED`, this contains a message that explains why.
  final String? errorMessage;
  /// Identifier of the Index.
  final String? id;
  /// Block that provides information about the number of FAQ questions and answers and the number of text documents indexed. Documented below.
  final List<GetIndexIndexStatistic>? indexStatistics;
  /// Name of the index field. Minimum length of 1. Maximum length of 30.
  final String? name;
  final String? region;
  /// An AWS Identity and Access Management (IAM) role that gives Amazon Kendra permissions to access your Amazon CloudWatch logs and metrics. This is also the role you use when you call the `BatchPutDocument` API to index documents from an Amazon S3 bucket.
  final String? roleArn;
  /// A block that specifies the identifier of the AWS KMS customer managed key (CMK) that's used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs. Documented below.
  final List<GetIndexServerSideEncryptionConfiguration>? serverSideEncryptionConfigurations;
  /// Current status of the index. When the value is `ACTIVE`, the index is ready for use. If the Status field value is `FAILED`, the `errorMessage` field contains a message that explains why.
  final String? status;
  /// Metadata that helps organize the Indices you create.
  final Map<String, String>? tags;
  /// Unix datetime that the index was last updated.
  final String? updatedAt;
  /// User context policy. Valid values are `ATTRIBUTE_FILTER` or `USER_TOKEN`. For more information, refer to [UserContextPolicy](https://docs.aws.amazon.com/kendra/latest/APIReference/API_CreateIndex.html#kendra-CreateIndex-request-UserContextPolicy).
  final String? userContextPolicy;
  /// A block that enables fetching access levels of groups and users from an AWS Single Sign-On identity source. Documented below.
  final List<GetIndexUserGroupResolutionConfiguration>? userGroupResolutionConfigurations;
  /// A block that specifies the user token configuration. Documented below.
  final List<GetIndexUserTokenConfiguration>? userTokenConfigurations;

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
  /// [region] Optional.
  /// [roleArn] An AWS Identity and Access Management (IAM) role that gives Amazon Kendra permissions to access your Amazon CloudWatch logs and metrics. This is also the role you use when you call the `BatchPutDocument` API to index documents from an Amazon S3 bucket.
  /// [serverSideEncryptionConfigurations] A block that specifies the identifier of the AWS KMS customer managed key (CMK) that's used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs. Documented below.
  /// [status] Current status of the index. When the value is `ACTIVE`, the index is ready for use. If the Status field value is `FAILED`, the `errorMessage` field contains a message that explains why.
  /// [tags] Metadata that helps organize the Indices you create.
  /// [updatedAt] Unix datetime that the index was last updated.
  /// [userContextPolicy] User context policy. Valid values are `ATTRIBUTE_FILTER` or `USER_TOKEN`. For more information, refer to [UserContextPolicy](https://docs.aws.amazon.com/kendra/latest/APIReference/API_CreateIndex.html#kendra-CreateIndex-request-UserContextPolicy).
  /// [userGroupResolutionConfigurations] A block that enables fetching access levels of groups and users from an AWS Single Sign-On identity source. Documented below.
  /// [userTokenConfigurations] A block that specifies the user token configuration. Documented below.
  const GetIndexResult({
    this.arn,
    this.capacityUnits,
    this.createdAt,
    this.description,
    this.documentMetadataConfigurationUpdates,
    this.edition,
    this.errorMessage,
    this.id,
    this.indexStatistics,
    this.name,
    this.region,
    this.roleArn,
    this.serverSideEncryptionConfigurations,
    this.status,
    this.tags,
    this.updatedAt,
    this.userContextPolicy,
    this.userGroupResolutionConfigurations,
    this.userTokenConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'capacityUnits': ?(() { final guardedValue = capacityUnits; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetIndexCapacityUnit, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createdAt': ?createdAt,
      'description': ?description,
      'documentMetadataConfigurationUpdates': ?(() { final guardedValue = documentMetadataConfigurationUpdates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetIndexDocumentMetadataConfigurationUpdate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'edition': ?edition,
      'errorMessage': ?errorMessage,
      'id': ?id,
      'indexStatistics': ?(() { final guardedValue = indexStatistics; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetIndexIndexStatistic, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      'serverSideEncryptionConfigurations': ?(() { final guardedValue = serverSideEncryptionConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetIndexServerSideEncryptionConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
      'userContextPolicy': ?userContextPolicy,
      'userGroupResolutionConfigurations': ?(() { final guardedValue = userGroupResolutionConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetIndexUserGroupResolutionConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'userTokenConfigurations': ?(() { final guardedValue = userTokenConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetIndexUserTokenConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetIndexResult.fromMap(Map<String, dynamic> map) {
    return GetIndexResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capacityUnits: (() { final guardedValue = map['capacityUnits']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetIndexCapacityUnit>(guardedValue, (value) => GetIndexCapacityUnit.fromMap((value as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      documentMetadataConfigurationUpdates: (() { final guardedValue = map['documentMetadataConfigurationUpdates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetIndexDocumentMetadataConfigurationUpdate>(guardedValue, (value) => GetIndexDocumentMetadataConfigurationUpdate.fromMap((value as Map).cast<String, dynamic>())); })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      indexStatistics: (() { final guardedValue = map['indexStatistics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetIndexIndexStatistic>(guardedValue, (value) => GetIndexIndexStatistic.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverSideEncryptionConfigurations: (() { final guardedValue = map['serverSideEncryptionConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetIndexServerSideEncryptionConfiguration>(guardedValue, (value) => GetIndexServerSideEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userContextPolicy: (() { final guardedValue = map['userContextPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userGroupResolutionConfigurations: (() { final guardedValue = map['userGroupResolutionConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetIndexUserGroupResolutionConfiguration>(guardedValue, (value) => GetIndexUserGroupResolutionConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      userTokenConfigurations: (() { final guardedValue = map['userTokenConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetIndexUserTokenConfiguration>(guardedValue, (value) => GetIndexUserTokenConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
