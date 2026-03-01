// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_acl_entry.dart';

/// Input properties used for looking up and filtering Acl resources.
class AclState {
  /// The list of the ACL entries. You can add up to `20` entries in each call.  See `acl_entries` below for details.
  /// **NOTE:** "Field 'acl_entries' has been deprecated from provider version 1.166.0 and it will be removed in the future version. Please use the new resource 'alicloud_alb_acl_entry_attachment'.",
  final pulumi.Input<List<AclAclEntry>>? aclEntries;
  /// The name of the ACL. The name must be `2` to `128` characters in length, and can contain letters, digits, hyphens (-) and underscores (_). It must start with a letter.
  final pulumi.Input<String>? aclName;
  /// Specifies whether to precheck the API request.
  final pulumi.Input<bool>? dryRun;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The state of the ACL. Valid values:`Provisioning`, `Available` and `Configuring`. `Provisioning`: The ACL is being created. `Available`: The ACL is available. `Configuring`: The ACL is being configured.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AclState].
  /// [aclEntries] The list of the ACL entries. You can add up to `20` entries in each call.  See `acl_entries` below for details.
  /// [aclName] The name of the ACL. The name must be `2` to `128` characters in length, and can contain letters, digits, hyphens (-) and underscores (_). It must start with a letter.
  /// [dryRun] Specifies whether to precheck the API request.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The state of the ACL. Valid values:`Provisioning`, `Available` and `Configuring`. `Provisioning`: The ACL is being created. `Available`: The ACL is available. `Configuring`: The ACL is being configured.
  /// [tags] A mapping of tags to assign to the resource.
  AclState({
    pulumi.Output<List<AclAclEntry>>? aclEntries,
    pulumi.Output<String>? aclName,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      aclEntries = pulumi.Input.asOptionalInput<List<AclAclEntry>>(aclEntries),
      aclName = pulumi.Input.asOptionalInput<String>(aclName),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclEntries': ?pulumi.Input.mapOptionalInputValue<List<AclAclEntry>, List<Map<String, dynamic>>>(aclEntries, (value) => pulumi.Input.encodeList<AclAclEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aclName': ?aclName,
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
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

