// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TunnelQuotaTimerQuotaTimerTunnelQuotaParameter {
  /// The number of elastic reserved concurrency (Slot).
  final pulumi.Input<int> elasticReservedSlotNum;
  /// The number of reserved concurrency (Slot).
  ///
  /// > **NOTE:** The reserved concurrency (Slot) cannot be modified. The number of concurrency slots must be the same as that of the purchased tunnel quota.
  final pulumi.Input<int> slotNum;

  /// Creates a new [TunnelQuotaTimerQuotaTimerTunnelQuotaParameter].
  /// [elasticReservedSlotNum] The number of elastic reserved concurrency (Slot).
  /// [slotNum] The number of reserved concurrency (Slot).
  TunnelQuotaTimerQuotaTimerTunnelQuotaParameter({
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
      elasticReservedSlotNum: (map['elasticReservedSlotNum'] as int).input(),
      slotNum: (map['slotNum'] as int).input(),
    );
  }
}

