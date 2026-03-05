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
      dstPortEnd: pulumi.Input.fromValue(map['dstPortEnd'] as int),
      dstPortStart: pulumi.Input.fromValue(map['dstPortStart'] as int),
      fingerPrintRuleId: (() { final guardedValue = map['fingerPrintRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchAction: pulumi.Input.fromValue(map['matchAction'] as String),
      maxPktLen: pulumi.Input.fromValue(map['maxPktLen'] as int),
      minPktLen: pulumi.Input.fromValue(map['minPktLen'] as int),
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      payloadBytes: (() { final guardedValue = map['payloadBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      rateValue: (() { final guardedValue = map['rateValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      seqNo: pulumi.Input.fromValue(map['seqNo'] as int),
      srcPortEnd: pulumi.Input.fromValue(map['srcPortEnd'] as int),
      srcPortStart: pulumi.Input.fromValue(map['srcPortStart'] as int),
    );
  }
}

