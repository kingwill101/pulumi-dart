// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_entry_list.dart';

/// Input properties used for looking up and filtering Acl resources.
class AclState {
  /// A list of entry (CIDR blocks) to be added. It contains two sub-fields as `Entry Block` follows. **NOTE:** "Field 'entry_list' has been deprecated from provider version 1.162.0 and it will be removed in the future version. Please use the new resource 'alicloud_slb_acl_entry_attachment'.",
  final pulumi.Input<List<AclEntryList>>? entryLists;
  /// The IP Version of access control list is the type of its entry (IP addresses or CIDR blocks). It values ipv4/ipv6. Our plugin provides a default ip_version: "ipv4".
  final pulumi.Input<String>? ipVersion;
  /// Name of the access control list.
  final pulumi.Input<String>? name;
  /// Resource group ID.
  final pulumi.Input<String>? resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AclState].
  /// [entryLists] A list of entry (CIDR blocks) to be added. It contains two sub-fields as `Entry Block` follows. **NOTE:** "Field 'entry_list' has been deprecated from provider version 1.162.0 and it will be removed in the future version. Please use the new resource 'alicloud_slb_acl_entry_attachment'.",
  /// [ipVersion] The IP Version of access control list is the type of its entry (IP addresses or CIDR blocks). It values ipv4/ipv6. Our plugin provides a default ip_version: "ipv4".
  /// [name] Name of the access control list.
  /// [resourceGroupId] Resource group ID.
  /// [tags] A mapping of tags to assign to the resource.
  AclState({
    this.entryLists,
    this.ipVersion,
    this.name,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryLists': ?pulumi.Input.mapOptionalInputValue<List<AclEntryList>, List<Map<String, dynamic>>>(entryLists, (value) => pulumi.Input.encodeList<AclEntryList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipVersion': ?ipVersion,
      'name': ?name,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory AclState.fromMap(Map<String, dynamic> map) {
    return AclState(
      entryLists: map['entryLists'] == null ? null : (pulumi.Input.decodeList<AclEntryList>(map['entryLists'], (value) => AclEntryList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

