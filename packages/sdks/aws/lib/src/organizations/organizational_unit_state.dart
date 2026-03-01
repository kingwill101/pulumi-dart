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
    pulumi.Output<List<OrganizationalUnitAccount>>? accounts,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parentId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      accounts = pulumi.Input.asOptionalInput<List<OrganizationalUnitAccount>>(accounts),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentId = pulumi.Input.asOptionalInput<String>(parentId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      accounts: map['accounts'] == null ? null : pulumi.Output.create<List<OrganizationalUnitAccount>>(pulumi.Input.decodeList<OrganizationalUnitAccount>(map['accounts'], (value) => OrganizationalUnitAccount.fromMap((value as Map).cast<String, dynamic>()))),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentId: map['parentId'] == null ? null : pulumi.Output.create<String>(map['parentId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

