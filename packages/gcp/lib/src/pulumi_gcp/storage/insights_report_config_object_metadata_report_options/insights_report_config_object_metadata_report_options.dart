// ignore_for_file: unused_element, unnecessary_cast

import '../insights_report_config_object_metadata_report_options_storage_destination_options/insights_report_config_object_metadata_report_options_storage_destination_options.dart';
import '../insights_report_config_object_metadata_report_options_storage_filters/insights_report_config_object_metadata_report_options_storage_filters.dart';

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

  InsightsReportConfigObjectMetadataReportOptions({
    required this.metadataFields,
    required this.storageDestinationOptions,
    this.storageFilters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metadataFields'] = metadataFields;
    map['storageDestinationOptions'] = storageDestinationOptions.toMap();
    final storageFiltersValue = storageFilters;
    if (storageFiltersValue != null) {
      map['storageFilters'] = storageFiltersValue.toMap();
    }
    return map;
  }

  factory InsightsReportConfigObjectMetadataReportOptions.fromMap(
      Map<String, dynamic> map) {
    return InsightsReportConfigObjectMetadataReportOptions(
      metadataFields: (map['metadataFields'] as List).cast<String>(),
      storageDestinationOptions:
          InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions
              .fromMap((map['storageDestinationOptions'] as Map)
                  .cast<String, dynamic>()),
      storageFilters: map['storageFilters'] == null
          ? null
          : InsightsReportConfigObjectMetadataReportOptionsStorageFilters
              .fromMap((map['storageFilters'] as Map).cast<String, dynamic>()),
    );
  }
}
