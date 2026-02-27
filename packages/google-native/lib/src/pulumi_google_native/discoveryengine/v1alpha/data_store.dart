import 'package:pulumi/pulumi.dart' hide Config;
import 'data_store_args.dart';

/// Creates a DataStore. DataStore is for storing Documents. To serve these documents for Search, or Recommendation use case, an Engine needs to be created separately.
class DataStore extends CustomResource {
  late final Output<String> collectionId;

  /// Immutable. The content config of the data store. If this field is unset, the server behavior defaults to ContentConfig.NO_CONTENT.
  late final Output<String> contentConfig;

  /// A boolean flag indicating whether user want to directly create an advanced data store for site search. If the data store is not configured as site search (GENERIC vertical and PUBLIC_WEBSITE content_config), this flag will be ignored.
  late final Output<bool?> createAdvancedSiteSearch;

  /// Timestamp the DataStore was created at.
  late final Output<String> createTime;

  /// Required. The ID to use for the DataStore, which will become the final component of the DataStore's resource name. This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  late final Output<String> dataStoreId;

  /// The id of the default Schema asscociated to this data store.
  late final Output<String> defaultSchemaId;

  /// The data store display name. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  late final Output<String> displayName;

  /// Immutable. The industry vertical that the data store registers.
  late final Output<String> industryVertical;
  late final Output<String> location;

  /// Immutable. The full resource name of the data store. Format: `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  late final Output<String> name;
  late final Output<String> project;

  /// The solutions that the data store enrolls. Available solutions for each industry_vertical: * `MEDIA`: `SOLUTION_TYPE_RECOMMENDATION` and `SOLUTION_TYPE_SEARCH`. * `SITE_SEARCH`: `SOLUTION_TYPE_SEARCH` is automatically enrolled. Other solutions cannot be enrolled.
  late final Output<List<String>> solutionTypes;

  DataStore(
    String name, {
    DataStoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:discoveryengine/v1alpha:DataStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.collectionId = registerOutput<String>('collectionId');
    this.contentConfig = registerOutput<String>('contentConfig');
    this.createAdvancedSiteSearch =
        registerOutput<bool?>('createAdvancedSiteSearch');
    this.createTime = registerOutput<String>('createTime');
    this.dataStoreId = registerOutput<String>('dataStoreId');
    this.defaultSchemaId = registerOutput<String>('defaultSchemaId');
    this.displayName = registerOutput<String>('displayName');
    this.industryVertical = registerOutput<String>('industryVertical');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.solutionTypes = registerOutput<List<String>>('solutionTypes');
  }
}
