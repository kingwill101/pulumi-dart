// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sites_site.dart';

/// Result data returned by getSites.
class GetSitesResult {
  /// Access type. Value:-**NS**: Managed access via NS.-**CNAME**: access through CNAME.
  final String? accessType;
  /// Acceleration area
  final String? coverage;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Site IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of Sites.
  final List<String> names;
  final bool? onlyEnterprise;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final String? planSubscribeType;
  /// The ID of the resource group
  final String? resourceGroupId;
  /// Site Name
  final String? siteName;
  final String? siteSearchType;
  /// A list of Site Entries. Each element contains the following attributes:
  final List<GetSitesSite> sites;
  /// The status of the resource
  final String? status;
  final Map<String, String>? tags;

  /// Creates a new [GetSitesResult].
  /// [accessType] Access type. Value:-**NS**: Managed access via NS.-**CNAME**: access through CNAME.
  /// [coverage] Acceleration area
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Site IDs.
  /// [nameRegex] Optional.
  /// [names] A list of name of Sites.
  /// [onlyEnterprise] Optional.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [planSubscribeType] Optional.
  /// [resourceGroupId] The ID of the resource group
  /// [siteName] Site Name
  /// [siteSearchType] Optional.
  /// [sites] A list of Site Entries. Each element contains the following attributes:
  /// [status] The status of the resource
  /// [tags] Optional.
  GetSitesResult({
    this.accessType,
    this.coverage,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.onlyEnterprise,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.planSubscribeType,
    this.resourceGroupId,
    this.siteName,
    this.siteSearchType,
    required this.sites,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': ?accessType,
      'coverage': ?coverage,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'onlyEnterprise': ?onlyEnterprise,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'planSubscribeType': ?planSubscribeType,
      'resourceGroupId': ?resourceGroupId,
      'siteName': ?siteName,
      'siteSearchType': ?siteSearchType,
      'sites': pulumi.Input.encodeList<GetSitesSite, Map<String, dynamic>>(sites, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetSitesResult.fromMap(Map<String, dynamic> map) {
    return GetSitesResult(
      accessType: map['accessType'] == null ? null : map['accessType'] as String,
      coverage: map['coverage'] == null ? null : map['coverage'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      onlyEnterprise: map['onlyEnterprise'] == null ? null : map['onlyEnterprise'] as bool,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      planSubscribeType: map['planSubscribeType'] == null ? null : map['planSubscribeType'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      siteName: map['siteName'] == null ? null : map['siteName'] as String,
      siteSearchType: map['siteSearchType'] == null ? null : map['siteSearchType'] as String,
      sites: pulumi.Input.decodeList<GetSitesSite>(map['sites'], (value) => GetSitesSite.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

