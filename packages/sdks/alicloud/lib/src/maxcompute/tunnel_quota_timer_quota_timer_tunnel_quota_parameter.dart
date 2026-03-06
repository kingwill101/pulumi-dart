// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TunnelQuotaTimerQuotaTimerTunnelQuotaParameter {
  /// The number of elastic reserved concurrency (Slot).
  final pulumi.Input<int> elasticReservedSlotNum;
  /// The number of reserved concurrency (Slot).
  ///
  /// &gt; **NOTE:** The reserved concurrency (Slot) cannot be modified. The number of concurrency slots must be the same as that of the purchased tunnel quota.
  final pulumi.Input<int> slotNum;

  /// Creates a new [TunnelQuotaTimerQuotaTimerTunnelQuotaParameter].
  /// [elasticReservedSlotNum] The number of elastic reserved concurrency (Slot).
  /// [slotNum] The number of reserved concurrency (Slot).
  const TunnelQuotaTimerQuotaTimerTunnelQuotaParameter({
    required this.elasticReservedSlotNum,
    required this.slotNum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticReservedSlotNum': elasticReservedSlotNum,
      'slotNum': slotNum,
    };
  }

  factory TunnelQuotaTimerQuotaTimerTunnelQuotaParameter.fromMap(Map<String, dynamic> map) {
    return TunnelQuotaTimerQuotaTimerTunnelQuotaParameter(
      elasticReservedSlotNum: pulumi.Input.fromValue(map['elasticReservedSlotNum'] as int),
      slotNum: pulumi.Input.fromValue(map['slotNum'] as int),
    );
  }
}

