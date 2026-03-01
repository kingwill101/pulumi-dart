// ignore_for_file: unused_element, unnecessary_cast

import 'insights_report_config_object_metadata_report_options_storage_destination_options.dart';
import 'insights_report_config_object_metadata_report_options_storage_filters.dart';

class InsightsReportConfigObjectMetadataReportOptions {
  /// The metadata fields included in an inventory report.
  final List<String> metadataFields;

  /// Options for where the inventory reports are stored.
  /// Structure is documented below.
  final InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions
  storageDestinationOptions;

  /// A nested object resource.
  /// Structure is documented below.
  final InsightsReportConfigObjectMetadataReportOptionsStorageFilters?
  storageFilters;

  /// Creates a new [InsightsReportConfigObjectMetadataReportOptions].
  /// [metadataFields] The metadata fields included in an inventory report.
  /// [storageDestinationOptions] Options for where the inventory reports are stored.
  /// [storageFilters] A nested object resource.
  InsightsReportConfigObjectMetadataReportOptions({
    required this.metadataFields,
    required this.storageDestinationOptions,
    this.storageFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataFields': metadataFields,
      'storageDestinationOptions': storageDestinationOptions.toMap(),
      'storageFilters': ?storageFilters == null
          ? null
          : storageFilters!.toMap(),
    };
  }

  factory InsightsReportConfigObjectMetadataReportOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightsReportConfigObjectMetadataReportOptions(
      metadataFields: (map['metadataFields'] as List).cast<String>(),
      storageDestinationOptions:
          InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions.fromMap(
            (map['storageDestinationOptions'] as Map).cast<String, dynamic>(),
          ),
      storageFilters: map['storageFilters'] == null
          ? null
          : InsightsReportConfigObjectMetadataReportOptionsStorageFilters.fromMap(
              (map['storageFilters'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
