// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_response.dart';
import 'tag_response.dart';

/// Definition of awsCloudFormationStack
class AwsCloudFormationStackPropertiesResponse {
  /// Property capabilities
  final pulumi.Input<List<String>>? capabilities;
  /// Property changeSetId
  final pulumi.Input<String>? changeSetId;
  /// Property creationTime
  final pulumi.Input<String>? creationTime;
  /// Property description
  final pulumi.Input<String>? description;
  /// Property disableRollback
  final pulumi.Input<bool>? disableRollback;
  /// Property enableTerminationProtection
  final pulumi.Input<bool>? enableTerminationProtection;
  /// Property lastUpdateTime
  final pulumi.Input<String>? lastUpdateTime;
  /// Property notificationARNs
  final pulumi.Input<List<String>>? notificationARNs;
  /// Property outputs
  final pulumi.Input<List<OutputResponse>>? outputs;
  /// Property parameters
  final pulumi.Input<Map<String, String>>? parameters;
  /// Property parentId
  final pulumi.Input<String>? parentId;
  /// Property roleARN
  final pulumi.Input<String>? roleARN;
  /// Property rootId
  final pulumi.Input<String>? rootId;
  /// Property stackId
  final pulumi.Input<String>? stackId;
  /// Property stackName
  final pulumi.Input<String>? stackName;
  /// Property stackPolicyBody
  final pulumi.Input<dynamic>? stackPolicyBody;
  /// Property stackPolicyURL
  final pulumi.Input<String>? stackPolicyURL;
  /// Property stackStatus
  final pulumi.Input<String>? stackStatus;
  /// Property stackStatusReason
  final pulumi.Input<String>? stackStatusReason;
  /// Property tags
  final pulumi.Input<List<TagResponse>>? tags;
  /// Property templateBody
  final pulumi.Input<dynamic>? templateBody;
  /// Property templateURL
  final pulumi.Input<String>? templateURL;
  /// Property timeoutInMinutes
  final pulumi.Input<int>? timeoutInMinutes;

  /// Creates a new [AwsCloudFormationStackPropertiesResponse].
  /// [capabilities] Property capabilities
  /// [changeSetId] Property changeSetId
  /// [creationTime] Property creationTime
  /// [description] Property description
  /// [disableRollback] Property disableRollback
  /// [enableTerminationProtection] Property enableTerminationProtection
  /// [lastUpdateTime] Property lastUpdateTime
  /// [notificationARNs] Property notificationARNs
  /// [outputs] Property outputs
  /// [parameters] Property parameters
  /// [parentId] Property parentId
  /// [roleARN] Property roleARN
  /// [rootId] Property rootId
  /// [stackId] Property stackId
  /// [stackName] Property stackName
  /// [stackPolicyBody] Property stackPolicyBody
  /// [stackPolicyURL] Property stackPolicyURL
  /// [stackStatus] Property stackStatus
  /// [stackStatusReason] Property stackStatusReason
  /// [tags] Property tags
  /// [templateBody] Property templateBody
  /// [templateURL] Property templateURL
  /// [timeoutInMinutes] Property timeoutInMinutes
  AwsCloudFormationStackPropertiesResponse({
    this.capabilities,
    this.changeSetId,
    this.creationTime,
    this.description,
    this.disableRollback,
    this.enableTerminationProtection,
    this.lastUpdateTime,
    this.notificationARNs,
    this.outputs,
    this.parameters,
    this.parentId,
    this.roleARN,
    this.rootId,
    this.stackId,
    this.stackName,
    this.stackPolicyBody,
    this.stackPolicyURL,
    this.stackStatus,
    this.stackStatusReason,
    this.tags,
    this.templateBody,
    this.templateURL,
    this.timeoutInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?capabilities,
      'changeSetId': ?changeSetId,
      'creationTime': ?creationTime,
      'description': ?description,
      'disableRollback': ?disableRollback,
      'enableTerminationProtection': ?enableTerminationProtection,
      'lastUpdateTime': ?lastUpdateTime,
      'notificationARNs': ?notificationARNs,
      'outputs': ?pulumi.Input.mapOptionalInputValue<List<OutputResponse>, List<Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeList<OutputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameters': ?parameters,
      'parentId': ?parentId,
      'roleARN': ?roleARN,
      'rootId': ?rootId,
      'stackId': ?stackId,
      'stackName': ?stackName,
      'stackPolicyBody': ?stackPolicyBody,
      'stackPolicyURL': ?stackPolicyURL,
      'stackStatus': ?stackStatus,
      'stackStatusReason': ?stackStatusReason,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateBody': ?templateBody,
      'templateURL': ?templateURL,
      'timeoutInMinutes': ?timeoutInMinutes,
    };
  }

  factory AwsCloudFormationStackPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsCloudFormationStackPropertiesResponse(
      capabilities: map['capabilities'] == null ? null : ((map['capabilities']! as List).cast<String>()).input(),
      changeSetId: map['changeSetId'] == null ? null : (map['changeSetId']! as String).input(),
      creationTime: map['creationTime'] == null ? null : (map['creationTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disableRollback: map['disableRollback'] == null ? null : (map['disableRollback']! as bool).input(),
      enableTerminationProtection: map['enableTerminationProtection'] == null ? null : (map['enableTerminationProtection']! as bool).input(),
      lastUpdateTime: map['lastUpdateTime'] == null ? null : (map['lastUpdateTime']! as String).input(),
      notificationARNs: map['notificationARNs'] == null ? null : ((map['notificationARNs']! as List).cast<String>()).input(),
      outputs: map['outputs'] == null ? null : (pulumi.Input.decodeList<OutputResponse>(map['outputs']!, (value) => OutputResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
      parentId: map['parentId'] == null ? null : (map['parentId']! as String).input(),
      roleARN: map['roleARN'] == null ? null : (map['roleARN']! as String).input(),
      rootId: map['rootId'] == null ? null : (map['rootId']! as String).input(),
      stackId: map['stackId'] == null ? null : (map['stackId']! as String).input(),
      stackName: map['stackName'] == null ? null : (map['stackName']! as String).input(),
      stackPolicyBody: map['stackPolicyBody'] == null ? null : (map['stackPolicyBody']!).input(),
      stackPolicyURL: map['stackPolicyURL'] == null ? null : (map['stackPolicyURL']! as String).input(),
      stackStatus: map['stackStatus'] == null ? null : (map['stackStatus']! as String).input(),
      stackStatusReason: map['stackStatusReason'] == null ? null : (map['stackStatusReason']! as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<TagResponse>(map['tags']!, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      templateBody: map['templateBody'] == null ? null : (map['templateBody']!).input(),
      templateURL: map['templateURL'] == null ? null : (map['templateURL']! as String).input(),
      timeoutInMinutes: map['timeoutInMinutes'] == null ? null : (map['timeoutInMinutes']! as int).input(),
    );
  }
}

