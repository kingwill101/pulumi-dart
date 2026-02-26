// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../listing_bigquery_dataset/listing_bigquery_dataset.dart';
import '../listing_data_provider/listing_data_provider.dart';
import '../listing_publisher/listing_publisher.dart';
import '../listing_pubsub_topic/listing_pubsub_topic.dart';
import '../listing_restricted_export_config/listing_restricted_export_config.dart';

/// The set of arguments for Listing.
class ListingArgs {
  /// If true, the listing is only available to get the resource metadata. Listing is non subscribable.
  final Input<bool>? allowOnlyMetadataSharing;

  /// Shared dataset i.e. BigQuery dataset source.
  /// Structure is documented below.
  final Input<ListingBigqueryDataset>? bigqueryDataset;

  /// Categories of the listing. Up to two categories are allowed.
  final Input<List<String>>? categories;

  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final Input<String> dataExchangeId;

  /// Details of the data provider who owns the source data.
  /// Structure is documented below.
  final Input<ListingDataProvider>? dataProvider;

  /// If the listing is commercial then this field must be set to true, otherwise a failure is thrown. This acts as a safety guard to avoid deleting commercial listings accidentally.
  final Input<bool>? deleteCommercial;

  /// Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF).
  final Input<String>? description;

  /// Specifies the type of discovery on the discovery page. Cannot be set for a restricted listing. Note that this does not control the visibility of the exchange/listing which is defined by IAM permission.
  /// Possible values are: `DISCOVERY_TYPE_PRIVATE`, `DISCOVERY_TYPE_PUBLIC`.
  final Input<String>? discoveryType;

  /// Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces.
  final Input<String> displayName;

  /// Documentation describing the listing.
  final Input<String>? documentation;

  /// Base64 encoded image representing the listing.
  final Input<String>? icon;

  /// The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final Input<String> listingId;

  /// The name of the location this data exchange listing.
  final Input<String> location;

  /// If true, subscriber email logging is enabled and all queries on the linked dataset will log the email address of the querying user. Once enabled, this setting cannot be turned off.
  final Input<bool>? logLinkedDatasetQueryUserEmail;

  /// Email or URL of the primary point of contact of the listing.
  final Input<String>? primaryContact;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Details of the publisher who owns the listing and who can share the source data.
  /// Structure is documented below.
  final Input<ListingPublisher>? publisher;

  /// Pub/Sub topic source.
  /// Structure is documented below.
  final Input<ListingPubsubTopic>? pubsubTopic;

  /// Email or URL of the request access of the listing. Subscribers can use this reference to request access.
  final Input<String>? requestAccess;

  /// If set, restricted export configuration will be propagated and enforced on the linked dataset.
  /// Structure is documented below.
  final Input<ListingRestrictedExportConfig>? restrictedExportConfig;

  ListingArgs({
    this.allowOnlyMetadataSharing,
    this.bigqueryDataset,
    this.categories,
    required this.dataExchangeId,
    this.dataProvider,
    this.deleteCommercial,
    this.description,
    this.discoveryType,
    required this.displayName,
    this.documentation,
    this.icon,
    required this.listingId,
    required this.location,
    this.logLinkedDatasetQueryUserEmail,
    this.primaryContact,
    this.project,
    this.publisher,
    this.pubsubTopic,
    this.requestAccess,
    this.restrictedExportConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowOnlyMetadataSharingValue = allowOnlyMetadataSharing;
    if (allowOnlyMetadataSharingValue != null) {
      map['allowOnlyMetadataSharing'] = allowOnlyMetadataSharingValue;
    }
    final bigqueryDatasetValue = bigqueryDataset;
    if (bigqueryDatasetValue != null) {
      map['bigqueryDataset'] = Input.mapOptionalInputValue<
          ListingBigqueryDataset,
          Map<String, dynamic>>(bigqueryDatasetValue, (value) => value.toMap());
    }
    final categoriesValue = categories;
    if (categoriesValue != null) {
      map['categories'] = categoriesValue;
    }
    map['dataExchangeId'] = dataExchangeId;
    final dataProviderValue = dataProvider;
    if (dataProviderValue != null) {
      map['dataProvider'] = Input.mapOptionalInputValue<ListingDataProvider,
          Map<String, dynamic>>(dataProviderValue, (value) => value.toMap());
    }
    final deleteCommercialValue = deleteCommercial;
    if (deleteCommercialValue != null) {
      map['deleteCommercial'] = deleteCommercialValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final discoveryTypeValue = discoveryType;
    if (discoveryTypeValue != null) {
      map['discoveryType'] = discoveryTypeValue;
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
    map['location'] = location;
    final logLinkedDatasetQueryUserEmailValue = logLinkedDatasetQueryUserEmail;
    if (logLinkedDatasetQueryUserEmailValue != null) {
      map['logLinkedDatasetQueryUserEmail'] =
          logLinkedDatasetQueryUserEmailValue;
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
          Input.mapOptionalInputValue<ListingPublisher, Map<String, dynamic>>(
              publisherValue, (value) => value.toMap());
    }
    final pubsubTopicValue = pubsubTopic;
    if (pubsubTopicValue != null) {
      map['pubsubTopic'] =
          Input.mapOptionalInputValue<ListingPubsubTopic, Map<String, dynamic>>(
              pubsubTopicValue, (value) => value.toMap());
    }
    final requestAccessValue = requestAccess;
    if (requestAccessValue != null) {
      map['requestAccess'] = requestAccessValue;
    }
    final restrictedExportConfigValue = restrictedExportConfig;
    if (restrictedExportConfigValue != null) {
      map['restrictedExportConfig'] = Input.mapOptionalInputValue<
              ListingRestrictedExportConfig, Map<String, dynamic>>(
          restrictedExportConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ListingArgs.fromMap(Map<String, dynamic> map) {
    return ListingArgs(
      allowOnlyMetadataSharing:
          Input.asOptionalInput<bool>(map['allowOnlyMetadataSharing']),
      bigqueryDataset:
          Input.asOptionalInput<ListingBigqueryDataset>(map['bigqueryDataset']),
      categories: Input.asOptionalInput<List<String>>(map['categories']),
      dataExchangeId: Input.asInput<String>(map['dataExchangeId']),
      dataProvider:
          Input.asOptionalInput<ListingDataProvider>(map['dataProvider']),
      deleteCommercial: Input.asOptionalInput<bool>(map['deleteCommercial']),
      description: Input.asOptionalInput<String>(map['description']),
      discoveryType: Input.asOptionalInput<String>(map['discoveryType']),
      displayName: Input.asInput<String>(map['displayName']),
      documentation: Input.asOptionalInput<String>(map['documentation']),
      icon: Input.asOptionalInput<String>(map['icon']),
      listingId: Input.asInput<String>(map['listingId']),
      location: Input.asInput<String>(map['location']),
      logLinkedDatasetQueryUserEmail:
          Input.asOptionalInput<bool>(map['logLinkedDatasetQueryUserEmail']),
      primaryContact: Input.asOptionalInput<String>(map['primaryContact']),
      project: Input.asOptionalInput<String>(map['project']),
      publisher: Input.asOptionalInput<ListingPublisher>(map['publisher']),
      pubsubTopic:
          Input.asOptionalInput<ListingPubsubTopic>(map['pubsubTopic']),
      requestAccess: Input.asOptionalInput<String>(map['requestAccess']),
      restrictedExportConfig:
          Input.asOptionalInput<ListingRestrictedExportConfig>(
              map['restrictedExportConfig']),
    );
  }
}
