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
      'outputs':
          ?pulumi.Input.mapOptionalInputValue<
            List<OutputResponse>,
            List<Map<String, dynamic>>
          >(
            outputs,
            (value) =>
                pulumi.Input.encodeList<OutputResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
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
      'tags':
          ?pulumi.Input.mapOptionalInputValue<
            List<TagResponse>,
            List<Map<String, dynamic>>
          >(
            tags,
            (value) =>
                pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'templateBody': ?templateBody,
      'templateURL': ?templateURL,
      'timeoutInMinutes': ?timeoutInMinutes,
    };
  }

  factory AwsCloudFormationStackPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AwsCloudFormationStackPropertiesResponse(
      capabilities: (() {
        final guardedValue = map['capabilities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      changeSetId: (() {
        final guardedValue = map['changeSetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      creationTime: (() {
        final guardedValue = map['creationTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disableRollback: (() {
        final guardedValue = map['disableRollback'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableTerminationProtection: (() {
        final guardedValue = map['enableTerminationProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      lastUpdateTime: (() {
        final guardedValue = map['lastUpdateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notificationARNs: (() {
        final guardedValue = map['notificationARNs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputs: (() {
        final guardedValue = map['outputs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<OutputResponse>(
            guardedValue,
            (value) =>
                OutputResponse.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      parentId: (() {
        final guardedValue = map['parentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleARN: (() {
        final guardedValue = map['roleARN'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rootId: (() {
        final guardedValue = map['rootId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackId: (() {
        final guardedValue = map['stackId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackName: (() {
        final guardedValue = map['stackName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackPolicyBody: (() {
        final guardedValue = map['stackPolicyBody'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      stackPolicyURL: (() {
        final guardedValue = map['stackPolicyURL'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackStatus: (() {
        final guardedValue = map['stackStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackStatusReason: (() {
        final guardedValue = map['stackStatusReason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TagResponse>(
            guardedValue,
            (value) =>
                TagResponse.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      templateBody: (() {
        final guardedValue = map['templateBody'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      templateURL: (() {
        final guardedValue = map['templateURL'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeoutInMinutes: (() {
        final guardedValue = map['timeoutInMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
