// ignore_for_file: unused_element, unnecessary_cast


class BgpPolicyContentSourceLimit {
  /// bps range 1024~268435456.
  final int? bps;
  /// Pps range 32~500000.
  final int? pps;
  /// SynBps range 1024~268435456.
  final int? synBps;
  /// SynPps range 1~100000.
  final int? synPps;

  /// Creates a new [BgpPolicyContentSourceLimit].
  /// [bps] bps range 1024~268435456.
  /// [pps] Pps range 32~500000.
  /// [synBps] SynBps range 1024~268435456.
  /// [synPps] SynPps range 1~100000.
  BgpPolicyContentSourceLimit({
    this.bps,
    this.pps,
    this.synBps,
    this.synPps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bps': ?bps,
      'pps': ?pps,
      'synBps': ?synBps,
      'synPps': ?synPps,
    };
  }

  factory BgpPolicyContentSourceLimit.fromMap(Map<String, dynamic> map) {
    return BgpPolicyContentSourceLimit(
      bps: map['bps'] == null ? null : map['bps'] as int,
      pps: map['pps'] == null ? null : map['pps'] as int,
      synBps: map['synBps'] == null ? null : map['synBps'] as int,
      synPps: map['synPps'] == null ? null : map['synPps'] as int,
    );
  }
}

