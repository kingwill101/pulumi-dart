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
    this.accessControlListName,
    this.aclEntrys,
    this.addressIpVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlListName': ?accessControlListName,
      'aclEntrys':
          ?pulumi.Input.mapOptionalInputValue<
            List<AccessControlListAclEntry>,
            List<Map<String, dynamic>>
          >(
            aclEntrys,
            (value) =>
                pulumi.Input.encodeList<
                  AccessControlListAclEntry,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'addressIpVersion': ?addressIpVersion,
    };
  }

  factory AccessControlListState.fromMap(Map<String, dynamic> map) {
    return AccessControlListState(
      accessControlListName: (() {
        final guardedValue = map['accessControlListName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      aclEntrys: (() {
        final guardedValue = map['aclEntrys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AccessControlListAclEntry>(
            guardedValue,
            (value) => AccessControlListAclEntry.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      addressIpVersion: (() {
        final guardedValue = map['addressIpVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
