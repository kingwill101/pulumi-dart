// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ad_connector_office_sites_site.dart';

/// Result data returned by getAdConnectorOfficeSites.
class GetAdConnectorOfficeSitesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetAdConnectorOfficeSitesSite> sites;
  final String? status;

  /// Creates a new [GetAdConnectorOfficeSitesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [sites] Required.
  /// [status] Optional.
  GetAdConnectorOfficeSitesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.sites,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'sites': pulumi.Input.encodeList<GetAdConnectorOfficeSitesSite, Map<String, dynamic>>(sites, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetAdConnectorOfficeSitesResult.fromMap(Map<String, dynamic> map) {
    return GetAdConnectorOfficeSitesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      sites: pulumi.Input.decodeList<GetAdConnectorOfficeSitesSite>(map['sites'], (value) => GetAdConnectorOfficeSitesSite.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

