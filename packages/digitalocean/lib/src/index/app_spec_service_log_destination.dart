// ignore_for_file: unused_element, unnecessary_cast

import 'app_spec_service_log_destination_datadog.dart';
import 'app_spec_service_log_destination_logtail.dart';
import 'app_spec_service_log_destination_open_search.dart';
import 'app_spec_service_log_destination_papertrail.dart';

class AppSpecServiceLogDestination {
  /// Datadog configuration.
  final AppSpecServiceLogDestinationDatadog? datadog;
  /// Logtail configuration.
  final AppSpecServiceLogDestinationLogtail? logtail;
  /// Name of the log destination. Minimum length: 2. Maximum length: 42.
  final String name;
  /// OpenSearch configuration.
  final AppSpecServiceLogDestinationOpenSearch? openSearch;
  /// Papertrail configuration.
  final AppSpecServiceLogDestinationPapertrail? papertrail;

  /// Creates a new [AppSpecServiceLogDestination].
  /// [datadog] Datadog configuration.
  /// [logtail] Logtail configuration.
  /// [name] Name of the log destination. Minimum length: 2. Maximum length: 42.
  /// [openSearch] OpenSearch configuration.
  /// [papertrail] Papertrail configuration.
  AppSpecServiceLogDestination({
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

  factory AppSpecServiceLogDestination.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceLogDestination(
      datadog: map['datadog'] == null ? null : AppSpecServiceLogDestinationDatadog.fromMap((map['datadog'] as Map).cast<String, dynamic>()),
      logtail: map['logtail'] == null ? null : AppSpecServiceLogDestinationLogtail.fromMap((map['logtail'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      openSearch: map['openSearch'] == null ? null : AppSpecServiceLogDestinationOpenSearch.fromMap((map['openSearch'] as Map).cast<String, dynamic>()),
      papertrail: map['papertrail'] == null ? null : AppSpecServiceLogDestinationPapertrail.fromMap((map['papertrail'] as Map).cast<String, dynamic>()),
    );
  }
}

