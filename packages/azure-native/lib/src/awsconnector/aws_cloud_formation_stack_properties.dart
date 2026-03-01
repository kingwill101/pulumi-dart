// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_type.dart';
import 'tag.dart';

/// Definition of awsCloudFormationStack
class AwsCloudFormationStackProperties {
  /// Property capabilities
  final List<String>? capabilities;
  /// Property changeSetId
  final String? changeSetId;
  /// Property creationTime
  final String? creationTime;
  /// Property description
  final String? description;
  /// Property disableRollback
  final bool? disableRollback;
  /// Property enableTerminationProtection
  final bool? enableTerminationProtection;
  /// Property lastUpdateTime
  final String? lastUpdateTime;
  /// Property notificationARNs
  final List<String>? notificationARNs;
  /// Property outputs
  final List<OutputType>? outputs;
  /// Property parameters
  final Map<String, String>? parameters;
  /// Property parentId
  final String? parentId;
  /// Property roleARN
  final String? roleARN;
  /// Property rootId
  final String? rootId;
  /// Property stackId
  final String? stackId;
  /// Property stackName
  final String? stackName;
  /// Property stackPolicyBody
  final dynamic stackPolicyBody;
  /// Property stackPolicyURL
  final String? stackPolicyURL;
  /// Property stackStatus
  final String? stackStatus;
  /// Property stackStatusReason
  final String? stackStatusReason;
  /// Property tags
  final List<Tag>? tags;
  /// Property templateBody
  final dynamic templateBody;
  /// Property templateURL
  final String? templateURL;
  /// Property timeoutInMinutes
  final int? timeoutInMinutes;

  /// Creates a new [AwsCloudFormationStackProperties].
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
  AwsCloudFormationStackProperties({
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
      'outputs': ?outputs == null ? null : pulumi.Input.encodeList<OutputType, Map<String, dynamic>>(outputs!, (value) => value.toMap()),
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
      'tags': ?tags == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'templateBody': ?templateBody,
      'templateURL': ?templateURL,
      'timeoutInMinutes': ?timeoutInMinutes,
    };
  }

  factory AwsCloudFormationStackProperties.fromMap(Map<String, dynamic> map) {
    return AwsCloudFormationStackProperties(
      capabilities: map['capabilities'] == null ? null : (map['capabilities'] as List).cast<String>(),
      changeSetId: map['changeSetId'] == null ? null : map['changeSetId'] as String,
      creationTime: map['creationTime'] == null ? null : map['creationTime'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      disableRollback: map['disableRollback'] == null ? null : map['disableRollback'] as bool,
      enableTerminationProtection: map['enableTerminationProtection'] == null ? null : map['enableTerminationProtection'] as bool,
      lastUpdateTime: map['lastUpdateTime'] == null ? null : map['lastUpdateTime'] as String,
      notificationARNs: map['notificationARNs'] == null ? null : (map['notificationARNs'] as List).cast<String>(),
      outputs: map['outputs'] == null ? null : pulumi.Input.decodeList<OutputType>(map['outputs'], (value) => OutputType.fromMap((value as Map).cast<String, dynamic>())),
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      parentId: map['parentId'] == null ? null : map['parentId'] as String,
      roleARN: map['roleARN'] == null ? null : map['roleARN'] as String,
      rootId: map['rootId'] == null ? null : map['rootId'] as String,
      stackId: map['stackId'] == null ? null : map['stackId'] as String,
      stackName: map['stackName'] == null ? null : map['stackName'] as String,
      stackPolicyBody: map['stackPolicyBody'] == null ? null : map['stackPolicyBody'],
      stackPolicyURL: map['stackPolicyURL'] == null ? null : map['stackPolicyURL'] as String,
      stackStatus: map['stackStatus'] == null ? null : map['stackStatus'] as String,
      stackStatusReason: map['stackStatusReason'] == null ? null : map['stackStatusReason'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
      templateBody: map['templateBody'] == null ? null : map['templateBody'],
      templateURL: map['templateURL'] == null ? null : map['templateURL'] as String,
      timeoutInMinutes: map['timeoutInMinutes'] == null ? null : map['timeoutInMinutes'] as int,
    );
  }
}

