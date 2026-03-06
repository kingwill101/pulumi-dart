// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// ARN for this account.
  final pulumi.Input<String>? arn;
  /// If true, a deletion event will close the account. Otherwise, it will only remove from the organization. This is not supported for GovCloud accounts.
  final pulumi.Input<bool>? closeOnDeletion;
  /// Whether to also create a GovCloud account. The GovCloud account is tied to the main (commercial) account this resource creates. If `true`, the GovCloud account ID is available in the `govcloud_id` attribute. The only way to manage the GovCloud account with the provider is to subsequently import the account using this resource.
  final pulumi.Input<bool>? createGovcloud;
  /// Email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account.
  final pulumi.Input<String>? email;
  /// ID for a GovCloud account created with the account.
  final pulumi.Input<String>? govcloudId;
  /// If set to `ALLOW`, the new account enables IAM users and roles to access account billing information if they have the required permissions. If set to `DENY`, then only the root user (and no roles) of the new account can access account billing information. If this is unset, the AWS API will default this to `ALLOW`. If the resource is created and this option is changed, it will try to recreate the account.
  final pulumi.Input<String>? iamUserAccessToBilling;
  /// Method by which the account joined the organization.
  final pulumi.Input<String>? joinedMethod;
  /// Date the account became a part of the organization.
  final pulumi.Input<String>? joinedTimestamp;
  /// Friendly name for the member account.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Parent Organizational Unit ID or Root ID for the account. Defaults to the Organization default Root ID. A configuration must be present for this argument to perform drift detection.
  final pulumi.Input<String>? parentId;
  /// The name of an IAM role that Organizations automatically preconfigures in the new member account. This role trusts the root account, allowing users in the root account to assume the role, as permitted by the root account administrator. The role has administrator permissions in the new member account. The Organizations API provides no method for reading this information after account creation, so the provider cannot perform drift detection on its value and will always show a difference for a configured value after import unless `ignoreChanges` is used.
  final pulumi.Input<String>? roleName;
  /// State of the account in the organization.
  final pulumi.Input<String>? state;
  /// (**Deprecated** use `state` instead) Status of the account in the organization.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AccountState].
  /// [arn] ARN for this account.
  /// [closeOnDeletion] If true, a deletion event will close the account. Otherwise, it will only remove from the organization. This is not supported for GovCloud accounts.
  /// [createGovcloud] Whether to also create a GovCloud account. The GovCloud account is tied to the main (commercial) account this resource creates. If `true`, the GovCloud account ID is available in the `govcloud_id` attribute. The only way to manage the GovCloud account with the provider is to subsequently import the account using this resource.
  /// [email] Email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account.
  /// [govcloudId] ID for a GovCloud account created with the account.
  /// [iamUserAccessToBilling] If set to `ALLOW`, the new account enables IAM users and roles to access account billing information if they have the required permissions. If set to `DENY`, then only the root user (and no roles) of the new account can access account billing information. If this is unset, the AWS API will default this to `ALLOW`. If the resource is created and this option is changed, it will try to recreate the account.
  /// [joinedMethod] Method by which the account joined the organization.
  /// [joinedTimestamp] Date the account became a part of the organization.
  /// [name] Friendly name for the member account.
  /// [parentId] Parent Organizational Unit ID or Root ID for the account. Defaults to the Organization default Root ID. A configuration must be present for this argument to perform drift detection.
  /// [roleName] The name of an IAM role that Organizations automatically preconfigures in the new member account. This role trusts the root account, allowing users in the root account to assume the role, as permitted by the root account administrator. The role has administrator permissions in the new member account. The Organizations API provides no method for reading this information after account creation, so the provider cannot perform drift detection on its value and will always show a difference for a configured value after import unless `ignoreChanges` is used.
  /// [state] State of the account in the organization.
  /// [status] (**Deprecated** use `state` instead) Status of the account in the organization.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  const AccountState({
    this.arn,
    this.closeOnDeletion,
    this.createGovcloud,
    this.email,
    this.govcloudId,
    this.iamUserAccessToBilling,
    this.joinedMethod,
    this.joinedTimestamp,
    this.name,
    this.parentId,
    this.roleName,
    this.state,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'closeOnDeletion': ?closeOnDeletion,
      'createGovcloud': ?createGovcloud,
      'email': ?email,
      'govcloudId': ?govcloudId,
      'iamUserAccessToBilling': ?iamUserAccessToBilling,
      'joinedMethod': ?joinedMethod,
      'joinedTimestamp': ?joinedTimestamp,
      'name': ?name,
      'parentId': ?parentId,
      'roleName': ?roleName,
      'state': ?state,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      closeOnDeletion: (() { final guardedValue = map['closeOnDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createGovcloud: (() { final guardedValue = map['createGovcloud']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      govcloudId: (() { final guardedValue = map['govcloudId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamUserAccessToBilling: (() { final guardedValue = map['iamUserAccessToBilling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      joinedMethod: (() { final guardedValue = map['joinedMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      joinedTimestamp: (() { final guardedValue = map['joinedTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentId: (() { final guardedValue = map['parentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

