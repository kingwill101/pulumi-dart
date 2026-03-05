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
      accessType: (() { final guardedValue = map['accessType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      coverage: (() { final guardedValue = map['coverage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      onlyEnterprise: (() { final guardedValue = map['onlyEnterprise']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      planSubscribeType: (() { final guardedValue = map['planSubscribeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteName: (() { final guardedValue = map['siteName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteSearchType: (() { final guardedValue = map['siteSearchType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sites: pulumi.Input.decodeList<GetSitesSite>(map['sites']!, (value) => GetSitesSite.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

