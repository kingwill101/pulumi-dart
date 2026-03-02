// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BgpPolicyContentPortRuleList {
  /// End of destination port 0-65535.
  final pulumi.Input<int> dstPortEnd;
  /// Destination Port start 0-65535.
  final pulumi.Input<int> dstPortStart;
  /// Action. Currently, only drop is supported.
  final pulumi.Input<String> matchAction;
  /// Rule UUID is required to be deleted and modified, and is not required to be created.
  final pulumi.Input<String>? portRuleId;
  /// Protocol, tcp or udp.
  final pulumi.Input<String> protocol;
  /// Serial number 1-100 ● Affects the order issued by the bottom layer ● The larger the number, the lower it is.
  final pulumi.Input<int> seqNo;
  /// Source Port end 0-65535.
  final pulumi.Input<int> srcPortEnd;
  /// Source port start 0-65535.
  final pulumi.Input<int> srcPortStart;

  /// Creates a new [BgpPolicyContentPortRuleList].
  /// [dstPortEnd] End of destination port 0-65535.
  /// [dstPortStart] Destination Port start 0-65535.
  /// [matchAction] Action. Currently, only drop is supported.
  /// [portRuleId] Rule UUID is required to be deleted and modified, and is not required to be created.
  /// [protocol] Protocol, tcp or udp.
  /// [seqNo] Serial number 1-100 ● Affects the order issued by the bottom layer ● The larger the number, the lower it is.
  /// [srcPortEnd] Source Port end 0-65535.
  /// [srcPortStart] Source port start 0-65535.
  BgpPolicyContentPortRuleList({
    required this.dstPortEnd,
    required this.dstPortStart,
    required this.matchAction,
    this.portRuleId,
    required this.protocol,
    required this.seqNo,
    required this.srcPortEnd,
    required this.srcPortStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dstPortEnd': dstPortEnd,
      'dstPortStart': dstPortStart,
      'matchAction': matchAction,
      'portRuleId': ?portRuleId,
      'protocol': protocol,
      'seqNo': seqNo,
      'srcPortEnd': srcPortEnd,
      'srcPortStart': srcPortStart,
    };
  }

  factory BgpPolicyContentPortRuleList.fromMap(Map<String, dynamic> map) {
    return BgpPolicyContentPortRuleList(
      dstPortEnd: (map['dstPortEnd'] as int).input(),
      dstPortStart: (map['dstPortStart'] as int).input(),
      matchAction: (map['matchAction'] as String).input(),
      portRuleId: map['portRuleId'] == null ? null : (map['portRuleId']! as String).input(),
      protocol: (map['protocol'] as String).input(),
      seqNo: (map['seqNo'] as int).input(),
      srcPortEnd: (map['srcPortEnd'] as int).input(),
      srcPortStart: (map['srcPortStart'] as int).input(),
    );
  }
}

