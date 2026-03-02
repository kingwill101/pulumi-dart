// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_acl_entry.dart';

/// {@template pulumi_ga_acl_acl_args_doc}
/// The set of arguments for Acl.
/// {@endtemplate}
/// {@macro pulumi_ga_acl_acl_args_doc}
class AclArgs {
  /// The entries of the Acl. See `acl_entries` below. **NOTE:** "Field `acl_entries` has been deprecated from provider version 1.190.0 and it will be removed in the future version. Please use the new resource `alicloud.ga.AclEntryAttachment`."
  final pulumi.Input<List<AclAclEntry>>? aclEntries;
  /// The name of the ACL. The name must be `2` to `128` characters in length, and can contain letters, digits, periods (.), hyphens (-) and underscores (_). It must start with a letter.
  final pulumi.Input<String>? aclName;
  /// The IP version. Valid values: `IPv4` and `IPv6`.
  final pulumi.Input<String> addressIpVersion;
  /// The dry run.
  final pulumi.Input<bool>? dryRun;
  /// The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  final pulumi.Input<String>? resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AclArgs].
  /// [aclEntries] The entries of the Acl. See `acl_entries` below. **NOTE:** "Field `acl_entries` has been deprecated from provider version 1.190.0 and it will be removed in the future version. Please use the new resource `alicloud.ga.AclEntryAttachment`."
  /// [aclName] The name of the ACL. The name must be `2` to `128` characters in length, and can contain letters, digits, periods (.), hyphens (-) and underscores (_). It must start with a letter.
  /// [addressIpVersion] The IP version. Valid values: `IPv4` and `IPv6`.
  /// [dryRun] The dry run.
  /// [resourceGroupId] The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  /// [tags] A mapping of tags to assign to the resource.
  AclArgs({
    this.aclEntries,
    this.aclName,
    required this.addressIpVersion,
    this.dryRun,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclEntries': ?pulumi.Input.mapOptionalInputValue<List<AclAclEntry>, List<Map<String, dynamic>>>(aclEntries, (value) => pulumi.Input.encodeList<AclAclEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aclName': ?aclName,
      'addressIpVersion': addressIpVersion,
      'dryRun': ?dryRun,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory AclArgs.fromMap(Map<String, dynamic> map) {
    return AclArgs(
      aclEntries: map['aclEntries'] == null ? null : (pulumi.Input.decodeList<AclAclEntry>(map['aclEntries'], (value) => AclAclEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      aclName: map['aclName'] == null ? null : (map['aclName'] as String).input(),
      addressIpVersion: (map['addressIpVersion'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

