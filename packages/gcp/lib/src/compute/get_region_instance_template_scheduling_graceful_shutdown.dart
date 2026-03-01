// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_template_scheduling_graceful_shutdown_max_duration.dart';

class GetRegionInstanceTemplateSchedulingGracefulShutdown {
  /// Opts-in for graceful shutdown.
  final bool enabled;
  /// The time allotted for the instance to gracefully shut down.
  /// If the graceful shutdown isn't complete after this time, then the instance
  /// transitions to the STOPPING state.
  final List<GetRegionInstanceTemplateSchedulingGracefulShutdownMaxDuration> maxDurations;

  /// Creates a new [GetRegionInstanceTemplateSchedulingGracefulShutdown].
  /// [enabled] Opts-in for graceful shutdown.
  /// [maxDurations] The time allotted for the instance to gracefully shut down.
  GetRegionInstanceTemplateSchedulingGracefulShutdown({
    required this.enabled,
    required this.maxDurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'maxDurations': pulumi.Input.encodeList<GetRegionInstanceTemplateSchedulingGracefulShutdownMaxDuration, Map<String, dynamic>>(maxDurations, (value) => value.toMap()),
    };
  }

  factory GetRegionInstanceTemplateSchedulingGracefulShutdown.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateSchedulingGracefulShutdown(
      enabled: map['enabled'] as bool,
      maxDurations: pulumi.Input.decodeList<GetRegionInstanceTemplateSchedulingGracefulShutdownMaxDuration>(map['maxDurations'], (value) => GetRegionInstanceTemplateSchedulingGracefulShutdownMaxDuration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

