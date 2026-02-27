// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_dataset_source_analyticshub_v1beta1.dart';
import 'data_provider_analyticshub_v1beta1.dart';
import 'listing_categories_item_analyticshub_v1beta1.dart';
import 'publisher_analyticshub_v1beta1.dart';
import 'restricted_export_config_analyticshub_v1beta1.dart';

/// The set of arguments for Listing.
class ListingAnalyticshubV1beta1Args {
  /// Shared dataset i.e. BigQuery dataset source.
  final pulumi.Input<BigQueryDatasetSourceAnalyticshubV1beta1> bigqueryDataset;

  /// Optional. Categories of the listing. Up to two categories are allowed.
  final pulumi.Input<List<ListingCategoriesItemAnalyticshubV1beta1>>?
      categories;
  final pulumi.Input<String> dataExchangeId;

  /// Optional. Details of the data provider who owns the source data.
  final pulumi.Input<DataProviderAnalyticshubV1beta1>? dataProvider;

  /// Optional. Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  final pulumi.Input<String>? description;

  /// Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  final pulumi.Input<String> displayName;

  /// Optional. Documentation describing the listing.
  final pulumi.Input<String>? documentation;

  /// Optional. Base64 encoded image representing the listing. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the contents of the field are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  final pulumi.Input<String>? icon;

  /// Required. The ID of the listing to create. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. Max length: 100 bytes.
  final pulumi.Input<String> listingId;
  final pulumi.Input<String>? location;

  /// Optional. Email or URL of the primary point of contact of the listing. Max Length: 1000 bytes.
  final pulumi.Input<String>? primaryContact;
  final pulumi.Input<String>? project;

  /// Optional. Details of the publisher who owns the listing and who can share the source data.
  final pulumi.Input<PublisherAnalyticshubV1beta1>? publisher;

  /// Optional. Email or URL of the request access of the listing. Subscribers can use this reference to request access. Max Length: 1000 bytes.
  final pulumi.Input<String>? requestAccess;

  /// Optional. If set, restricted export configuration will be propagated and enforced on the linked dataset.
  final pulumi.Input<RestrictedExportConfigAnalyticshubV1beta1>?
      restrictedExportConfig;

  ListingAnalyticshubV1beta1Args({
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
    map['bigqueryDataset'] = pulumi.Input.mapInputValue<
        BigQueryDatasetSourceAnalyticshubV1beta1,
        Map<String, dynamic>>(bigqueryDataset, (value) => value.toMap());
    final categoriesValue = categories;
    if (categoriesValue != null) {
      map['categories'] = pulumi.Input.mapOptionalInputValue<
              List<ListingCategoriesItemAnalyticshubV1beta1>, List<String>>(
          categoriesValue,
          (value) => pulumi.Input.encodeList<
              ListingCategoriesItemAnalyticshubV1beta1,
              String>(value, (value) => value.value));
    }
    map['dataExchangeId'] = dataExchangeId;
    final dataProviderValue = dataProvider;
    if (dataProviderValue != null) {
      map['dataProvider'] = pulumi.Input.mapOptionalInputValue<
          DataProviderAnalyticshubV1beta1,
          Map<String, dynamic>>(dataProviderValue, (value) => value.toMap());
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
      map['publisher'] = pulumi.Input.mapOptionalInputValue<
          PublisherAnalyticshubV1beta1,
          Map<String, dynamic>>(publisherValue, (value) => value.toMap());
    }
    final requestAccessValue = requestAccess;
    if (requestAccessValue != null) {
      map['requestAccess'] = requestAccessValue;
    }
    final restrictedExportConfigValue = restrictedExportConfig;
    if (restrictedExportConfigValue != null) {
      map['restrictedExportConfig'] = pulumi.Input.mapOptionalInputValue<
              RestrictedExportConfigAnalyticshubV1beta1, Map<String, dynamic>>(
          restrictedExportConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ListingAnalyticshubV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ListingAnalyticshubV1beta1Args(
      bigqueryDataset:
          pulumi.Input.asInput<BigQueryDatasetSourceAnalyticshubV1beta1>(
              map['bigqueryDataset']),
      categories: pulumi.Input.asOptionalInput<
          List<ListingCategoriesItemAnalyticshubV1beta1>>(map['categories']),
      dataExchangeId: pulumi.Input.asInput<String>(map['dataExchangeId']),
      dataProvider:
          pulumi.Input.asOptionalInput<DataProviderAnalyticshubV1beta1>(
              map['dataProvider']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      documentation: pulumi.Input.asOptionalInput<String>(map['documentation']),
      icon: pulumi.Input.asOptionalInput<String>(map['icon']),
      listingId: pulumi.Input.asInput<String>(map['listingId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      primaryContact:
          pulumi.Input.asOptionalInput<String>(map['primaryContact']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      publisher: pulumi.Input.asOptionalInput<PublisherAnalyticshubV1beta1>(
          map['publisher']),
      requestAccess: pulumi.Input.asOptionalInput<String>(map['requestAccess']),
      restrictedExportConfig: pulumi.Input.asOptionalInput<
              RestrictedExportConfigAnalyticshubV1beta1>(
          map['restrictedExportConfig']),
    );
  }
}
