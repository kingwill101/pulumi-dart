import 'package:pulumi/pulumi.dart' hide Config;
import 'data_source_args.dart';
import 'gsuite_principal_response.dart';

/// Creates a datasource. **Note:** This API requires an admin account to execute.
class DataSource extends CustomResource {
  /// If true, sets the datasource to read-only mode. In read-only mode, the Indexing API rejects any requests to index or delete items in this source. Enabling read-only mode does not stop the processing of previously accepted data.
  late final Output<bool> disableModifications;

  /// Disable serving any search or assist results.
  late final Output<bool> disableServing;

  /// Display name of the datasource The maximum length is 300 characters.
  late final Output<String> displayName;

  /// List of service accounts that have indexing access.
  late final Output<List<String>> indexingServiceAccounts;

  /// This field restricts visibility to items at the datasource level. Items within the datasource are restricted to the union of users and groups included in this field. Note that, this does not ensure access to a specific item, as users need to have ACL permissions on the contained items. This ensures a high level access on the entire datasource, and that the individual items are not shared outside this visibility.
  late final Output<List<GSuitePrincipalResponse>> itemsVisibility;

  /// The name of the datasource resource. Format: datasources/{source_id}. The name is ignored when creating a datasource.
  late final Output<String> name;

  /// IDs of the Long Running Operations (LROs) currently running for this schema.
  late final Output<List<String>> operationIds;

  /// Can a user request to get thumbnail URI for Items indexed in this data source.
  late final Output<bool> returnThumbnailUrls;

  /// A short name or alias for the source. This value will be used to match the 'source' operator. For example, if the short name is *<value>* then queries like *source:<value>* will only return results for this source. The value must be unique across all datasources. The value must only contain alphanumeric characters (a-zA-Z0-9). The value cannot start with 'google' and cannot be one of the following: mail, gmail, docs, drive, groups, sites, calendar, hangouts, gplus, keep, people, teams. Its maximum length is 32 characters.
  late final Output<String> shortName;

  DataSource(
    String name, {
    DataSourceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudsearch/v1:DataSource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.disableModifications = registerOutput<bool>('disableModifications');
    this.disableServing = registerOutput<bool>('disableServing');
    this.displayName = registerOutput<String>('displayName');
    this.indexingServiceAccounts =
        registerOutput<List<String>>('indexingServiceAccounts');
    this.itemsVisibility =
        registerOutput<List<GSuitePrincipalResponse>>('itemsVisibility');
    this.name = registerOutput<String>('name');
    this.operationIds = registerOutput<List<String>>('operationIds');
    this.returnThumbnailUrls = registerOutput<bool>('returnThumbnailUrls');
    this.shortName = registerOutput<String>('shortName');
  }
}
