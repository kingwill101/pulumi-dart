// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSitesSite {
  /// Access type. Value:-**NS**: Managed access via NS.-**CNAME**: access through CNAME.
  final pulumi.Input<String> accessType;
  /// Acceleration area
  final pulumi.Input<String> coverage;
  /// Creation time
  final pulumi.Input<String> createTime;
  /// The ID of the resource supplied above.
  final pulumi.Input<int> id;
  /// The ID of the associated package instance.
  final pulumi.Input<String> instanceId;
  /// Modification time
  final pulumi.Input<String> modifyTime;
  /// Site Resolution Name Server List
  final pulumi.Input<String> nameServerList;
  /// The ID of the resource group
  final pulumi.Input<String> resourceGroupId;
  /// Site ID
  final pulumi.Input<int> siteId;
  /// Site Name
  final pulumi.Input<String> siteName;
  /// The status of the resource
  final pulumi.Input<String> status;

  /// Creates a new [GetSitesSite].
  /// [accessType] Access type. Value:-**NS**: Managed access via NS.-**CNAME**: access through CNAME.
  /// [coverage] Acceleration area
  /// [createTime] Creation time
  /// [id] The ID of the resource supplied above.
  /// [instanceId] The ID of the associated package instance.
  /// [modifyTime] Modification time
  /// [nameServerList] Site Resolution Name Server List
  /// [resourceGroupId] The ID of the resource group
  /// [siteId] Site ID
  /// [siteName] Site Name
  /// [status] The status of the resource
  GetSitesSite({
    required this.accessType,
    required this.coverage,
    required this.createTime,
    required this.id,
    required this.instanceId,
    required this.modifyTime,
    required this.nameServerList,
    required this.resourceGroupId,
    required this.siteId,
    required this.siteName,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': accessType,
      'coverage': coverage,
      'createTime': createTime,
      'id': id,
      'instanceId': instanceId,
      'modifyTime': modifyTime,
      'nameServerList': nameServerList,
      'resourceGroupId': resourceGroupId,
      'siteId': siteId,
      'siteName': siteName,
      'status': status,
    };
  }

  factory GetSitesSite.fromMap(Map<String, dynamic> map) {
    return GetSitesSite(
      accessType: (map['accessType'] as String).input(),
      coverage: (map['coverage'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      id: (map['id'] as int).input(),
      instanceId: (map['instanceId'] as String).input(),
      modifyTime: (map['modifyTime'] as String).input(),
      nameServerList: (map['nameServerList'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      siteId: (map['siteId'] as int).input(),
      siteName: (map['siteName'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

