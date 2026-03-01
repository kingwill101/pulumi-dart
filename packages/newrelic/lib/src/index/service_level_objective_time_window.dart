// ignore_for_file: unused_element, unnecessary_cast

import 'service_level_objective_time_window_rolling.dart';

class ServiceLevelObjectiveTimeWindow {
  /// Rolling window.
  final ServiceLevelObjectiveTimeWindowRolling rolling;

  /// Creates a new [ServiceLevelObjectiveTimeWindow].
  /// [rolling] Rolling window.
  ServiceLevelObjectiveTimeWindow({
    required this.rolling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rolling': rolling.toMap(),
    };
  }

  factory ServiceLevelObjectiveTimeWindow.fromMap(Map<String, dynamic> map) {
    return ServiceLevelObjectiveTimeWindow(
      rolling: ServiceLevelObjectiveTimeWindowRolling.fromMap((map['rolling'] as Map).cast<String, dynamic>()),
    );
  }
}

