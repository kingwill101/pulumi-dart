// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag.dart';

/// Definition of awsOrganizationsAccount
class AwsOrganizationsAccountProperties {
  /// If the account was created successfully, the unique identifier (ID) of the new account.
  final pulumi.Input<String>? accountId;

  /// The friendly name of the member account.
  final pulumi.Input<String>? accountName;

  /// The Amazon Resource Name (ARN) of the account.
  final pulumi.Input<String>? arn;

  /// The email address of the owner to assign to the new member account.
  final pulumi.Input<String>? email;

  /// The method by which the account joined the organization.
  final pulumi.Input<String>? joinedMethod;

  /// The date the account became a part of the organization.
  final pulumi.Input<String>? joinedTimestamp;

  /// List of parent nodes for the member account. Currently only one parent at a time is supported. Default is root.
  final pulumi.Input<List<String>>? parentIds;

  /// The name of an IAM role that AWS Organizations automatically preconfigures in the new member account. Default name is OrganizationAccountAccessRole if not specified.
  final pulumi.Input<String>? roleName;

  /// The status of the account in the organization.
  final pulumi.Input<String>? status;

  /// A list of tags that you want to attach to the newly created account. For each tag in the list, you must specify both a tag key and a value.
  final pulumi.Input<List<Tag>>? tags;

  /// Creates a new [AwsOrganizationsAccountProperties].
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
  AwsOrganizationsAccountProperties({
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
      'tags':
          ?pulumi.Input.mapOptionalInputValue<
            List<Tag>,
            List<Map<String, dynamic>>
          >(
            tags,
            (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
    };
  }

  factory AwsOrganizationsAccountProperties.fromMap(Map<String, dynamic> map) {
    return AwsOrganizationsAccountProperties(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountName: (() {
        final guardedValue = map['accountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      email: (() {
        final guardedValue = map['email'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      joinedMethod: (() {
        final guardedValue = map['joinedMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      joinedTimestamp: (() {
        final guardedValue = map['joinedTimestamp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parentIds: (() {
        final guardedValue = map['parentIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      roleName: (() {
        final guardedValue = map['roleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Tag>(
            guardedValue,
            (value) => Tag.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
