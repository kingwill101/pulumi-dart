// ignore_for_file: unused_element, unnecessary_cast

import 'data_import_sources_event_hub.dart';

/// Specifications of pull based data sources
class DataSourcesSpecDataImports {
  /// Definition of Event Hub configuration.
  final DataImportSourcesEventHub? eventHub;

  /// Creates a new [DataSourcesSpecDataImports].
  /// [eventHub] Definition of Event Hub configuration.
  DataSourcesSpecDataImports({
    this.eventHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHub': ?eventHub == null ? null : eventHub!.toMap(),
    };
  }

  factory DataSourcesSpecDataImports.fromMap(Map<String, dynamic> map) {
    return DataSourcesSpecDataImports(
      eventHub: map['eventHub'] == null ? null : DataImportSourcesEventHub.fromMap((map['eventHub'] as Map).cast<String, dynamic>()),
    );
  }
}

