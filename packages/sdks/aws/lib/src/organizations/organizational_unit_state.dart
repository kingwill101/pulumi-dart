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
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [OrganizationalUnitState].
  /// [accounts] List of child accounts for this Organizational Unit. Does not return account information for child Organizational Units. All elements have these attributes:
  /// [arn] ARN of the organizational unit
  /// [name] The name for the organizational unit
  /// [parentId] ID of the parent organizational unit, which may be the root
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const OrganizationalUnitState({
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
      accounts: (() { final guardedValue = map['accounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationalUnitAccount>(guardedValue, (value) => OrganizationalUnitAccount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentId: (() { final guardedValue = map['parentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
