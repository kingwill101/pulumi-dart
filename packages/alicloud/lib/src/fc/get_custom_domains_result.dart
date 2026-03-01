// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_domains_domain.dart';

/// Result data returned by getCustomDomains.
class GetCustomDomainsResult {
  /// A list of custom domains, including the following attributes:
  final List<GetCustomDomainsDomain> domains;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of custom domain ids.
  final List<String> ids;
  final String? nameRegex;
  /// A list of custom domain names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetCustomDomainsResult].
  /// [domains] A list of custom domains, including the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of custom domain ids.
  /// [nameRegex] Optional.
  /// [names] A list of custom domain names.
  /// [outputFile] Optional.
  GetCustomDomainsResult({
    required this.domains,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': pulumi.Input.encodeList<GetCustomDomainsDomain, Map<String, dynamic>>(domains, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetCustomDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetCustomDomainsResult(
      domains: pulumi.Input.decodeList<GetCustomDomainsDomain>(map['domains'], (value) => GetCustomDomainsDomain.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

