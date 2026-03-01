// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_domain.dart';

/// Result data returned by getDomains.
class GetDomainsResult {
  final List<GetDomainsDomain> domains;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? resourceGroupId;
  final String? status;

  /// Creates a new [GetDomainsResult].
  /// [domains] Required.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [resourceGroupId] Optional.
  /// [status] Optional.
  GetDomainsResult({
    required this.domains,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.resourceGroupId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': pulumi.Input.encodeList<GetDomainsDomain, Map<String, dynamic>>(domains, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
    };
  }

  factory GetDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetDomainsResult(
      domains: pulumi.Input.decodeList<GetDomainsDomain>(map['domains'], (value) => GetDomainsDomain.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

