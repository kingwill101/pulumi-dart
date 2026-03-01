// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listing_bigquery_dataset.dart';
import 'listing_data_provider.dart';
import 'listing_publisher.dart';
import 'listing_pubsub_topic.dart';
import 'listing_restricted_export_config.dart';

/// {@template pulumi_bigqueryanalyticshub_listing_listing_args_doc}
/// The set of arguments for Listing.
/// {@endtemplate}
/// {@macro pulumi_bigqueryanalyticshub_listing_listing_args_doc}
class ListingArgs {
  /// If true, the listing is only available to get the resource metadata. Listing is non subscribable.
  final pulumi.Input<bool>? allowOnlyMetadataSharing;

  /// Shared dataset i.e. BigQuery dataset source.
  /// Structure is documented below.
  final pulumi.Input<ListingBigqueryDataset>? bigqueryDataset;

  /// Categories of the listing. Up to two categories are allowed.
  final pulumi.Input<List<String>>? categories;

  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final pulumi.Input<String> dataExchangeId;

  /// Details of the data provider who owns the source data.
  /// Structure is documented below.
  final pulumi.Input<ListingDataProvider>? dataProvider;

  /// If the listing is commercial then this field must be set to true, otherwise a failure is thrown. This acts as a safety guard to avoid deleting commercial listings accidentally.
  final pulumi.Input<bool>? deleteCommercial;

  /// Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF).
  final pulumi.Input<String>? description;

  /// Specifies the type of discovery on the discovery page. Cannot be set for a restricted listing. Note that this does not control the visibility of the exchange/listing which is defined by IAM permission.
  /// Possible values are: `DISCOVERY_TYPE_PRIVATE`, `DISCOVERY_TYPE_PUBLIC`.
  final pulumi.Input<String>? discoveryType;

  /// Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces.
  final pulumi.Input<String> displayName;

  /// Documentation describing the listing.
  final pulumi.Input<String>? documentation;

  /// Base64 encoded image representing the listing.
  final pulumi.Input<String>? icon;

  /// The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final pulumi.Input<String> listingId;

  /// The name of the location this data exchange listing.
  final pulumi.Input<String> location;

  /// If true, subscriber email logging is enabled and all queries on the linked dataset will log the email address of the querying user. Once enabled, this setting cannot be turned off.
  final pulumi.Input<bool>? logLinkedDatasetQueryUserEmail;

  /// Email or URL of the primary point of contact of the listing.
  final pulumi.Input<String>? primaryContact;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Details of the publisher who owns the listing and who can share the source data.
  /// Structure is documented below.
  final pulumi.Input<ListingPublisher>? publisher;

  /// Pub/Sub topic source.
  /// Structure is documented below.
  final pulumi.Input<ListingPubsubTopic>? pubsubTopic;

  /// Email or URL of the request access of the listing. Subscribers can use this reference to request access.
  final pulumi.Input<String>? requestAccess;

  /// If set, restricted export configuration will be propagated and enforced on the linked dataset.
  /// Structure is documented below.
  final pulumi.Input<ListingRestrictedExportConfig>? restrictedExportConfig;

  /// Creates a new [ListingArgs].
  /// [allowOnlyMetadataSharing] If true, the listing is only available to get the resource metadata. Listing is non subscribable.
  /// [bigqueryDataset] Shared dataset i.e. BigQuery dataset source.
  /// [categories] Categories of the listing. Up to two categories are allowed.
  /// [dataExchangeId] The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  /// [dataProvider] Details of the data provider who owns the source data.
  /// [deleteCommercial] If the listing is commercial then this field must be set to true, otherwise a failure is thrown. This acts as a safety guard to avoid deleting commercial listings accidentally.
  /// [description] Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF).
  /// [discoveryType] Specifies the type of discovery on the discovery page. Cannot be set for a restricted listing. Note that this does not control the visibility of the exchange/listing which is defined by IAM permission.
  /// [displayName] Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces.
  /// [documentation] Documentation describing the listing.
  /// [icon] Base64 encoded image representing the listing.
  /// [listingId] The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  /// [location] The name of the location this data exchange listing.
  /// [logLinkedDatasetQueryUserEmail] If true, subscriber email logging is enabled and all queries on the linked dataset will log the email address of the querying user. Once enabled, this setting cannot be turned off.
  /// [primaryContact] Email or URL of the primary point of contact of the listing.
  /// [project] The ID of the project in which the resource belongs.
  /// [publisher] Details of the publisher who owns the listing and who can share the source data.
  /// [pubsubTopic] Pub/Sub topic source.
  /// [requestAccess] Email or URL of the request access of the listing. Subscribers can use this reference to request access.
  /// [restrictedExportConfig] If set, restricted export configuration will be propagated and enforced on the linked dataset.
  ListingArgs({
    bool? allowOnlyMetadataSharing,
    ListingBigqueryDataset? bigqueryDataset,
    List<String>? categories,
    required String dataExchangeId,
    ListingDataProvider? dataProvider,
    bool? deleteCommercial,
    String? description,
    String? discoveryType,
    required String displayName,
    String? documentation,
    String? icon,
    required String listingId,
    required String location,
    bool? logLinkedDatasetQueryUserEmail,
    String? primaryContact,
    String? project,
    ListingPublisher? publisher,
    ListingPubsubTopic? pubsubTopic,
    String? requestAccess,
    ListingRestrictedExportConfig? restrictedExportConfig,
  }) : allowOnlyMetadataSharing = pulumi.Input.asOptionalInput<bool>(
         allowOnlyMetadataSharing,
       ),
       bigqueryDataset = pulumi.Input.asOptionalInput<ListingBigqueryDataset>(
         bigqueryDataset,
       ),
       categories = pulumi.Input.asOptionalInput<List<String>>(categories),
       dataExchangeId = pulumi.Input.asInput<String>(dataExchangeId),
       dataProvider = pulumi.Input.asOptionalInput<ListingDataProvider>(
         dataProvider,
       ),
       deleteCommercial = pulumi.Input.asOptionalInput<bool>(deleteCommercial),
       description = pulumi.Input.asOptionalInput<String>(description),
       discoveryType = pulumi.Input.asOptionalInput<String>(discoveryType),
       displayName = pulumi.Input.asInput<String>(displayName),
       documentation = pulumi.Input.asOptionalInput<String>(documentation),
       icon = pulumi.Input.asOptionalInput<String>(icon),
       listingId = pulumi.Input.asInput<String>(listingId),
       location = pulumi.Input.asInput<String>(location),
       logLinkedDatasetQueryUserEmail = pulumi.Input.asOptionalInput<bool>(
         logLinkedDatasetQueryUserEmail,
       ),
       primaryContact = pulumi.Input.asOptionalInput<String>(primaryContact),
       project = pulumi.Input.asOptionalInput<String>(project),
       publisher = pulumi.Input.asOptionalInput<ListingPublisher>(publisher),
       pubsubTopic = pulumi.Input.asOptionalInput<ListingPubsubTopic>(
         pubsubTopic,
       ),
       requestAccess = pulumi.Input.asOptionalInput<String>(requestAccess),
       restrictedExportConfig =
           pulumi.Input.asOptionalInput<ListingRestrictedExportConfig>(
             restrictedExportConfig,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowOnlyMetadataSharing': ?allowOnlyMetadataSharing,
      'bigqueryDataset':
          ?pulumi.Input.mapOptionalInputValue<
            ListingBigqueryDataset,
            Map<String, dynamic>
          >(bigqueryDataset, (value) => value.toMap()),
      'categories': ?categories,
      'dataExchangeId': dataExchangeId,
      'dataProvider':
          ?pulumi.Input.mapOptionalInputValue<
            ListingDataProvider,
            Map<String, dynamic>
          >(dataProvider, (value) => value.toMap()),
      'deleteCommercial': ?deleteCommercial,
      'description': ?description,
      'discoveryType': ?discoveryType,
      'displayName': displayName,
      'documentation': ?documentation,
      'icon': ?icon,
      'listingId': listingId,
      'location': location,
      'logLinkedDatasetQueryUserEmail': ?logLinkedDatasetQueryUserEmail,
      'primaryContact': ?primaryContact,
      'project': ?project,
      'publisher':
          ?pulumi.Input.mapOptionalInputValue<
            ListingPublisher,
            Map<String, dynamic>
          >(publisher, (value) => value.toMap()),
      'pubsubTopic':
          ?pulumi.Input.mapOptionalInputValue<
            ListingPubsubTopic,
            Map<String, dynamic>
          >(pubsubTopic, (value) => value.toMap()),
      'requestAccess': ?requestAccess,
      'restrictedExportConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ListingRestrictedExportConfig,
            Map<String, dynamic>
          >(restrictedExportConfig, (value) => value.toMap()),
    };
  }

  factory ListingArgs.fromMap(Map<String, dynamic> map) {
    return ListingArgs(
      allowOnlyMetadataSharing: map['allowOnlyMetadataSharing'] == null
          ? null
          : map['allowOnlyMetadataSharing'] as bool,
      bigqueryDataset: map['bigqueryDataset'] == null
          ? null
          : ListingBigqueryDataset.fromMap(
              (map['bigqueryDataset'] as Map).cast<String, dynamic>(),
            ),
      categories: map['categories'] == null
          ? null
          : (map['categories'] as List).cast<String>(),
      dataExchangeId: map['dataExchangeId'] as String,
      dataProvider: map['dataProvider'] == null
          ? null
          : ListingDataProvider.fromMap(
              (map['dataProvider'] as Map).cast<String, dynamic>(),
            ),
      deleteCommercial: map['deleteCommercial'] == null
          ? null
          : map['deleteCommercial'] as bool,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      discoveryType: map['discoveryType'] == null
          ? null
          : map['discoveryType'] as String,
      displayName: map['displayName'] as String,
      documentation: map['documentation'] == null
          ? null
          : map['documentation'] as String,
      icon: map['icon'] == null ? null : map['icon'] as String,
      listingId: map['listingId'] as String,
      location: map['location'] as String,
      logLinkedDatasetQueryUserEmail:
          map['logLinkedDatasetQueryUserEmail'] == null
          ? null
          : map['logLinkedDatasetQueryUserEmail'] as bool,
      primaryContact: map['primaryContact'] == null
          ? null
          : map['primaryContact'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      publisher: map['publisher'] == null
          ? null
          : ListingPublisher.fromMap(
              (map['publisher'] as Map).cast<String, dynamic>(),
            ),
      pubsubTopic: map['pubsubTopic'] == null
          ? null
          : ListingPubsubTopic.fromMap(
              (map['pubsubTopic'] as Map).cast<String, dynamic>(),
            ),
      requestAccess: map['requestAccess'] == null
          ? null
          : map['requestAccess'] as String,
      restrictedExportConfig: map['restrictedExportConfig'] == null
          ? null
          : ListingRestrictedExportConfig.fromMap(
              (map['restrictedExportConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
