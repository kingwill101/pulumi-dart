// ignore_for_file: unused_element, unnecessary_cast

import 'data_import_sources_response_event_hub.dart';

/// Specifications of pull based data sources
class DataSourcesSpecResponseDataImports {
  /// Definition of Event Hub configuration.
  final DataImportSourcesResponseEventHub? eventHub;

  /// Creates a new [DataSourcesSpecResponseDataImports].
  /// [eventHub] Definition of Event Hub configuration.
  DataSourcesSpecResponseDataImports({
    this.eventHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHub': ?eventHub == null ? null : eventHub!.toMap(),
    };
  }

  factory DataSourcesSpecResponseDataImports.fromMap(Map<String, dynamic> map) {
    return DataSourcesSpecResponseDataImports(
      eventHub: map['eventHub'] == null ? null : DataImportSourcesResponseEventHub.fromMap((map['eventHub'] as Map).cast<String, dynamic>()),
    );
  }
}

