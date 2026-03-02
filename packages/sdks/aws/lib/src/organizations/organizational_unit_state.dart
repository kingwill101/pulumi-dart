// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organizational_unit_account.dart';

/// Input properties used for looking up and filtering OrganizationalUnit resources.
class OrganizationalUnitState {
  /// List of child accounts for this Organizational Unit. Does not return account information for child Organizational Units. All elements have these attributes:
  final pulumi.Input<List<OrganizationalUnitAccount>>? accounts;
  /// ARN of the organizational unit
  final pulumi.Input<String>? arn;
  /// The name for the organizational unit
  final pulumi.Input<String>? name;
  /// ID of the parent organizational unit, which may be the root
  final pulumi.Input<String>? parentId;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [OrganizationalUnitState].
  /// [accounts] List of child accounts for this Organizational Unit. Does not return account information for child Organizational Units. All elements have these attributes:
  /// [arn] ARN of the organizational unit
  /// [name] The name for the organizational unit
  /// [parentId] ID of the parent organizational unit, which may be the root
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  OrganizationalUnitState({
    this.accounts,
    this.arn,
    this.name,
    this.parentId,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': ?pulumi.Input.mapOptionalInputValue<List<OrganizationalUnitAccount>, List<Map<String, dynamic>>>(accounts, (value) => pulumi.Input.encodeList<OrganizationalUnitAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'name': ?name,
      'parentId': ?parentId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory OrganizationalUnitState.fromMap(Map<String, dynamic> map) {
    return OrganizationalUnitState(
      accounts: map['accounts'] == null ? null : ((pulumi.Input.decodeList<OrganizationalUnitAccount>(map['accounts']!, (value) => OrganizationalUnitAccount.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      parentId: map['parentId'] == null ? null : ((map['parentId'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

