// ignore_for_file: unused_element, unnecessary_cast

import 'get_app_spec_service_log_destination_datadog.dart';
import 'get_app_spec_service_log_destination_logtail.dart';
import 'get_app_spec_service_log_destination_open_search.dart';
import 'get_app_spec_service_log_destination_papertrail.dart';

class GetAppSpecServiceLogDestination {
  /// Datadog configuration.
  final GetAppSpecServiceLogDestinationDatadog? datadog;
  /// Logtail configuration.
  final GetAppSpecServiceLogDestinationLogtail? logtail;
  /// The name of the component.
  final String name;
  /// OpenSearch configuration.
  final GetAppSpecServiceLogDestinationOpenSearch? openSearch;
  /// Papertrail configuration.
  final GetAppSpecServiceLogDestinationPapertrail? papertrail;

  /// Creates a new [GetAppSpecServiceLogDestination].
  /// [datadog] Datadog configuration.
  /// [logtail] Logtail configuration.
  /// [name] The name of the component.
  /// [openSearch] OpenSearch configuration.
  /// [papertrail] Papertrail configuration.
  GetAppSpecServiceLogDestination({
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

  factory GetAppSpecServiceLogDestination.fromMap(Map<String, dynamic> map) {
    return GetAppSpecServiceLogDestination(
      datadog: map['datadog'] == null ? null : GetAppSpecServiceLogDestinationDatadog.fromMap((map['datadog'] as Map).cast<String, dynamic>()),
      logtail: map['logtail'] == null ? null : GetAppSpecServiceLogDestinationLogtail.fromMap((map['logtail'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      openSearch: map['openSearch'] == null ? null : GetAppSpecServiceLogDestinationOpenSearch.fromMap((map['openSearch'] as Map).cast<String, dynamic>()),
      papertrail: map['papertrail'] == null ? null : GetAppSpecServiceLogDestinationPapertrail.fromMap((map['papertrail'] as Map).cast<String, dynamic>()),
    );
  }
}

