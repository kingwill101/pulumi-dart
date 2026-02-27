// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instance_template_scheduling_graceful_shutdown_max_duration/get_instance_template_scheduling_graceful_shutdown_max_duration.dart';

class GetInstanceTemplateSchedulingGracefulShutdown {
  /// Opts-in for graceful shutdown.
  final bool enabled;

  /// The time allotted for the instance to gracefully shut down.
  /// If the graceful shutdown isn't complete after this time, then the instance
  /// transitions to the STOPPING state.
  final List<GetInstanceTemplateSchedulingGracefulShutdownMaxDuration>
      maxDurations;

  GetInstanceTemplateSchedulingGracefulShutdown({
    required this.enabled,
    required this.maxDurations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['maxDurations'] = pulumi.Input.encodeList<
        GetInstanceTemplateSchedulingGracefulShutdownMaxDuration,
        Map<String, dynamic>>(maxDurations, (value) => value.toMap());
    return map;
  }

  factory GetInstanceTemplateSchedulingGracefulShutdown.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceTemplateSchedulingGracefulShutdown(
      enabled: map['enabled'] as bool,
      maxDurations: pulumi.Input.decodeList<
              GetInstanceTemplateSchedulingGracefulShutdownMaxDuration>(
          map['maxDurations'],
          (value) =>
              GetInstanceTemplateSchedulingGracefulShutdownMaxDuration.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
