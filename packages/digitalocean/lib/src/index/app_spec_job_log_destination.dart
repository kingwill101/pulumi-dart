// ignore_for_file: unused_element, unnecessary_cast

import 'app_spec_job_log_destination_datadog.dart';
import 'app_spec_job_log_destination_logtail.dart';
import 'app_spec_job_log_destination_open_search.dart';
import 'app_spec_job_log_destination_papertrail.dart';

class AppSpecJobLogDestination {
  /// Datadog configuration.
  final AppSpecJobLogDestinationDatadog? datadog;
  /// Logtail configuration.
  final AppSpecJobLogDestinationLogtail? logtail;
  /// Name of the log destination. Minimum length: 2. Maximum length: 42.
  final String name;
  /// OpenSearch configuration.
  final AppSpecJobLogDestinationOpenSearch? openSearch;
  /// Papertrail configuration.
  final AppSpecJobLogDestinationPapertrail? papertrail;

  /// Creates a new [AppSpecJobLogDestination].
  /// [datadog] Datadog configuration.
  /// [logtail] Logtail configuration.
  /// [name] Name of the log destination. Minimum length: 2. Maximum length: 42.
  /// [openSearch] OpenSearch configuration.
  /// [papertrail] Papertrail configuration.
  AppSpecJobLogDestination({
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

  factory AppSpecJobLogDestination.fromMap(Map<String, dynamic> map) {
    return AppSpecJobLogDestination(
      datadog: map['datadog'] == null ? null : AppSpecJobLogDestinationDatadog.fromMap((map['datadog'] as Map).cast<String, dynamic>()),
      logtail: map['logtail'] == null ? null : AppSpecJobLogDestinationLogtail.fromMap((map['logtail'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      openSearch: map['openSearch'] == null ? null : AppSpecJobLogDestinationOpenSearch.fromMap((map['openSearch'] as Map).cast<String, dynamic>()),
      papertrail: map['papertrail'] == null ? null : AppSpecJobLogDestinationPapertrail.fromMap((map['papertrail'] as Map).cast<String, dynamic>()),
    );
  }
}

