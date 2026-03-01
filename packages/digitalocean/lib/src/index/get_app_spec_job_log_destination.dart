// ignore_for_file: unused_element, unnecessary_cast

import 'get_app_spec_job_log_destination_datadog.dart';
import 'get_app_spec_job_log_destination_logtail.dart';
import 'get_app_spec_job_log_destination_open_search.dart';
import 'get_app_spec_job_log_destination_papertrail.dart';

class GetAppSpecJobLogDestination {
  /// Datadog configuration.
  final GetAppSpecJobLogDestinationDatadog? datadog;
  /// Logtail configuration.
  final GetAppSpecJobLogDestinationLogtail? logtail;
  /// The name of the component.
  final String name;
  /// OpenSearch configuration.
  final GetAppSpecJobLogDestinationOpenSearch? openSearch;
  /// Papertrail configuration.
  final GetAppSpecJobLogDestinationPapertrail? papertrail;

  /// Creates a new [GetAppSpecJobLogDestination].
  /// [datadog] Datadog configuration.
  /// [logtail] Logtail configuration.
  /// [name] The name of the component.
  /// [openSearch] OpenSearch configuration.
  /// [papertrail] Papertrail configuration.
  GetAppSpecJobLogDestination({
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

  factory GetAppSpecJobLogDestination.fromMap(Map<String, dynamic> map) {
    return GetAppSpecJobLogDestination(
      datadog: map['datadog'] == null ? null : GetAppSpecJobLogDestinationDatadog.fromMap((map['datadog'] as Map).cast<String, dynamic>()),
      logtail: map['logtail'] == null ? null : GetAppSpecJobLogDestinationLogtail.fromMap((map['logtail'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      openSearch: map['openSearch'] == null ? null : GetAppSpecJobLogDestinationOpenSearch.fromMap((map['openSearch'] as Map).cast<String, dynamic>()),
      papertrail: map['papertrail'] == null ? null : GetAppSpecJobLogDestinationPapertrail.fromMap((map['papertrail'] as Map).cast<String, dynamic>()),
    );
  }
}

