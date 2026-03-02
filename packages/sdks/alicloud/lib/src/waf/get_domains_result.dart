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
  /// A list of WAF domain self ID, value as `domain_name`.
  final List<String> ids;
  final String instanceId;
  final String? nameRegex;
  /// A list of WAF domain names.
  final List<String> names;
  final String? outputFile;
  /// The ID of the resource group to which the queried domain belongs in Resource Management.
  final String? resourceGroupId;

  /// Creates a new [GetDomainsResult].
  /// [domains] A list of Domains. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of WAF domain self ID, value as `domain_name`.
  /// [instanceId] Required.
  /// [nameRegex] Optional.
  /// [names] A list of WAF domain names.
  /// [outputFile] Optional.
  /// [resourceGroupId] The ID of the resource group to which the queried domain belongs in Resource Management.
  GetDomainsResult({
    required this.domains,
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.resourceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': pulumi.Input.encodeList<GetDomainsDomain, Map<String, dynamic>>(domains, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory GetDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetDomainsResult(
      domains: pulumi.Input.decodeList<GetDomainsDomain>(map['domains'], (value) => GetDomainsDomain.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
    );
  }
}

