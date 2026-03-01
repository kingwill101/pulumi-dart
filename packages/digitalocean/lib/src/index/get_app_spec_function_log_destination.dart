// ignore_for_file: unused_element, unnecessary_cast

import 'get_app_spec_function_log_destination_datadog.dart';
import 'get_app_spec_function_log_destination_logtail.dart';
import 'get_app_spec_function_log_destination_open_search.dart';
import 'get_app_spec_function_log_destination_papertrail.dart';

class GetAppSpecFunctionLogDestination {
  /// Datadog configuration.
  final GetAppSpecFunctionLogDestinationDatadog? datadog;
  /// Logtail configuration.
  final GetAppSpecFunctionLogDestinationLogtail? logtail;
  /// The name of the component.
  final String name;
  /// OpenSearch configuration.
  final GetAppSpecFunctionLogDestinationOpenSearch? openSearch;
  /// Papertrail configuration.
  final GetAppSpecFunctionLogDestinationPapertrail? papertrail;

  /// Creates a new [GetAppSpecFunctionLogDestination].
  /// [datadog] Datadog configuration.
  /// [logtail] Logtail configuration.
  /// [name] The name of the component.
  /// [openSearch] OpenSearch configuration.
  /// [papertrail] Papertrail configuration.
  GetAppSpecFunctionLogDestination({
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

  factory GetAppSpecFunctionLogDestination.fromMap(Map<String, dynamic> map) {
    return GetAppSpecFunctionLogDestination(
      datadog: map['datadog'] == null ? null : GetAppSpecFunctionLogDestinationDatadog.fromMap((map['datadog'] as Map).cast<String, dynamic>()),
      logtail: map['logtail'] == null ? null : GetAppSpecFunctionLogDestinationLogtail.fromMap((map['logtail'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      openSearch: map['openSearch'] == null ? null : GetAppSpecFunctionLogDestinationOpenSearch.fromMap((map['openSearch'] as Map).cast<String, dynamic>()),
      papertrail: map['papertrail'] == null ? null : GetAppSpecFunctionLogDestinationPapertrail.fromMap((map['papertrail'] as Map).cast<String, dynamic>()),
    );
  }
}

