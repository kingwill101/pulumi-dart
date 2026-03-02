// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_waf_domains_domain.dart';

/// Result data returned by getWafDomains.
class GetWafDomainsResult {
  /// A list of Dcdn Waf Domains. Each element contains the following attributes:
  final List<GetWafDomainsDomain> domains;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final String? queryArgs;

  /// Creates a new [GetWafDomainsResult].
  /// [domains] A list of Dcdn Waf Domains. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [queryArgs] Optional.
  GetWafDomainsResult({
    required this.domains,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.outputFile,
    this.queryArgs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': pulumi.Input.encodeList<GetWafDomainsDomain, Map<String, dynamic>>(domains, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'queryArgs': ?queryArgs,
    };
  }

  factory GetWafDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetWafDomainsResult(
      domains: pulumi.Input.decodeList<GetWafDomainsDomain>(map['domains'], (value) => GetWafDomainsDomain.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      queryArgs: map['queryArgs'] == null ? null : map['queryArgs']! as String,
    );
  }
}

