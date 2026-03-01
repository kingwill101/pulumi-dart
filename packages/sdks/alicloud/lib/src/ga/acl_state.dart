// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_acl_entry.dart';

/// Input properties used for looking up and filtering Acl resources.
class AclState {
  /// The entries of the Acl. See `acl_entries` below. **NOTE:** "Field `acl_entries` has been deprecated from provider version 1.190.0 and it will be removed in the future version. Please use the new resource `alicloud.ga.AclEntryAttachment`."
  final pulumi.Input<List<AclAclEntry>>? aclEntries;
  /// The name of the ACL. The name must be `2` to `128` characters in length, and can contain letters, digits, periods (.), hyphens (-) and underscores (_). It must start with a letter.
  final pulumi.Input<String>? aclName;
  /// The IP version. Valid values: `IPv4` and `IPv6`.
  final pulumi.Input<String>? addressIpVersion;
  /// The dry run.
  final pulumi.Input<bool>? dryRun;
  /// The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AclState].
  /// [aclEntries] The entries of the Acl. See `acl_entries` below. **NOTE:** "Field `acl_entries` has been deprecated from provider version 1.190.0 and it will be removed in the future version. Please use the new resource `alicloud.ga.AclEntryAttachment`."
  /// [aclName] The name of the ACL. The name must be `2` to `128` characters in length, and can contain letters, digits, periods (.), hyphens (-) and underscores (_). It must start with a letter.
  /// [addressIpVersion] The IP version. Valid values: `IPv4` and `IPv6`.
  /// [dryRun] The dry run.
  /// [resourceGroupId] The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  /// [status] The status of the resource.
  /// [tags] A mapping of tags to assign to the resource.
  AclState({
    pulumi.Output<List<AclAclEntry>>? aclEntries,
    pulumi.Output<String>? aclName,
    pulumi.Output<String>? addressIpVersion,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      aclEntries = pulumi.Input.asOptionalInput<List<AclAclEntry>>(aclEntries),
      aclName = pulumi.Input.asOptionalInput<String>(aclName),
      addressIpVersion = pulumi.Input.asOptionalInput<String>(addressIpVersion),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclEntries': ?pulumi.Input.mapOptionalInputValue<List<AclAclEntry>, List<Map<String, dynamic>>>(aclEntries, (value) => pulumi.Input.encodeList<AclAclEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aclName': ?aclName,
      'addressIpVersion': ?addressIpVersion,
      'dryRun': ?dryRun,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory AclState.fromMap(Map<String, dynamic> map) {
    return AclState(
      aclEntries: map['aclEntries'] == null ? null : pulumi.Output.create<List<AclAclEntry>>(pulumi.Input.decodeList<AclAclEntry>(map['aclEntries'], (value) => AclAclEntry.fromMap((value as Map).cast<String, dynamic>()))),
      aclName: map['aclName'] == null ? null : pulumi.Output.create<String>(map['aclName'] as String),
      addressIpVersion: map['addressIpVersion'] == null ? null : pulumi.Output.create<String>(map['addressIpVersion'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

