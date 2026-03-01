// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_flow_log_flow_log_args_doc}
/// The set of arguments for FlowLog.
/// {@endtemplate}
/// {@macro pulumi_vpc_flow_log_flow_log_args_doc}
class FlowLogArgs {
  /// The sampling interval of the flow log. Unit: seconds. Valid values: 1, 5, and 10 (default).
  final pulumi.Input<String>? aggregationInterval;
  /// The Description of the VPC Flow Log.
  final pulumi.Input<String>? description;
  /// The Name of the VPC Flow Log.
  final pulumi.Input<String>? flowLogName;
  /// The IP address type of the collected traffic.
  final pulumi.Input<String>? ipVersion;
  /// The Logstore that stores the captured traffic data.
  final pulumi.Input<String> logStoreName;
  /// The project that manages the captured traffic data.
  final pulumi.Input<String> projectName;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The ID of the resource.
  final pulumi.Input<String> resourceId;
  /// The resource type of the traffic captured by the flow log:
  /// - `NetworkInterface`: ENI.
  /// - `VSwitch`: All ENIs in the VSwitch.
  /// - `VPC`: All ENIs in the VPC.
  final pulumi.Input<String> resourceType;
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
  final pulumi.Input<String> trafficType;

  /// Creates a new [FlowLogArgs].
  /// [aggregationInterval] The sampling interval of the flow log. Unit: seconds. Valid values: 1, 5, and 10 (default).
  /// [description] The Description of the VPC Flow Log.
  /// [flowLogName] The Name of the VPC Flow Log.
  /// [ipVersion] The IP address type of the collected traffic.
  /// [logStoreName] The Logstore that stores the captured traffic data.
  /// [projectName] The project that manages the captured traffic data.
  /// [resourceGroupId] The ID of the resource group.
  /// [resourceId] The ID of the resource.
  /// [resourceType] The resource type of the traffic captured by the flow log:
  /// [status] The status of the VPC Flow Log. Valid values: `Active` and `Inactive`.
  /// [tags] The tag of the current instance resource.
  /// [trafficPaths] The collected flow path. Value:
  /// [trafficType] The type of traffic collected. Valid values:
  FlowLogArgs({
    String? aggregationInterval,
    String? description,
    String? flowLogName,
    String? ipVersion,
    required String logStoreName,
    required String projectName,
    String? resourceGroupId,
    required String resourceId,
    required String resourceType,
    String? status,
    Map<String, String>? tags,
    List<String>? trafficPaths,
    required String trafficType,
  }) :
      aggregationInterval = pulumi.Input.asOptionalInput<String>(aggregationInterval),
      description = pulumi.Input.asOptionalInput<String>(description),
      flowLogName = pulumi.Input.asOptionalInput<String>(flowLogName),
      ipVersion = pulumi.Input.asOptionalInput<String>(ipVersion),
      logStoreName = pulumi.Input.asInput<String>(logStoreName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      resourceId = pulumi.Input.asInput<String>(resourceId),
      resourceType = pulumi.Input.asInput<String>(resourceType),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trafficPaths = pulumi.Input.asOptionalInput<List<String>>(trafficPaths),
      trafficType = pulumi.Input.asInput<String>(trafficType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationInterval': ?aggregationInterval,
      'description': ?description,
      'flowLogName': ?flowLogName,
      'ipVersion': ?ipVersion,
      'logStoreName': logStoreName,
      'projectName': projectName,
      'resourceGroupId': ?resourceGroupId,
      'resourceId': resourceId,
      'resourceType': resourceType,
      'status': ?status,
      'tags': ?tags,
      'trafficPaths': ?trafficPaths,
      'trafficType': trafficType,
    };
  }

  factory FlowLogArgs.fromMap(Map<String, dynamic> map) {
    return FlowLogArgs(
      aggregationInterval: map['aggregationInterval'] == null ? null : map['aggregationInterval'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      flowLogName: map['flowLogName'] == null ? null : map['flowLogName'] as String,
      ipVersion: map['ipVersion'] == null ? null : map['ipVersion'] as String,
      logStoreName: map['logStoreName'] as String,
      projectName: map['projectName'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      resourceId: map['resourceId'] as String,
      resourceType: map['resourceType'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      trafficPaths: map['trafficPaths'] == null ? null : (map['trafficPaths'] as List).cast<String>(),
      trafficType: map['trafficType'] as String,
    );
  }
}

