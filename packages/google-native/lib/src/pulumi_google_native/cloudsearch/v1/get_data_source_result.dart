// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'gsuite_principal_response.dart';

/// Result data returned by getDataSource.
class GetDataSourceResult {
  /// If true, sets the datasource to read-only mode. In read-only mode, the Indexing API rejects any requests to index or delete items in this source. Enabling read-only mode does not stop the processing of previously accepted data.
  final bool disableModifications;

  /// Disable serving any search or assist results.
  final bool disableServing;

  /// Display name of the datasource The maximum length is 300 characters.
  final String displayName;

  /// List of service accounts that have indexing access.
  final List<String> indexingServiceAccounts;

  /// This field restricts visibility to items at the datasource level. Items within the datasource are restricted to the union of users and groups included in this field. Note that, this does not ensure access to a specific item, as users need to have ACL permissions on the contained items. This ensures a high level access on the entire datasource, and that the individual items are not shared outside this visibility.
  final List<GSuitePrincipalResponse> itemsVisibility;

  /// The name of the datasource resource. Format: datasources/{source_id}. The name is ignored when creating a datasource.
  final String name;

  /// IDs of the Long Running Operations (LROs) currently running for this schema.
  final List<String> operationIds;

  /// Can a user request to get thumbnail URI for Items indexed in this data source.
  final bool returnThumbnailUrls;

  /// A short name or alias for the source. This value will be used to match the 'source' operator. For example, if the short name is *<value>* then queries like *source:<value>* will only return results for this source. The value must be unique across all datasources. The value must only contain alphanumeric characters (a-zA-Z0-9). The value cannot start with 'google' and cannot be one of the following: mail, gmail, docs, drive, groups, sites, calendar, hangouts, gplus, keep, people, teams. Its maximum length is 32 characters.
  final String shortName;

  GetDataSourceResult({
    required this.disableModifications,
    required this.disableServing,
    required this.displayName,
    required this.indexingServiceAccounts,
    required this.itemsVisibility,
    required this.name,
    required this.operationIds,
    required this.returnThumbnailUrls,
    required this.shortName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disableModifications'] = disableModifications;
    map['disableServing'] = disableServing;
    map['displayName'] = displayName;
    map['indexingServiceAccounts'] = indexingServiceAccounts;
    map['itemsVisibility'] =
        Input.encodeList<GSuitePrincipalResponse, Map<String, dynamic>>(
            itemsVisibility, (value) => value.toMap());
    map['name'] = name;
    map['operationIds'] = operationIds;
    map['returnThumbnailUrls'] = returnThumbnailUrls;
    map['shortName'] = shortName;
    return map;
  }

  factory GetDataSourceResult.fromMap(Map<String, dynamic> map) {
    return GetDataSourceResult(
      disableModifications: map['disableModifications'] as bool,
      disableServing: map['disableServing'] as bool,
      displayName: map['displayName'] as String,
      indexingServiceAccounts:
          (map['indexingServiceAccounts'] as List).cast<String>(),
      itemsVisibility: Input.decodeList<GSuitePrincipalResponse>(
          map['itemsVisibility'],
          (value) => GSuitePrincipalResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      operationIds: (map['operationIds'] as List).cast<String>(),
      returnThumbnailUrls: map['returnThumbnailUrls'] as bool,
      shortName: map['shortName'] as String,
    );
  }
}
