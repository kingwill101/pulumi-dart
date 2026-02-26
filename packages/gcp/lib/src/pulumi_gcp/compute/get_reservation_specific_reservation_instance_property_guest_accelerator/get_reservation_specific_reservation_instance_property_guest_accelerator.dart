// ignore_for_file: unused_element, unnecessary_cast

class GetReservationSpecificReservationInstancePropertyGuestAccelerator {
  /// The number of the guest accelerator cards exposed to
  /// this instance.
  final int acceleratorCount;

  /// The full or partial URL of the accelerator type to
  /// attach to this instance. For example:
  /// 'projects/my-project/zones/us-central1-c/acceleratorTypes/nvidia-tesla-p100'
  ///
  /// If you are creating an instance template, specify only the accelerator name.
  final String acceleratorType;

  GetReservationSpecificReservationInstancePropertyGuestAccelerator({
    required this.acceleratorCount,
    required this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorCount'] = acceleratorCount;
    map['acceleratorType'] = acceleratorType;
    return map;
  }

  factory GetReservationSpecificReservationInstancePropertyGuestAccelerator.fromMap(
      Map<String, dynamic> map) {
    return GetReservationSpecificReservationInstancePropertyGuestAccelerator(
      acceleratorCount: map['acceleratorCount'] as int,
      acceleratorType: map['acceleratorType'] as String,
    );
  }
}
