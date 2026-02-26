// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'big_query_dataset_source.dart';
import 'data_provider.dart';
import 'listing_categories_item.dart';
import 'publisher.dart';
import 'restricted_export_config.dart';

/// The set of arguments for Listing.
class ListingArgs {
  /// Shared dataset i.e. BigQuery dataset source.
  final Input<BigQueryDatasetSource> bigqueryDataset;

  /// Optional. Categories of the listing. Up to two categories are allowed.
  final Input<List<ListingCategoriesItem>>? categories;
  final Input<String> dataExchangeId;

  /// Optional. Details of the data provider who owns the source data.
  final Input<DataProvider>? dataProvider;

  /// Optional. Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  final Input<String>? description;

  /// Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  final Input<String> displayName;

  /// Optional. Documentation describing the listing.
  final Input<String>? documentation;

  /// Optional. Base64 encoded image representing the listing. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the contents of the field are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  final Input<String>? icon;

  /// Required. The ID of the listing to create. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. Max length: 100 bytes.
  final Input<String> listingId;
  final Input<String>? location;

  /// Optional. Email or URL of the primary point of contact of the listing. Max Length: 1000 bytes.
  final Input<String>? primaryContact;
  final Input<String>? project;

  /// Optional. Details of the publisher who owns the listing and who can share the source data.
  final Input<Publisher>? publisher;

  /// Optional. Email or URL of the request access of the listing. Subscribers can use this reference to request access. Max Length: 1000 bytes.
  final Input<String>? requestAccess;

  /// Optional. If set, restricted export configuration will be propagated and enforced on the linked dataset.
  final Input<RestrictedExportConfig>? restrictedExportConfig;

  ListingArgs({
    required this.bigqueryDataset,
    this.categories,
    required this.dataExchangeId,
    this.dataProvider,
    this.description,
    required this.displayName,
    this.documentation,
    this.icon,
    required this.listingId,
    this.location,
    this.primaryContact,
    this.project,
    this.publisher,
    this.requestAccess,
    this.restrictedExportConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigqueryDataset'] =
        Input.mapInputValue<BigQueryDatasetSource, Map<String, dynamic>>(
            bigqueryDataset, (value) => value.toMap());
    final categoriesValue = categories;
    if (categoriesValue != null) {
      map['categories'] = Input.mapOptionalInputValue<
              List<ListingCategoriesItem>, List<String>>(
          categoriesValue,
          (value) => Input.encodeList<ListingCategoriesItem, String>(
              value, (value) => value.value));
    }
    map['dataExchangeId'] = dataExchangeId;
    final dataProviderValue = dataProvider;
    if (dataProviderValue != null) {
      map['dataProvider'] =
          Input.mapOptionalInputValue<DataProvider, Map<String, dynamic>>(
              dataProviderValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final documentationValue = documentation;
    if (documentationValue != null) {
      map['documentation'] = documentationValue;
    }
    final iconValue = icon;
    if (iconValue != null) {
      map['icon'] = iconValue;
    }
    map['listingId'] = listingId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final primaryContactValue = primaryContact;
    if (primaryContactValue != null) {
      map['primaryContact'] = primaryContactValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final publisherValue = publisher;
    if (publisherValue != null) {
      map['publisher'] =
          Input.mapOptionalInputValue<Publisher, Map<String, dynamic>>(
              publisherValue, (value) => value.toMap());
    }
    final requestAccessValue = requestAccess;
    if (requestAccessValue != null) {
      map['requestAccess'] = requestAccessValue;
    }
    final restrictedExportConfigValue = restrictedExportConfig;
    if (restrictedExportConfigValue != null) {
      map['restrictedExportConfig'] = Input.mapOptionalInputValue<
              RestrictedExportConfig, Map<String, dynamic>>(
          restrictedExportConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ListingArgs.fromMap(Map<String, dynamic> map) {
    return ListingArgs(
      bigqueryDataset:
          Input.asInput<BigQueryDatasetSource>(map['bigqueryDataset']),
      categories:
          Input.asOptionalInput<List<ListingCategoriesItem>>(map['categories']),
      dataExchangeId: Input.asInput<String>(map['dataExchangeId']),
      dataProvider: Input.asOptionalInput<DataProvider>(map['dataProvider']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      documentation: Input.asOptionalInput<String>(map['documentation']),
      icon: Input.asOptionalInput<String>(map['icon']),
      listingId: Input.asInput<String>(map['listingId']),
      location: Input.asOptionalInput<String>(map['location']),
      primaryContact: Input.asOptionalInput<String>(map['primaryContact']),
      project: Input.asOptionalInput<String>(map['project']),
      publisher: Input.asOptionalInput<Publisher>(map['publisher']),
      requestAccess: Input.asOptionalInput<String>(map['requestAccess']),
      restrictedExportConfig: Input.asOptionalInput<RestrictedExportConfig>(
          map['restrictedExportConfig']),
    );
  }
}
