// ignore_for_file: unused_element, unnecessary_cast

import 'app_spec_worker_log_destination_datadog.dart';
import 'app_spec_worker_log_destination_logtail.dart';
import 'app_spec_worker_log_destination_open_search.dart';
import 'app_spec_worker_log_destination_papertrail.dart';

class AppSpecWorkerLogDestination {
  /// Datadog configuration.
  final AppSpecWorkerLogDestinationDatadog? datadog;
  /// Logtail configuration.
  final AppSpecWorkerLogDestinationLogtail? logtail;
  /// Name of the log destination. Minimum length: 2. Maximum length: 42.
  final String name;
  /// OpenSearch configuration.
  final AppSpecWorkerLogDestinationOpenSearch? openSearch;
  /// Papertrail configuration.
  final AppSpecWorkerLogDestinationPapertrail? papertrail;

  /// Creates a new [AppSpecWorkerLogDestination].
  /// [datadog] Datadog configuration.
  /// [logtail] Logtail configuration.
  /// [name] Name of the log destination. Minimum length: 2. Maximum length: 42.
  /// [openSearch] OpenSearch configuration.
  /// [papertrail] Papertrail configuration.
  AppSpecWorkerLogDestination({
    this.datadog,
    this.logtail,
    required this.name,
    this.openSearch,
    this.papertrail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datadog': ?datadog == null ? null : datadog!.toMap(),
      'logtail': ?logtail == null ? null : logtail!.toMap(),
      'name': name,
      'openSearch': ?openSearch == null ? null : openSearch!.toMap(),
      'papertrail': ?papertrail == null ? null : papertrail!.toMap(),
    };
  }

  factory AppSpecWorkerLogDestination.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerLogDestination(
      datadog: map['datadog'] == null ? null : AppSpecWorkerLogDestinationDatadog.fromMap((map['datadog'] as Map).cast<String, dynamic>()),
      logtail: map['logtail'] == null ? null : AppSpecWorkerLogDestinationLogtail.fromMap((map['logtail'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      openSearch: map['openSearch'] == null ? null : AppSpecWorkerLogDestinationOpenSearch.fromMap((map['openSearch'] as Map).cast<String, dynamic>()),
      papertrail: map['papertrail'] == null ? null : AppSpecWorkerLogDestinationPapertrail.fromMap((map['papertrail'] as Map).cast<String, dynamic>()),
    );
  }
}

