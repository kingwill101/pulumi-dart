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

  /// Creates a new [CloneStepResponse].
  /// [adaptingOs] Adapting OS step.
  /// [endTime] The time the step has ended.
  /// [instantiatingMigratedVm] Instantiating migrated VM step.
  /// [preparingVmDisks] Preparing VM disks step.
  /// [startTime] The time the step has started.
  CloneStepResponse({
    required this.adaptingOs,
    required this.endTime,
    required this.instantiatingMigratedVm,
    required this.preparingVmDisks,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adaptingOs': adaptingOs,
      'endTime': endTime,
      'instantiatingMigratedVm': instantiatingMigratedVm,
      'preparingVmDisks': preparingVmDisks,
      'startTime': startTime,
    };
  }

  factory CloneStepResponse.fromMap(Map<String, dynamic> map) {
    return CloneStepResponse(
      adaptingOs: (map['adaptingOs'] as Map).cast<String, dynamic>(),
      endTime: map['endTime'] as String,
      instantiatingMigratedVm: (map['instantiatingMigratedVm'] as Map)
          .cast<String, dynamic>(),
      preparingVmDisks: (map['preparingVmDisks'] as Map)
          .cast<String, dynamic>(),
      startTime: map['startTime'] as String,
    );
  }
}
