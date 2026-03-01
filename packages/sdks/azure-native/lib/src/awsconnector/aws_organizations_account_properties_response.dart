// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_response.dart';

/// Definition of awsOrganizationsAccount
class AwsOrganizationsAccountPropertiesResponse {
  /// If the account was created successfully, the unique identifier (ID) of the new account.
  final String? accountId;
  /// The friendly name of the member account.
  final String? accountName;
  /// The Amazon Resource Name (ARN) of the account.
  final String? arn;
  /// The email address of the owner to assign to the new member account.
  final String? email;
  /// The method by which the account joined the organization.
  final String? joinedMethod;
  /// The date the account became a part of the organization.
  final String? joinedTimestamp;
  /// List of parent nodes for the member account. Currently only one parent at a time is supported. Default is root.
  final List<String>? parentIds;
  /// The name of an IAM role that AWS Organizations automatically preconfigures in the new member account. Default name is OrganizationAccountAccessRole if not specified.
  final String? roleName;
  /// The status of the account in the organization.
  final String? status;
  /// A list of tags that you want to attach to the newly created account. For each tag in the list, you must specify both a tag key and a value.
  final List<TagResponse>? tags;

  /// Creates a new [AwsOrganizationsAccountPropertiesResponse].
  /// [accountId] If the account was created successfully, the unique identifier (ID) of the new account.
  /// [accountName] The friendly name of the member account.
  /// [arn] The Amazon Resource Name (ARN) of the account.
  /// [email] The email address of the owner to assign to the new member account.
  /// [joinedMethod] The method by which the account joined the organization.
  /// [joinedTimestamp] The date the account became a part of the organization.
  /// [parentIds] List of parent nodes for the member account. Currently only one parent at a time is supported. Default is root.
  /// [roleName] The name of an IAM role that AWS Organizations automatically preconfigures in the new member account. Default name is OrganizationAccountAccessRole if not specified.
  /// [status] The status of the account in the organization.
  /// [tags] A list of tags that you want to attach to the newly created account. For each tag in the list, you must specify both a tag key and a value.
  AwsOrganizationsAccountPropertiesResponse({
    this.accountId,
    this.accountName,
    this.arn,
    this.email,
    this.joinedMethod,
    this.joinedTimestamp,
    this.parentIds,
    this.roleName,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountName': ?accountName,
      'arn': ?arn,
      'email': ?email,
      'joinedMethod': ?joinedMethod,
      'joinedTimestamp': ?joinedTimestamp,
      'parentIds': ?parentIds,
      'roleName': ?roleName,
      'status': ?status,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory AwsOrganizationsAccountPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsOrganizationsAccountPropertiesResponse(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      arn: map['arn'] == null ? null : map['arn'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      joinedMethod: map['joinedMethod'] == null ? null : map['joinedMethod'] as String,
      joinedTimestamp: map['joinedTimestamp'] == null ? null : map['joinedTimestamp'] as String,
      parentIds: map['parentIds'] == null ? null : (map['parentIds'] as List).cast<String>(),
      roleName: map['roleName'] == null ? null : map['roleName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

