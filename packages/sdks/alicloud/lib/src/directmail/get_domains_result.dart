// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_domain.dart';

/// Result data returned by getDomains.
class GetDomainsResult {
  /// A list of Domains. Each element contains the following attributes:
  final List<GetDomainsDomain> domains;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? keyWord;
  final String? nameRegex;
  /// A list of Domain names.
  final List<String> names;
  final String? outputFile;
  /// The status of the domain name.
  final String? status;

  /// Creates a new [GetDomainsResult].
  /// [domains] A list of Domains. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [keyWord] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of Domain names.
  /// [outputFile] Optional.
  /// [status] The status of the domain name.
  GetDomainsResult({
    required this.domains,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.keyWord,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': pulumi.Input.encodeList<GetDomainsDomain, Map<String, dynamic>>(domains, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'keyWord': ?keyWord,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetDomainsResult(
      domains: pulumi.Input.decodeList<GetDomainsDomain>(map['domains'], (value) => GetDomainsDomain.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyWord: map['keyWord'] == null ? null : map['keyWord'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

