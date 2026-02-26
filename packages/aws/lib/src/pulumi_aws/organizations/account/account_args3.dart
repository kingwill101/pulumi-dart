// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Account.
class AccountArgs3 {
  /// If true, a deletion event will close the account. Otherwise, it will only remove from the organization. This is not supported for GovCloud accounts.
  final Input<bool>? closeOnDeletion;

  /// Whether to also create a GovCloud account. The GovCloud account is tied to the main (commercial) account this resource creates. If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the GovCloud account ID is available in the <span pulumi-lang-nodejs="`govcloudId`" pulumi-lang-dotnet="`GovcloudId`" pulumi-lang-go="`govcloudId`" pulumi-lang-python="`govcloud_id`" pulumi-lang-yaml="`govcloudId`" pulumi-lang-java="`govcloudId`">`govcloud_id`</span> attribute. The only way to manage the GovCloud account with the provider is to subsequently import the account using this resource.
  final Input<bool>? createGovcloud;

  /// Email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account.
  final Input<String> email;

  /// If set to `ALLOW`, the new account enables IAM users and roles to access account billing information if they have the required permissions. If set to `DENY`, then only the root user (and no roles) of the new account can access account billing information. If this is unset, the AWS API will default this to `ALLOW`. If the resource is created and this option is changed, it will try to recreate the account.
  final Input<String>? iamUserAccessToBilling;

  /// Friendly name for the member account.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Parent Organizational Unit ID or Root ID for the account. Defaults to the Organization default Root ID. A configuration must be present for this argument to perform drift detection.
  final Input<String>? parentId;

  /// The name of an IAM role that Organizations automatically preconfigures in the new member account. This role trusts the root account, allowing users in the root account to assume the role, as permitted by the root account administrator. The role has administrator permissions in the new member account. The Organizations API provides no method for reading this information after account creation, so the provider cannot perform drift detection on its value and will always show a difference for a configured value after import unless `ignoreChanges` is used.
  final Input<String>? roleName;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  AccountArgs3({
    this.closeOnDeletion,
    this.createGovcloud,
    required this.email,
    this.iamUserAccessToBilling,
    this.name,
    this.parentId,
    this.roleName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final closeOnDeletionValue = closeOnDeletion;
    if (closeOnDeletionValue != null) {
      map['closeOnDeletion'] = closeOnDeletionValue;
    }
    final createGovcloudValue = createGovcloud;
    if (createGovcloudValue != null) {
      map['createGovcloud'] = createGovcloudValue;
    }
    map['email'] = email;
    final iamUserAccessToBillingValue = iamUserAccessToBilling;
    if (iamUserAccessToBillingValue != null) {
      map['iamUserAccessToBilling'] = iamUserAccessToBillingValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parentIdValue = parentId;
    if (parentIdValue != null) {
      map['parentId'] = parentIdValue;
    }
    final roleNameValue = roleName;
    if (roleNameValue != null) {
      map['roleName'] = roleNameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AccountArgs3.fromMap(Map<String, dynamic> map) {
    return AccountArgs3(
      closeOnDeletion: Input.asOptionalInput<bool>(map['closeOnDeletion']),
      createGovcloud: Input.asOptionalInput<bool>(map['createGovcloud']),
      email: Input.asInput<String>(map['email']),
      iamUserAccessToBilling:
          Input.asOptionalInput<String>(map['iamUserAccessToBilling']),
      name: Input.asOptionalInput<String>(map['name']),
      parentId: Input.asOptionalInput<String>(map['parentId']),
      roleName: Input.asOptionalInput<String>(map['roleName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
