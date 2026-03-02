// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipa_domains_domain.dart';

/// Result data returned by getIpaDomains.
class GetIpaDomainsResult {
  /// The accelerated domain names.
  final String? domainName;
  /// A list of Dcdn Ipa Domains. Each element contains the following attributes:
  final List<GetIpaDomainsDomain> domains;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// A list of Dcdn Ipa Domain names.
  final List<String> names;
  final String? outputFile;
  /// The status of the accelerated domain name.
  final String? status;

  /// Creates a new [GetIpaDomainsResult].
  /// [domainName] The accelerated domain names.
  /// [domains] A list of Dcdn Ipa Domains. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [names] A list of Dcdn Ipa Domain names.
  /// [outputFile] Optional.
  /// [status] The status of the accelerated domain name.
  GetIpaDomainsResult({
    this.domainName,
    required this.domains,
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'domains': pulumi.Input.encodeList<GetIpaDomainsDomain, Map<String, dynamic>>(domains, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetIpaDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetIpaDomainsResult(
      domainName: map['domainName'] == null ? null : map['domainName']! as String,
      domains: pulumi.Input.decodeList<GetIpaDomainsDomain>(map['domains'], (value) => GetIpaDomainsDomain.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

