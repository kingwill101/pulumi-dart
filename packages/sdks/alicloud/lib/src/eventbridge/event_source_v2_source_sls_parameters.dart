// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSourceV2SourceSlsParameters {
  /// Start consumption point, which can be the earliest or latest point corresponding to begin and end respectively, or start consumption from a specified time, measured in seconds.
  final pulumi.Input<String>? consumePosition;
  /// The logstore of log service SLS.
  final pulumi.Input<String>? logStore;
  /// The log project of log service SLS.
  final pulumi.Input<String>? project;
  /// When authorizing event bus EventBridge to use this role to read SLS log content, the following conditions must be met: when creating the role used by the service in the RAM console, you need to select Alibaba Cloud Service and event bus for trusted service ". For the permissions policy of this role, see custom event source log service SLS.
  final pulumi.Input<String>? roleName;

  /// Creates a new [EventSourceV2SourceSlsParameters].
  /// [consumePosition] Start consumption point, which can be the earliest or latest point corresponding to begin and end respectively, or start consumption from a specified time, measured in seconds.
  /// [logStore] The logstore of log service SLS.
  /// [project] The log project of log service SLS.
  /// [roleName] When authorizing event bus EventBridge to use this role to read SLS log content, the following conditions must be met: when creating the role used by the service in the RAM console, you need to select Alibaba Cloud Service and event bus for trusted service ". For the permissions policy of this role, see custom event source log service SLS.
  EventSourceV2SourceSlsParameters({
    this.consumePosition,
    this.logStore,
    this.project,
    this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumePosition': ?consumePosition,
      'logStore': ?logStore,
      'project': ?project,
      'roleName': ?roleName,
    };
  }

  factory EventSourceV2SourceSlsParameters.fromMap(Map<String, dynamic> map) {
    return EventSourceV2SourceSlsParameters(
      consumePosition: (() { final guardedValue = map['consumePosition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logStore: (() { final guardedValue = map['logStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

