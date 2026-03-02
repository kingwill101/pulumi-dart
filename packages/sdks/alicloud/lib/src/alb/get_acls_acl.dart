// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_acls_acl_acl_entry.dart';

class GetAclsAcl {
  /// ACL Entries.
  final pulumi.Input<List<GetAclsAclAclEntry>> aclEntries;
  /// Access Control Policy ID.
  final pulumi.Input<String> aclId;
  /// The ACL Name.
  final pulumi.Input<String> aclName;
  /// Address Protocol Version.
  final pulumi.Input<String> addressIpVersion;
  /// The ID of the Acl.
  final pulumi.Input<String> id;
  /// Resource Group to Which the Number.
  final pulumi.Input<String> resourceGroupId;
  /// The state of the ACL. Valid values:`Provisioning` , `Available` and `Configuring`. `Provisioning`: The ACL is being created. `Available`: The ACL is available. `Configuring`: The ACL is being configured.
  final pulumi.Input<String> status;

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
      'aclEntries': pulumi.Input.mapInputValue<List<GetAclsAclAclEntry>, List<Map<String, dynamic>>>(aclEntries, (value) => pulumi.Input.encodeList<GetAclsAclAclEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      aclEntries: (pulumi.Input.decodeList<GetAclsAclAclEntry>(map['aclEntries'], (value) => GetAclsAclAclEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      aclId: (map['aclId'] as String).input(),
      aclName: (map['aclName'] as String).input(),
      addressIpVersion: (map['addressIpVersion'] as String).input(),
      id: (map['id'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

