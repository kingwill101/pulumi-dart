// ignore_for_file: unused_element, unnecessary_cast

import 'stream_source_config_spanner_source_config_exclude_objects.dart';
import 'stream_source_config_spanner_source_config_include_objects.dart';

class StreamSourceConfigSpannerSourceConfig {
  /// Whether to use DataBoost for backfill queries.
  final bool? backfillDataBoostEnabled;
  /// The Spanner change stream name to use.
  final String? changeStreamName;
  /// Spanner objects to retrieve from the source.
  /// Structure is documented below.
  final StreamSourceConfigSpannerSourceConfigExcludeObjects? excludeObjects;
  /// The FGAC role to use for Spanner queries.
  final String? fgacRole;
  /// Spanner objects to retrieve from the source.
  /// Structure is documented below.
  final StreamSourceConfigSpannerSourceConfigIncludeObjects? includeObjects;
  /// Max concurrent backfill tasks.
  final int? maxConcurrentBackfillTasks;
  /// Max concurrent CDC tasks.
  final int? maxConcurrentCdcTasks;
  /// The RPC priority to use for Spanner queries.
  /// Possible values are: `LOW`, `MEDIUM`, `HIGH`.
  final String? spannerRpcPriority;

  /// Creates a new [StreamSourceConfigSpannerSourceConfig].
  /// [backfillDataBoostEnabled] Whether to use DataBoost for backfill queries.
  /// [changeStreamName] The Spanner change stream name to use.
  /// [excludeObjects] Spanner objects to retrieve from the source.
  /// [fgacRole] The FGAC role to use for Spanner queries.
  /// [includeObjects] Spanner objects to retrieve from the source.
  /// [maxConcurrentBackfillTasks] Max concurrent backfill tasks.
  /// [maxConcurrentCdcTasks] Max concurrent CDC tasks.
  /// [spannerRpcPriority] The RPC priority to use for Spanner queries.
  StreamSourceConfigSpannerSourceConfig({
    this.backfillDataBoostEnabled,
    this.changeStreamName,
    this.excludeObjects,
    this.fgacRole,
    this.includeObjects,
    this.maxConcurrentBackfillTasks,
    this.maxConcurrentCdcTasks,
    this.spannerRpcPriority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backfillDataBoostEnabled': ?backfillDataBoostEnabled,
      'changeStreamName': ?changeStreamName,
      'excludeObjects': ?excludeObjects == null ? null : excludeObjects!.toMap(),
      'fgacRole': ?fgacRole,
      'includeObjects': ?includeObjects == null ? null : includeObjects!.toMap(),
      'maxConcurrentBackfillTasks': ?maxConcurrentBackfillTasks,
      'maxConcurrentCdcTasks': ?maxConcurrentCdcTasks,
      'spannerRpcPriority': ?spannerRpcPriority,
    };
  }

  factory StreamSourceConfigSpannerSourceConfig.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigSpannerSourceConfig(
      backfillDataBoostEnabled: map['backfillDataBoostEnabled'] == null ? null : map['backfillDataBoostEnabled'] as bool,
      changeStreamName: map['changeStreamName'] == null ? null : map['changeStreamName'] as String,
      excludeObjects: map['excludeObjects'] == null ? null : StreamSourceConfigSpannerSourceConfigExcludeObjects.fromMap((map['excludeObjects'] as Map).cast<String, dynamic>()),
      fgacRole: map['fgacRole'] == null ? null : map['fgacRole'] as String,
      includeObjects: map['includeObjects'] == null ? null : StreamSourceConfigSpannerSourceConfigIncludeObjects.fromMap((map['includeObjects'] as Map).cast<String, dynamic>()),
      maxConcurrentBackfillTasks: map['maxConcurrentBackfillTasks'] == null ? null : map['maxConcurrentBackfillTasks'] as int,
      maxConcurrentCdcTasks: map['maxConcurrentCdcTasks'] == null ? null : map['maxConcurrentCdcTasks'] as int,
      spannerRpcPriority: map['spannerRpcPriority'] == null ? null : map['spannerRpcPriority'] as String,
    );
  }
}

