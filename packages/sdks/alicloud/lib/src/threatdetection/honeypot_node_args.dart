// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_honeypot_node_honeypot_node_args_doc}
/// The set of arguments for HoneypotNode.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_honeypot_node_honeypot_node_args_doc}
class HoneypotNodeArgs {
  /// Whether to allow honeypot access to the external network. Value:-**true**: Allow-**false**: Disabled
  final pulumi.Input<bool>? allowHoneypotAccessInternet;
  /// Number of probes available.
  final pulumi.Input<int> availableProbeNum;
  /// Management node name.
  final pulumi.Input<String> nodeName;
  /// Release the collection of network segments.
  final pulumi.Input<List<String>>? securityGroupProbeIpLists;

  /// Creates a new [HoneypotNodeArgs].
  /// [allowHoneypotAccessInternet] Whether to allow honeypot access to the external network. Value:-**true**: Allow-**false**: Disabled
  /// [availableProbeNum] Number of probes available.
  /// [nodeName] Management node name.
  /// [securityGroupProbeIpLists] Release the collection of network segments.
  const HoneypotNodeArgs({
    this.allowHoneypotAccessInternet,
    required this.availableProbeNum,
    required this.nodeName,
    this.securityGroupProbeIpLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowHoneypotAccessInternet': ?allowHoneypotAccessInternet,
      'availableProbeNum': availableProbeNum,
      'nodeName': nodeName,
      'securityGroupProbeIpLists': ?securityGroupProbeIpLists,
    };
  }

  factory HoneypotNodeArgs.fromMap(Map<String, dynamic> map) {
    return HoneypotNodeArgs(
      allowHoneypotAccessInternet: (() { final guardedValue = map['allowHoneypotAccessInternet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availableProbeNum: pulumi.Input.fromValue(map['availableProbeNum'] as int),
      nodeName: pulumi.Input.fromValue(map['nodeName'] as String),
      securityGroupProbeIpLists: (() { final guardedValue = map['securityGroupProbeIpLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

