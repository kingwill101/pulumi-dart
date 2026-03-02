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
  HoneypotNodeArgs({
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
      allowHoneypotAccessInternet: map['allowHoneypotAccessInternet'] == null ? null : (map['allowHoneypotAccessInternet'] as bool).input(),
      availableProbeNum: (map['availableProbeNum'] as int).input(),
      nodeName: (map['nodeName'] as String).input(),
      securityGroupProbeIpLists: map['securityGroupProbeIpLists'] == null ? null : ((map['securityGroupProbeIpLists'] as List).cast<String>()).input(),
    );
  }
}

