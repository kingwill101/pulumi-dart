// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_import_sources_event_hub.dart';

/// Specifications of pull based data sources
class DataSourcesSpecDataImports {
  /// Definition of Event Hub configuration.
  final pulumi.Input<DataImportSourcesEventHub?>? eventHub;

  /// Creates a new [DataSourcesSpecDataImports].
  /// [eventHub] Definition of Event Hub configuration.
  const DataSourcesSpecDataImports({
    this.eventHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHub': ?pulumi.Input.mapOptionalInputValue<DataImportSourcesEventHub, Map<String, dynamic>>(eventHub, (value) => value.toMap()),
    };
  }

  factory DataSourcesSpecDataImports.fromMap(Map<String, dynamic> map) {
    return DataSourcesSpecDataImports(
      eventHub: (() { final guardedValue = map['eventHub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataImportSourcesEventHub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
