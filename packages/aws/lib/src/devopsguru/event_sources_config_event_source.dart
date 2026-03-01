// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_sources_config_event_source_amazon_code_guru_profiler.dart';

class EventSourcesConfigEventSource {
  /// Stores whether DevOps Guru is configured to consume recommendations which are generated from AWS CodeGuru Profiler. See `amazon_code_guru_profiler` below.
  final List<EventSourcesConfigEventSourceAmazonCodeGuruProfiler> amazonCodeGuruProfilers;

  /// Creates a new [EventSourcesConfigEventSource].
  /// [amazonCodeGuruProfilers] Stores whether DevOps Guru is configured to consume recommendations which are generated from AWS CodeGuru Profiler. See `amazon_code_guru_profiler` below.
  EventSourcesConfigEventSource({
    required this.amazonCodeGuruProfilers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonCodeGuruProfilers': pulumi.Input.encodeList<EventSourcesConfigEventSourceAmazonCodeGuruProfiler, Map<String, dynamic>>(amazonCodeGuruProfilers, (value) => value.toMap()),
    };
  }

  factory EventSourcesConfigEventSource.fromMap(Map<String, dynamic> map) {
    return EventSourcesConfigEventSource(
      amazonCodeGuruProfilers: pulumi.Input.decodeList<EventSourcesConfigEventSourceAmazonCodeGuruProfiler>(map['amazonCodeGuruProfilers'], (value) => EventSourcesConfigEventSourceAmazonCodeGuruProfiler.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

