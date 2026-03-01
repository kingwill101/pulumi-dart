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
    pulumi.Output<bool>? allowHoneypotAccessInternet,
    pulumi.Output<int>? availableProbeNum,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? nodeName,
    pulumi.Output<List<String>>? securityGroupProbeIpLists,
    pulumi.Output<int>? status,
  }) :
      allowHoneypotAccessInternet = pulumi.Input.asOptionalInput<bool>(allowHoneypotAccessInternet),
      availableProbeNum = pulumi.Input.asOptionalInput<int>(availableProbeNum),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      nodeName = pulumi.Input.asOptionalInput<String>(nodeName),
      securityGroupProbeIpLists = pulumi.Input.asOptionalInput<List<String>>(securityGroupProbeIpLists),
      status = pulumi.Input.asOptionalInput<int>(status);

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
      allowHoneypotAccessInternet: map['allowHoneypotAccessInternet'] == null ? null : pulumi.Output.create<bool>(map['allowHoneypotAccessInternet'] as bool),
      availableProbeNum: map['availableProbeNum'] == null ? null : pulumi.Output.create<int>(map['availableProbeNum'] as int),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      nodeName: map['nodeName'] == null ? null : pulumi.Output.create<String>(map['nodeName'] as String),
      securityGroupProbeIpLists: map['securityGroupProbeIpLists'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupProbeIpLists'] as List).cast<String>()),
      status: map['status'] == null ? null : pulumi.Output.create<int>(map['status'] as int),
    );
  }
}

