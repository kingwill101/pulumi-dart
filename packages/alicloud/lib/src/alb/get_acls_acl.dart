// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_acls_acl_acl_entry.dart';

class GetAclsAcl {
  /// ACL Entries.
  final List<GetAclsAclAclEntry> aclEntries;
  /// Access Control Policy ID.
  final String aclId;
  /// The ACL Name.
  final String aclName;
  /// Address Protocol Version.
  final String addressIpVersion;
  /// The ID of the Acl.
  final String id;
  /// Resource Group to Which the Number.
  final String resourceGroupId;
  /// The state of the ACL. Valid values:`Provisioning` , `Available` and `Configuring`. `Provisioning`: The ACL is being created. `Available`: The ACL is available. `Configuring`: The ACL is being configured.
  final String status;

  /// Creates a new [GetAclsAcl].
  /// [aclEntries] ACL Entries.
  /// [aclId] Access Control Policy ID.
  /// [aclName] The ACL Name.
  /// [addressIpVersion] Address Protocol Version.
  /// [id] The ID of the Acl.
  /// [resourceGroupId] Resource Group to Which the Number.
  /// [status] The state of the ACL. Valid values:`Provisioning` , `Available` and `Configuring`. `Provisioning`: The ACL is being created. `Available`: The ACL is available. `Configuring`: The ACL is being configured.
  GetAclsAcl({
    required this.aclEntries,
    required this.aclId,
    required this.aclName,
    required this.addressIpVersion,
    required this.id,
    required this.resourceGroupId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclEntries': pulumi.Input.encodeList<GetAclsAclAclEntry, Map<String, dynamic>>(aclEntries, (value) => value.toMap()),
      'aclId': aclId,
      'aclName': aclName,
      'addressIpVersion': addressIpVersion,
      'id': id,
      'resourceGroupId': resourceGroupId,
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
      resourceGroupId: map['resourceGroupId'] as String,
      status: map['status'] as String,
    );
  }
}

