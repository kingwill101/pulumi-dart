// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HoneypotNode resources.
class HoneypotNodeState {
  /// Whether to allow honeypot access to the external network. Value:-**true**: Allow-**false**: Disabled
  final pulumi.Input<bool>? allowHoneypotAccessInternet;
  /// Number of probes available.
  final pulumi.Input<int>? availableProbeNum;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Management node name.
  final pulumi.Input<String>? nodeName;
  /// Release the collection of network segments.
  final pulumi.Input<List<String>>? securityGroupProbeIpLists;
  /// The status of the resource
  final pulumi.Input<int>? status;

  /// Creates a new [HoneypotNodeState].
  /// [allowHoneypotAccessInternet] Whether to allow honeypot access to the external network. Value:-**true**: Allow-**false**: Disabled
  /// [availableProbeNum] Number of probes available.
  /// [createTime] The creation time of the resource
  /// [nodeName] Management node name.
  /// [securityGroupProbeIpLists] Release the collection of network segments.
  /// [status] The status of the resource
  HoneypotNodeState({
    this.allowHoneypotAccessInternet,
    this.availableProbeNum,
    this.createTime,
    this.nodeName,
    this.securityGroupProbeIpLists,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowHoneypotAccessInternet': ?allowHoneypotAccessInternet,
      'availableProbeNum': ?availableProbeNum,
      'createTime': ?createTime,
      'nodeName': ?nodeName,
      'securityGroupProbeIpLists': ?securityGroupProbeIpLists,
      'status': ?status,
    };
  }

  factory HoneypotNodeState.fromMap(Map<String, dynamic> map) {
    return HoneypotNodeState(
      allowHoneypotAccessInternet: (() { final guardedValue = map['allowHoneypotAccessInternet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availableProbeNum: (() { final guardedValue = map['availableProbeNum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeName: (() { final guardedValue = map['nodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupProbeIpLists: (() { final guardedValue = map['securityGroupProbeIpLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

