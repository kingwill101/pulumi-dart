// ignore_for_file: unused_element, unnecessary_cast

/// CloneStep holds information about the clone step progress.
class CloneStepResponse {
  /// Adapting OS step.
  final Map<String, dynamic> adaptingOs;

  /// The time the step has ended.
  final String endTime;

  /// Instantiating migrated VM step.
  final Map<String, dynamic> instantiatingMigratedVm;

  /// Preparing VM disks step.
  final Map<String, dynamic> preparingVmDisks;

  /// The time the step has started.
  final String startTime;

  CloneStepResponse({
    required this.adaptingOs,
    required this.endTime,
    required this.instantiatingMigratedVm,
    required this.preparingVmDisks,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adaptingOs'] = adaptingOs;
    map['endTime'] = endTime;
    map['instantiatingMigratedVm'] = instantiatingMigratedVm;
    map['preparingVmDisks'] = preparingVmDisks;
    map['startTime'] = startTime;
    return map;
  }

  factory CloneStepResponse.fromMap(Map<String, dynamic> map) {
    return CloneStepResponse(
      adaptingOs: (map['adaptingOs'] as Map).cast<String, dynamic>(),
      endTime: map['endTime'] as String,
      instantiatingMigratedVm:
          (map['instantiatingMigratedVm'] as Map).cast<String, dynamic>(),
      preparingVmDisks:
          (map['preparingVmDisks'] as Map).cast<String, dynamic>(),
      startTime: map['startTime'] as String,
    );
  }
}
