// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIpamIpamsIpam {
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;

  /// After an IPAM is created, the association between the resource discovery created by the system by default and the IPAM.
  final pulumi.Input<String> defaultResourceDiscoveryAssociationId;

  /// After IPAM is created, the system creates resource discovery by default.
  final pulumi.Input<String> defaultResourceDiscoveryId;

  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;

  /// The description of IPAM.It must be 2 to 256 characters in length and must start with an uppercase letter or a Chinese character, but cannot start with 'http: // 'or 'https. If the description is not filled in, it is blank. The default value is blank.
  final pulumi.Input<String> ipamDescription;

  /// The first ID of the resource.
  final pulumi.Input<String> ipamId;

  /// The name of the resource.
  final pulumi.Input<String> ipamName;

  /// After an IPAM is created, the scope of the private network IPAM created by the system by default.
  final pulumi.Input<String> privateDefaultScopeId;

  /// After an IPAM is created, the public network IPAM is created by default.
  final pulumi.Input<String> publicDefaultScopeId;

  /// The region ID of the resource.
  final pulumi.Input<String> regionId;

  /// The number of resource discovery objects associated with IPAM.
  final pulumi.Input<int> resourceDiscoveryAssociationCount;

  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;

  /// The status of the resource.
  final pulumi.Input<String> status;

  /// The tag of the resource.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [GetIpamIpamsIpam].
  /// [createTime] The creation time of the resource.
  /// [defaultResourceDiscoveryAssociationId] After an IPAM is created, the association between the resource discovery created by the system by default and the IPAM.
  /// [defaultResourceDiscoveryId] After IPAM is created, the system creates resource discovery by default.
  /// [id] The ID of the resource supplied above.
  /// [ipamDescription] The description of IPAM.It must be 2 to 256 characters in length and must start with an uppercase letter or a Chinese character, but cannot start with 'http: // 'or 'https. If the description is not filled in, it is blank. The default value is blank.
  /// [ipamId] The first ID of the resource.
  /// [ipamName] The name of the resource.
  /// [privateDefaultScopeId] After an IPAM is created, the scope of the private network IPAM created by the system by default.
  /// [publicDefaultScopeId] After an IPAM is created, the public network IPAM is created by default.
  /// [regionId] The region ID of the resource.
  /// [resourceDiscoveryAssociationCount] The number of resource discovery objects associated with IPAM.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the resource.
  /// [tags] The tag of the resource.
  GetIpamIpamsIpam({
    required this.createTime,
    required this.defaultResourceDiscoveryAssociationId,
    required this.defaultResourceDiscoveryId,
    required this.id,
    required this.ipamDescription,
    required this.ipamId,
    required this.ipamName,
    required this.privateDefaultScopeId,
    required this.publicDefaultScopeId,
    required this.regionId,
    required this.resourceDiscoveryAssociationCount,
    required this.resourceGroupId,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'defaultResourceDiscoveryAssociationId':
          defaultResourceDiscoveryAssociationId,
      'defaultResourceDiscoveryId': defaultResourceDiscoveryId,
      'id': id,
      'ipamDescription': ipamDescription,
      'ipamId': ipamId,
      'ipamName': ipamName,
      'privateDefaultScopeId': privateDefaultScopeId,
      'publicDefaultScopeId': publicDefaultScopeId,
      'regionId': regionId,
      'resourceDiscoveryAssociationCount': resourceDiscoveryAssociationCount,
      'resourceGroupId': resourceGroupId,
      'status': status,
      'tags': tags,
    };
  }

  factory GetIpamIpamsIpam.fromMap(Map<String, dynamic> map) {
    return GetIpamIpamsIpam(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      defaultResourceDiscoveryAssociationId: pulumi.Input.fromValue(
        map['defaultResourceDiscoveryAssociationId'] as String,
      ),
      defaultResourceDiscoveryId: pulumi.Input.fromValue(
        map['defaultResourceDiscoveryId'] as String,
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipamDescription: pulumi.Input.fromValue(map['ipamDescription'] as String),
      ipamId: pulumi.Input.fromValue(map['ipamId'] as String),
      ipamName: pulumi.Input.fromValue(map['ipamName'] as String),
      privateDefaultScopeId: pulumi.Input.fromValue(
        map['privateDefaultScopeId'] as String,
      ),
      publicDefaultScopeId: pulumi.Input.fromValue(
        map['publicDefaultScopeId'] as String,
      ),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      resourceDiscoveryAssociationCount: pulumi.Input.fromValue(
        map['resourceDiscoveryAssociationCount'] as int,
      ),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}
