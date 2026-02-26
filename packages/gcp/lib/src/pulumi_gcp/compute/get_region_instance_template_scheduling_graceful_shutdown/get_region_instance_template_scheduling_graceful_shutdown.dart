// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_region_instance_template_scheduling_graceful_shutdown_max_duration/get_region_instance_template_scheduling_graceful_shutdown_max_duration.dart';

class GetRegionInstanceTemplateSchedulingGracefulShutdown {
  /// Opts-in for graceful shutdown.
  final bool enabled;

  /// The time allotted for the instance to gracefully shut down.
  /// If the graceful shutdown isn't complete after this time, then the instance
  /// transitions to the STOPPING state.
  final List<GetRegionInstanceTemplateSchedulingGracefulShutdownMaxDuration>
      maxDurations;

  GetRegionInstanceTemplateSchedulingGracefulShutdown({
    required this.enabled,
    required this.maxDurations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['maxDurations'] = Input.encodeList<
        GetRegionInstanceTemplateSchedulingGracefulShutdownMaxDuration,
        Map<String, dynamic>>(maxDurations, (value) => value.toMap());
    return map;
  }

  factory GetRegionInstanceTemplateSchedulingGracefulShutdown.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceTemplateSchedulingGracefulShutdown(
      enabled: map['enabled'] as bool,
      maxDurations: Input.decodeList<
              GetRegionInstanceTemplateSchedulingGracefulShutdownMaxDuration>(
          map['maxDurations'],
          (value) =>
              GetRegionInstanceTemplateSchedulingGracefulShutdownMaxDuration
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
