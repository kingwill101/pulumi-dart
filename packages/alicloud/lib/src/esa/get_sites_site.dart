// ignore_for_file: unused_element, unnecessary_cast


class GetSitesSite {
  /// Access type. Value:-**NS**: Managed access via NS.-**CNAME**: access through CNAME.
  final String accessType;
  /// Acceleration area
  final String coverage;
  /// Creation time
  final String createTime;
  /// The ID of the resource supplied above.
  final int id;
  /// The ID of the associated package instance.
  final String instanceId;
  /// Modification time
  final String modifyTime;
  /// Site Resolution Name Server List
  final String nameServerList;
  /// The ID of the resource group
  final String resourceGroupId;
  /// Site ID
  final int siteId;
  /// Site Name
  final String siteName;
  /// The status of the resource
  final String status;

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
      accessType: map['accessType'] as String,
      coverage: map['coverage'] as String,
      createTime: map['createTime'] as String,
      id: map['id'] as int,
      instanceId: map['instanceId'] as String,
      modifyTime: map['modifyTime'] as String,
      nameServerList: map['nameServerList'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      siteId: map['siteId'] as int,
      siteName: map['siteName'] as String,
      status: map['status'] as String,
    );
  }
}

