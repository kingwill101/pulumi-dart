// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BgpPolicyContentFingerPrintRuleList {
  /// End of destination port 0-65535.
  final pulumi.Input<int> dstPortEnd;
  /// Destination Port start 0-65535.
  final pulumi.Input<int> dstPortStart;
  /// The UUID of the rule is required to be deleted and modified, and it is not required to be created.
  final pulumi.Input<String>? fingerPrintRuleId;
  /// Action. Currently, only drop is supported.
  final pulumi.Input<String> matchAction;
  /// Maximum bag length.
  final pulumi.Input<int> maxPktLen;
  /// Minimum package length.
  final pulumi.Input<int> minPktLen;
  /// Offset.
  final pulumi.Input<int>? offset;
  /// Load match, hexadecimal string; Similar to 'abcd'.
  final pulumi.Input<String>? payloadBytes;
  /// Protocol, tcp or udp.
  final pulumi.Input<String> protocol;
  /// Speed limit value 1-100000.
  final pulumi.Input<int>? rateValue;
  /// Serial number 1-100 ● Affects the order issued by the bottom layer ● The larger the number, the lower it is.
  final pulumi.Input<int> seqNo;
  /// Source Port end 0-65535.
  final pulumi.Input<int> srcPortEnd;
  /// Source port start 0-65535.
  final pulumi.Input<int> srcPortStart;

  /// Creates a new [BgpPolicyContentFingerPrintRuleList].
  /// [dstPortEnd] End of destination port 0-65535.
  /// [dstPortStart] Destination Port start 0-65535.
  /// [fingerPrintRuleId] The UUID of the rule is required to be deleted and modified, and it is not required to be created.
  /// [matchAction] Action. Currently, only drop is supported.
  /// [maxPktLen] Maximum bag length.
  /// [minPktLen] Minimum package length.
  /// [offset] Offset.
  /// [payloadBytes] Load match, hexadecimal string; Similar to 'abcd'.
  /// [protocol] Protocol, tcp or udp.
  /// [rateValue] Speed limit value 1-100000.
  /// [seqNo] Serial number 1-100 ● Affects the order issued by the bottom layer ● The larger the number, the lower it is.
  /// [srcPortEnd] Source Port end 0-65535.
  /// [srcPortStart] Source port start 0-65535.
  BgpPolicyContentFingerPrintRuleList({
    required this.dstPortEnd,
    required this.dstPortStart,
    this.fingerPrintRuleId,
    required this.matchAction,
    required this.maxPktLen,
    required this.minPktLen,
    this.offset,
    this.payloadBytes,
    required this.protocol,
    this.rateValue,
    required this.seqNo,
    required this.srcPortEnd,
    required this.srcPortStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dstPortEnd': dstPortEnd,
      'dstPortStart': dstPortStart,
      'fingerPrintRuleId': ?fingerPrintRuleId,
      'matchAction': matchAction,
      'maxPktLen': maxPktLen,
      'minPktLen': minPktLen,
      'offset': ?offset,
      'payloadBytes': ?payloadBytes,
      'protocol': protocol,
      'rateValue': ?rateValue,
      'seqNo': seqNo,
      'srcPortEnd': srcPortEnd,
      'srcPortStart': srcPortStart,
    };
  }

  factory BgpPolicyContentFingerPrintRuleList.fromMap(Map<String, dynamic> map) {
    return BgpPolicyContentFingerPrintRuleList(
      dstPortEnd: (map['dstPortEnd'] as int).input(),
      dstPortStart: (map['dstPortStart'] as int).input(),
      fingerPrintRuleId: map['fingerPrintRuleId'] == null ? null : (map['fingerPrintRuleId']! as String).input(),
      matchAction: (map['matchAction'] as String).input(),
      maxPktLen: (map['maxPktLen'] as int).input(),
      minPktLen: (map['minPktLen'] as int).input(),
      offset: map['offset'] == null ? null : (map['offset']! as int).input(),
      payloadBytes: map['payloadBytes'] == null ? null : (map['payloadBytes']! as String).input(),
      protocol: (map['protocol'] as String).input(),
      rateValue: map['rateValue'] == null ? null : (map['rateValue']! as int).input(),
      seqNo: (map['seqNo'] as int).input(),
      srcPortEnd: (map['srcPortEnd'] as int).input(),
      srcPortStart: (map['srcPortStart'] as int).input(),
    );
  }
}

