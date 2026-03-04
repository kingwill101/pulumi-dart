// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BgpPolicyContentSourceLimit {
  /// bps range 1024~268435456.
  final pulumi.Input<int>? bps;

  /// Pps range 32~500000.
  final pulumi.Input<int>? pps;

  /// SynBps range 1024~268435456.
  final pulumi.Input<int>? synBps;

  /// SynPps range 1~100000.
  final pulumi.Input<int>? synPps;

  /// Creates a new [BgpPolicyContentSourceLimit].
  /// [bps] bps range 1024~268435456.
  /// [pps] Pps range 32~500000.
  /// [synBps] SynBps range 1024~268435456.
  /// [synPps] SynPps range 1~100000.
  BgpPolicyContentSourceLimit({this.bps, this.pps, this.synBps, this.synPps});

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
      bps: (() {
        final guardedValue = map['bps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pps: (() {
        final guardedValue = map['pps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      synBps: (() {
        final guardedValue = map['synBps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      synPps: (() {
        final guardedValue = map['synPps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
