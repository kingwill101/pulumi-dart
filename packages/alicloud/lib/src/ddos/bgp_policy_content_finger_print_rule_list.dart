// ignore_for_file: unused_element, unnecessary_cast


class BgpPolicyContentFingerPrintRuleList {
  /// End of destination port 0-65535.
  final int dstPortEnd;
  /// Destination Port start 0-65535.
  final int dstPortStart;
  /// The UUID of the rule is required to be deleted and modified, and it is not required to be created.
  final String? fingerPrintRuleId;
  /// Action. Currently, only drop is supported.
  final String matchAction;
  /// Maximum bag length.
  final int maxPktLen;
  /// Minimum package length.
  final int minPktLen;
  /// Offset.
  final int? offset;
  /// Load match, hexadecimal string; Similar to 'abcd'.
  final String? payloadBytes;
  /// Protocol, tcp or udp.
  final String protocol;
  /// Speed limit value 1-100000.
  final int? rateValue;
  /// Serial number 1-100 ● Affects the order issued by the bottom layer ● The larger the number, the lower it is.
  final int seqNo;
  /// Source Port end 0-65535.
  final int srcPortEnd;
  /// Source port start 0-65535.
  final int srcPortStart;

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
      dstPortEnd: map['dstPortEnd'] as int,
      dstPortStart: map['dstPortStart'] as int,
      fingerPrintRuleId: map['fingerPrintRuleId'] == null ? null : map['fingerPrintRuleId'] as String,
      matchAction: map['matchAction'] as String,
      maxPktLen: map['maxPktLen'] as int,
      minPktLen: map['minPktLen'] as int,
      offset: map['offset'] == null ? null : map['offset'] as int,
      payloadBytes: map['payloadBytes'] == null ? null : map['payloadBytes'] as String,
      protocol: map['protocol'] as String,
      rateValue: map['rateValue'] == null ? null : map['rateValue'] as int,
      seqNo: map['seqNo'] as int,
      srcPortEnd: map['srcPortEnd'] as int,
      srcPortStart: map['srcPortStart'] as int,
    );
  }
}

