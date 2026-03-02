// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_import_sources_response_event_hub.dart';

/// Specifications of pull based data sources
class DataSourcesSpecResponseDataImports {
  /// Definition of Event Hub configuration.
  final pulumi.Input<DataImportSourcesResponseEventHub>? eventHub;

  /// Creates a new [DataSourcesSpecResponseDataImports].
  /// [eventHub] Definition of Event Hub configuration.
  DataSourcesSpecResponseDataImports({
    this.eventHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHub': ?pulumi.Input.mapOptionalInputValue<DataImportSourcesResponseEventHub, Map<String, dynamic>>(eventHub, (value) => value.toMap()),
    };
  }

  factory DataSourcesSpecResponseDataImports.fromMap(Map<String, dynamic> map) {
    return DataSourcesSpecResponseDataImports(
      eventHub: map['eventHub'] == null ? null : (DataImportSourcesResponseEventHub.fromMap((map['eventHub'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

