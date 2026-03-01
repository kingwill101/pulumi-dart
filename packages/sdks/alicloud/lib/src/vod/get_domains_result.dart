// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_domain.dart';

/// Result data returned by getDomains.
class GetDomainsResult {
  final String? domainSearchType;
  final List<GetDomainsDomain> domains;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? status;
  final Map<String, String>? tags;

  /// Creates a new [GetDomainsResult].
  /// [domainSearchType] Optional.
  /// [domains] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  GetDomainsResult({
    this.domainSearchType,
    required this.domains,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainSearchType': ?domainSearchType,
      'domains': pulumi.Input.encodeList<GetDomainsDomain, Map<String, dynamic>>(domains, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetDomainsResult(
      domainSearchType: map['domainSearchType'] == null ? null : map['domainSearchType'] as String,
      domains: pulumi.Input.decodeList<GetDomainsDomain>(map['domains'], (value) => GetDomainsDomain.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

