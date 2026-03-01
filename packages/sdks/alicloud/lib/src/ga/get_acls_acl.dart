// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_acls_acl_acl_entry.dart';

class GetAclsAcl {
  /// The entries of the Acl.
  final List<GetAclsAclAclEntry> aclEntries;
  /// The  ID of the Acl.
  final String aclId;
  /// The name of the acl.
  final String aclName;
  /// The address ip version.
  final String addressIpVersion;
  /// The ID of the Acl. Its value is same as `acl_id`.
  final String id;
  /// The status of the resource. Valid values: `active`, `configuring`, `deleting`, `init`.
  final String status;

  /// Creates a new [GetAclsAcl].
  /// [aclEntries] The entries of the Acl.
  /// [aclId] The  ID of the Acl.
  /// [aclName] The name of the acl.
  /// [addressIpVersion] The address ip version.
  /// [id] The ID of the Acl. Its value is same as `acl_id`.
  /// [status] The status of the resource. Valid values: `active`, `configuring`, `deleting`, `init`.
  GetAclsAcl({
    required this.aclEntries,
    required this.aclId,
    required this.aclName,
    required this.addressIpVersion,
    required this.id,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclEntries': pulumi.Input.encodeList<GetAclsAclAclEntry, Map<String, dynamic>>(aclEntries, (value) => value.toMap()),
      'aclId': aclId,
      'aclName': aclName,
      'addressIpVersion': addressIpVersion,
      'id': id,
      'status': status,
    };
  }

  factory GetAclsAcl.fromMap(Map<String, dynamic> map) {
    return GetAclsAcl(
      aclEntries: pulumi.Input.decodeList<GetAclsAclAclEntry>(map['aclEntries'], (value) => GetAclsAclAclEntry.fromMap((value as Map).cast<String, dynamic>())),
      aclId: map['aclId'] as String,
      aclName: map['aclName'] as String,
      addressIpVersion: map['addressIpVersion'] as String,
      id: map['id'] as String,
      status: map['status'] as String,
    );
  }
}

