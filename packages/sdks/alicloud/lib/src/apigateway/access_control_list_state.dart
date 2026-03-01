// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_control_list_acl_entry.dart';

/// Input properties used for looking up and filtering AccessControlList resources.
class AccessControlListState {
  /// Access control list name.
  final pulumi.Input<String>? accessControlListName;
  /// Information list of access control policies. You can add at most 50 IP addresses or CIDR blocks to an ACL in each call. If the IP address or CIDR block that you want to add to an ACL already exists, the IP address or CIDR block is not added. The entries that you add must be CIDR blocks. See `acl_entrys` below.
  /// **NOTE:** Field 'acl_entrys' has been deprecated from provider version 1.228.0, and it will be removed in the future version. Please use the new resource 'alicloud_api_gateway_acl_entry_attachment'.
  final pulumi.Input<List<AccessControlListAclEntry>>? aclEntrys;
  /// The IP version. Valid values: ipv4 and ipv6.
  final pulumi.Input<String>? addressIpVersion;

  /// Creates a new [AccessControlListState].
  /// [accessControlListName] Access control list name.
  /// [aclEntrys] Information list of access control policies. You can add at most 50 IP addresses or CIDR blocks to an ACL in each call. If the IP address or CIDR block that you want to add to an ACL already exists, the IP address or CIDR block is not added. The entries that you add must be CIDR blocks. See `acl_entrys` below.
  /// [addressIpVersion] The IP version. Valid values: ipv4 and ipv6.
  AccessControlListState({
    pulumi.Output<String>? accessControlListName,
    pulumi.Output<List<AccessControlListAclEntry>>? aclEntrys,
    pulumi.Output<String>? addressIpVersion,
  }) :
      accessControlListName = pulumi.Input.asOptionalInput<String>(accessControlListName),
      aclEntrys = pulumi.Input.asOptionalInput<List<AccessControlListAclEntry>>(aclEntrys),
      addressIpVersion = pulumi.Input.asOptionalInput<String>(addressIpVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlListName': ?accessControlListName,
      'aclEntrys': ?pulumi.Input.mapOptionalInputValue<List<AccessControlListAclEntry>, List<Map<String, dynamic>>>(aclEntrys, (value) => pulumi.Input.encodeList<AccessControlListAclEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'addressIpVersion': ?addressIpVersion,
    };
  }

  factory AccessControlListState.fromMap(Map<String, dynamic> map) {
    return AccessControlListState(
      accessControlListName: map['accessControlListName'] == null ? null : pulumi.Output.create<String>(map['accessControlListName'] as String),
      aclEntrys: map['aclEntrys'] == null ? null : pulumi.Output.create<List<AccessControlListAclEntry>>(pulumi.Input.decodeList<AccessControlListAclEntry>(map['aclEntrys'], (value) => AccessControlListAclEntry.fromMap((value as Map).cast<String, dynamic>()))),
      addressIpVersion: map['addressIpVersion'] == null ? null : pulumi.Output.create<String>(map['addressIpVersion'] as String),
    );
  }
}

