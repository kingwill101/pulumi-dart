// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../event_sources_config_event_source_amazon_code_guru_profiler/event_sources_config_event_source_amazon_code_guru_profiler.dart';

class EventSourcesConfigEventSource {
  /// Stores whether DevOps Guru is configured to consume recommendations which are generated from AWS CodeGuru Profiler. See <span pulumi-lang-nodejs="`amazonCodeGuruProfiler`" pulumi-lang-dotnet="`AmazonCodeGuruProfiler`" pulumi-lang-go="`amazonCodeGuruProfiler`" pulumi-lang-python="`amazon_code_guru_profiler`" pulumi-lang-yaml="`amazonCodeGuruProfiler`" pulumi-lang-java="`amazonCodeGuruProfiler`">`amazon_code_guru_profiler`</span> below.
  final List<EventSourcesConfigEventSourceAmazonCodeGuruProfiler>
      amazonCodeGuruProfilers;

  EventSourcesConfigEventSource({
    required this.amazonCodeGuruProfilers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['amazonCodeGuruProfilers'] = Input.encodeList<
            EventSourcesConfigEventSourceAmazonCodeGuruProfiler,
            Map<String, dynamic>>(
        amazonCodeGuruProfilers, (value) => value.toMap());
    return map;
  }

  factory EventSourcesConfigEventSource.fromMap(Map<String, dynamic> map) {
    return EventSourcesConfigEventSource(
      amazonCodeGuruProfilers:
          Input.decodeList<EventSourcesConfigEventSourceAmazonCodeGuruProfiler>(
              map['amazonCodeGuruProfilers'],
              (value) =>
                  EventSourcesConfigEventSourceAmazonCodeGuruProfiler.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
