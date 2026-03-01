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
    pulumi.Output<String>? aggregationInterval,
    pulumi.Output<String>? businessStatus,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? flowLogId,
    pulumi.Output<String>? flowLogName,
    pulumi.Output<String>? ipVersion,
    pulumi.Output<String>? logStoreName,
    pulumi.Output<String>? projectName,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? resourceId,
    pulumi.Output<String>? resourceType,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? trafficPaths,
    pulumi.Output<String>? trafficType,
  }) :
      aggregationInterval = pulumi.Input.asOptionalInput<String>(aggregationInterval),
      businessStatus = pulumi.Input.asOptionalInput<String>(businessStatus),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      flowLogId = pulumi.Input.asOptionalInput<String>(flowLogId),
      flowLogName = pulumi.Input.asOptionalInput<String>(flowLogName),
      ipVersion = pulumi.Input.asOptionalInput<String>(ipVersion),
      logStoreName = pulumi.Input.asOptionalInput<String>(logStoreName),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trafficPaths = pulumi.Input.asOptionalInput<List<String>>(trafficPaths),
      trafficType = pulumi.Input.asOptionalInput<String>(trafficType);

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
      aggregationInterval: map['aggregationInterval'] == null ? null : pulumi.Output.create<String>(map['aggregationInterval'] as String),
      businessStatus: map['businessStatus'] == null ? null : pulumi.Output.create<String>(map['businessStatus'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      flowLogId: map['flowLogId'] == null ? null : pulumi.Output.create<String>(map['flowLogId'] as String),
      flowLogName: map['flowLogName'] == null ? null : pulumi.Output.create<String>(map['flowLogName'] as String),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<String>(map['ipVersion'] as String),
      logStoreName: map['logStoreName'] == null ? null : pulumi.Output.create<String>(map['logStoreName'] as String),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trafficPaths: map['trafficPaths'] == null ? null : pulumi.Output.create<List<String>>((map['trafficPaths'] as List).cast<String>()),
      trafficType: map['trafficType'] == null ? null : pulumi.Output.create<String>(map['trafficType'] as String),
    );
  }
}

