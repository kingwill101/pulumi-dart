import 'package:pulumi/pulumi.dart' hide Config;
import 'big_query_dataset_source_response2.dart';
import 'data_provider_response2.dart';
import 'listing_args2.dart';
import 'publisher_response2.dart';
import 'restricted_export_config_response2.dart';

/// Creates a new listing.
/// Auto-naming is currently not supported for this resource.
class Listing2 extends CustomResource {
  /// Shared dataset i.e. BigQuery dataset source.
  late final Output<BigQueryDatasetSourceResponse2> bigqueryDataset;

  /// Optional. Categories of the listing. Up to two categories are allowed.
  late final Output<List<String>> categories;
  late final Output<String> dataExchangeId;

  /// Optional. Details of the data provider who owns the source data.
  late final Output<DataProviderResponse2> dataProvider;

  /// Optional. Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  late final Output<String> description;

  /// Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  late final Output<String> displayName;

  /// Optional. Documentation describing the listing.
  late final Output<String> documentation;

  /// Optional. Base64 encoded image representing the listing. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the contents of the field are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  late final Output<String> icon;

  /// Required. The ID of the listing to create. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. Max length: 100 bytes.
  late final Output<String> listingId;
  late final Output<String> location;

  /// The resource name of the listing. e.g. `projects/myproject/locations/US/dataExchanges/123/listings/456`
  late final Output<String> name;

  /// Optional. Email or URL of the primary point of contact of the listing. Max Length: 1000 bytes.
  late final Output<String> primaryContact;
  late final Output<String> project;

  /// Optional. Details of the publisher who owns the listing and who can share the source data.
  late final Output<PublisherResponse2> publisher;

  /// Optional. Email or URL of the request access of the listing. Subscribers can use this reference to request access. Max Length: 1000 bytes.
  late final Output<String> requestAccess;

  /// Optional. If set, restricted export configuration will be propagated and enforced on the linked dataset.
  late final Output<RestrictedExportConfigResponse2> restrictedExportConfig;

  /// Current state of the listing.
  late final Output<String> state;

  Listing2(
    String name, {
    ListingArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:analyticshub/v1beta1:Listing',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bigqueryDataset =
        registerOutput<BigQueryDatasetSourceResponse2>('bigqueryDataset');
    this.categories = registerOutput<List<String>>('categories');
    this.dataExchangeId = registerOutput<String>('dataExchangeId');
    this.dataProvider = registerOutput<DataProviderResponse2>('dataProvider');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.documentation = registerOutput<String>('documentation');
    this.icon = registerOutput<String>('icon');
    this.listingId = registerOutput<String>('listingId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.primaryContact = registerOutput<String>('primaryContact');
    this.project = registerOutput<String>('project');
    this.publisher = registerOutput<PublisherResponse2>('publisher');
    this.requestAccess = registerOutput<String>('requestAccess');
    this.restrictedExportConfig =
        registerOutput<RestrictedExportConfigResponse2>(
            'restrictedExportConfig');
    this.state = registerOutput<String>('state');
  }
}
