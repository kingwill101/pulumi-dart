// ignore_for_file: unused_element, unnecessary_cast


class InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignal {
  /// The number of seconds to wait for a readiness signal during initialization before timing out.
  final int? timeoutSec;

  /// Creates a new [InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignal].
  /// [timeoutSec] The number of seconds to wait for a readiness signal during initialization before timing out.
  InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignal({
    this.timeoutSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeoutSec': ?timeoutSec,
    };
  }

  factory InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignal.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignal(
      timeoutSec: map['timeoutSec'] == null ? null : map['timeoutSec'] as int,
    );
  }
}

