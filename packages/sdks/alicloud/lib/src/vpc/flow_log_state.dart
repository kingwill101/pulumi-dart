// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FlowLog resources.
class FlowLogState {
  /// The sampling interval of the flow log. Unit: seconds. Valid values: 1, 5, and 10 (default).
  final pulumi.Input<String>? aggregationInterval;
  /// Business status
  final pulumi.Input<String>? businessStatus;
  /// Creation time
  final pulumi.Input<String>? createTime;
  /// The Description of the VPC Flow Log.
  final pulumi.Input<String>? description;
  /// The flow log ID.
  final pulumi.Input<String>? flowLogId;
  /// The Name of the VPC Flow Log.
  final pulumi.Input<String>? flowLogName;
  /// The IP address type of the collected traffic.
  final pulumi.Input<String>? ipVersion;
  /// The Logstore that stores the captured traffic data.
  final pulumi.Input<String>? logStoreName;
  /// The project that manages the captured traffic data.
  final pulumi.Input<String>? projectName;
  /// The region ID.
  final pulumi.Input<String>? regionId;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The ID of the resource.
  final pulumi.Input<String>? resourceId;
  /// The resource type of the traffic captured by the flow log:
  /// - `NetworkInterface`: ENI.
  /// - `VSwitch`: All ENIs in the VSwitch.
  /// - `VPC`: All ENIs in the VPC.
  final pulumi.Input<String>? resourceType;
  /// The status of the VPC Flow Log. Valid values: `Active` and `Inactive`.
  final pulumi.Input<String>? status;
  /// The tag of the current instance resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The collected flow path. Value:
  /// - *all**: indicates full acquisition.
  /// - *internetGateway**: indicates public network traffic collection.
  final pulumi.Input<List<String>>? trafficPaths;
  /// The type of traffic collected. Valid values:
  /// - *All**: All traffic.
  /// - *Allow**: Access control allowedtraffic.
  /// - *Drop**: Access control denied traffic.
  final pulumi.Input<String>? trafficType;

  /// Creates a new [FlowLogState].
  /// [aggregationInterval] The sampling interval of the flow log. Unit: seconds. Valid values: 1, 5, and 10 (default).
  /// [businessStatus] Business status
  /// [createTime] Creation time
  /// [description] The Description of the VPC Flow Log.
  /// [flowLogId] The flow log ID.
  /// [flowLogName] The Name of the VPC Flow Log.
  /// [ipVersion] The IP address type of the collected traffic.
  /// [logStoreName] The Logstore that stores the captured traffic data.
  /// [projectName] The project that manages the captured traffic data.
  /// [regionId] The region ID.
  /// [resourceGroupId] The ID of the resource group.
  /// [resourceId] The ID of the resource.
  /// [resourceType] The resource type of the traffic captured by the flow log:
  /// [status] The status of the VPC Flow Log. Valid values: `Active` and `Inactive`.
  /// [tags] The tag of the current instance resource.
  /// [trafficPaths] The collected flow path. Value:
  /// [trafficType] The type of traffic collected. Valid values:
  FlowLogState({
    this.aggregationInterval,
    this.businessStatus,
    this.createTime,
    this.description,
    this.flowLogId,
    this.flowLogName,
    this.ipVersion,
    this.logStoreName,
    this.projectName,
    this.regionId,
    this.resourceGroupId,
    this.resourceId,
    this.resourceType,
    this.status,
    this.tags,
    this.trafficPaths,
    this.trafficType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationInterval': ?aggregationInterval,
      'businessStatus': ?businessStatus,
      'createTime': ?createTime,
      'description': ?description,
      'flowLogId': ?flowLogId,
      'flowLogName': ?flowLogName,
      'ipVersion': ?ipVersion,
      'logStoreName': ?logStoreName,
      'projectName': ?projectName,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'status': ?status,
      'tags': ?tags,
      'trafficPaths': ?trafficPaths,
      'trafficType': ?trafficType,
    };
  }

  factory FlowLogState.fromMap(Map<String, dynamic> map) {
    return FlowLogState(
      aggregationInterval: map['aggregationInterval'] == null ? null : (map['aggregationInterval'] as String).input(),
      businessStatus: map['businessStatus'] == null ? null : (map['businessStatus'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      flowLogId: map['flowLogId'] == null ? null : (map['flowLogId'] as String).input(),
      flowLogName: map['flowLogName'] == null ? null : (map['flowLogName'] as String).input(),
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion'] as String).input(),
      logStoreName: map['logStoreName'] == null ? null : (map['logStoreName'] as String).input(),
      projectName: map['projectName'] == null ? null : (map['projectName'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      trafficPaths: map['trafficPaths'] == null ? null : ((map['trafficPaths'] as List).cast<String>()).input(),
      trafficType: map['trafficType'] == null ? null : (map['trafficType'] as String).input(),
    );
  }
}

