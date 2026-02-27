// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gsuite_principal.dart';

/// The set of arguments for DataSource.
class DataSourceArgs {
  /// If true, sets the datasource to read-only mode. In read-only mode, the Indexing API rejects any requests to index or delete items in this source. Enabling read-only mode does not stop the processing of previously accepted data.
  final pulumi.Input<bool>? disableModifications;

  /// Disable serving any search or assist results.
  final pulumi.Input<bool>? disableServing;

  /// Display name of the datasource The maximum length is 300 characters.
  final pulumi.Input<String> displayName;

  /// List of service accounts that have indexing access.
  final pulumi.Input<List<String>>? indexingServiceAccounts;

  /// This field restricts visibility to items at the datasource level. Items within the datasource are restricted to the union of users and groups included in this field. Note that, this does not ensure access to a specific item, as users need to have ACL permissions on the contained items. This ensures a high level access on the entire datasource, and that the individual items are not shared outside this visibility.
  final pulumi.Input<List<GSuitePrincipal>>? itemsVisibility;

  /// The name of the datasource resource. Format: datasources/{source_id}. The name is ignored when creating a datasource.
  final pulumi.Input<String>? name;

  /// IDs of the Long Running Operations (LROs) currently running for this schema.
  final pulumi.Input<List<String>>? operationIds;

  /// Can a user request to get thumbnail URI for Items indexed in this data source.
  final pulumi.Input<bool>? returnThumbnailUrls;

  /// A short name or alias for the source. This value will be used to match the 'source' operator. For example, if the short name is *<value>* then queries like *source:<value>* will only return results for this source. The value must be unique across all datasources. The value must only contain alphanumeric characters (a-zA-Z0-9). The value cannot start with 'google' and cannot be one of the following: mail, gmail, docs, drive, groups, sites, calendar, hangouts, gplus, keep, people, teams. Its maximum length is 32 characters.
  final pulumi.Input<String>? shortName;

  DataSourceArgs({
    this.disableModifications,
    this.disableServing,
    required this.displayName,
    this.indexingServiceAccounts,
    this.itemsVisibility,
    this.name,
    this.operationIds,
    this.returnThumbnailUrls,
    this.shortName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableModificationsValue = disableModifications;
    if (disableModificationsValue != null) {
      map['disableModifications'] = disableModificationsValue;
    }
    final disableServingValue = disableServing;
    if (disableServingValue != null) {
      map['disableServing'] = disableServingValue;
    }
    map['displayName'] = displayName;
    final indexingServiceAccountsValue = indexingServiceAccounts;
    if (indexingServiceAccountsValue != null) {
      map['indexingServiceAccounts'] = indexingServiceAccountsValue;
    }
    final itemsVisibilityValue = itemsVisibility;
    if (itemsVisibilityValue != null) {
      map['itemsVisibility'] = pulumi.Input.mapOptionalInputValue<
              List<GSuitePrincipal>, List<Map<String, dynamic>>>(
          itemsVisibilityValue,
          (value) =>
              pulumi.Input.encodeList<GSuitePrincipal, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final operationIdsValue = operationIds;
    if (operationIdsValue != null) {
      map['operationIds'] = operationIdsValue;
    }
    final returnThumbnailUrlsValue = returnThumbnailUrls;
    if (returnThumbnailUrlsValue != null) {
      map['returnThumbnailUrls'] = returnThumbnailUrlsValue;
    }
    final shortNameValue = shortName;
    if (shortNameValue != null) {
      map['shortName'] = shortNameValue;
    }
    return map;
  }

  factory DataSourceArgs.fromMap(Map<String, dynamic> map) {
    return DataSourceArgs(
      disableModifications:
          pulumi.Input.asOptionalInput<bool>(map['disableModifications']),
      disableServing: pulumi.Input.asOptionalInput<bool>(map['disableServing']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      indexingServiceAccounts: pulumi.Input.asOptionalInput<List<String>>(
          map['indexingServiceAccounts']),
      itemsVisibility: pulumi.Input.asOptionalInput<List<GSuitePrincipal>>(
          map['itemsVisibility']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      operationIds:
          pulumi.Input.asOptionalInput<List<String>>(map['operationIds']),
      returnThumbnailUrls:
          pulumi.Input.asOptionalInput<bool>(map['returnThumbnailUrls']),
      shortName: pulumi.Input.asOptionalInput<String>(map['shortName']),
    );
  }
}
