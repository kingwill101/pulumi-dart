// ignore_for_file: unused_element, unnecessary_cast

import 'big_query_dataset_source_response.dart';
import 'data_provider_response.dart';
import 'publisher_response.dart';
import 'restricted_export_config_response.dart';

/// Result data returned by getListing.
class GetListingResult {
  /// Shared dataset i.e. BigQuery dataset source.
  final BigQueryDatasetSourceResponse bigqueryDataset;

  /// Optional. Categories of the listing. Up to two categories are allowed.
  final List<String> categories;

  /// Optional. Details of the data provider who owns the source data.
  final DataProviderResponse dataProvider;

  /// Optional. Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  final String description;

  /// Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  final String displayName;

  /// Optional. Documentation describing the listing.
  final String documentation;

  /// Optional. Base64 encoded image representing the listing. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the contents of the field are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  final String icon;

  /// The resource name of the listing. e.g. `projects/myproject/locations/US/dataExchanges/123/listings/456`
  final String name;

  /// Optional. Email or URL of the primary point of contact of the listing. Max Length: 1000 bytes.
  final String primaryContact;

  /// Optional. Details of the publisher who owns the listing and who can share the source data.
  final PublisherResponse publisher;

  /// Optional. Email or URL of the request access of the listing. Subscribers can use this reference to request access. Max Length: 1000 bytes.
  final String requestAccess;

  /// Optional. If set, restricted export configuration will be propagated and enforced on the linked dataset.
  final RestrictedExportConfigResponse restrictedExportConfig;

  /// Current state of the listing.
  final String state;

  /// Creates a new [GetListingResult].
  /// [bigqueryDataset] Shared dataset i.e. BigQuery dataset source.
  /// [categories] Optional. Categories of the listing. Up to two categories are allowed.
  /// [dataProvider] Optional. Details of the data provider who owns the source data.
  /// [description] Optional. Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  /// [displayName] Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  /// [documentation] Optional. Documentation describing the listing.
  /// [icon] Optional. Base64 encoded image representing the listing. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the contents of the field are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  /// [name] The resource name of the listing. e.g. `projects/myproject/locations/US/dataExchanges/123/listings/456`
  /// [primaryContact] Optional. Email or URL of the primary point of contact of the listing. Max Length: 1000 bytes.
  /// [publisher] Optional. Details of the publisher who owns the listing and who can share the source data.
  /// [requestAccess] Optional. Email or URL of the request access of the listing. Subscribers can use this reference to request access. Max Length: 1000 bytes.
  /// [restrictedExportConfig] Optional. If set, restricted export configuration will be propagated and enforced on the linked dataset.
  /// [state] Current state of the listing.
  GetListingResult({
    required this.bigqueryDataset,
    required this.categories,
    required this.dataProvider,
    required this.description,
    required this.displayName,
    required this.documentation,
    required this.icon,
    required this.name,
    required this.primaryContact,
    required this.publisher,
    required this.requestAccess,
    required this.restrictedExportConfig,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDataset': bigqueryDataset.toMap(),
      'categories': categories,
      'dataProvider': dataProvider.toMap(),
      'description': description,
      'displayName': displayName,
      'documentation': documentation,
      'icon': icon,
      'name': name,
      'primaryContact': primaryContact,
      'publisher': publisher.toMap(),
      'requestAccess': requestAccess,
      'restrictedExportConfig': restrictedExportConfig.toMap(),
      'state': state,
    };
  }

  factory GetListingResult.fromMap(Map<String, dynamic> map) {
    return GetListingResult(
      bigqueryDataset: BigQueryDatasetSourceResponse.fromMap(
        (map['bigqueryDataset'] as Map).cast<String, dynamic>(),
      ),
      categories: (map['categories'] as List).cast<String>(),
      dataProvider: DataProviderResponse.fromMap(
        (map['dataProvider'] as Map).cast<String, dynamic>(),
      ),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      documentation: map['documentation'] as String,
      icon: map['icon'] as String,
      name: map['name'] as String,
      primaryContact: map['primaryContact'] as String,
      publisher: PublisherResponse.fromMap(
        (map['publisher'] as Map).cast<String, dynamic>(),
      ),
      requestAccess: map['requestAccess'] as String,
      restrictedExportConfig: RestrictedExportConfigResponse.fromMap(
        (map['restrictedExportConfig'] as Map).cast<String, dynamic>(),
      ),
      state: map['state'] as String,
    );
  }
}
