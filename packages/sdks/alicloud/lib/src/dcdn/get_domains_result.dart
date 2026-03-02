// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_domain.dart';

/// Result data returned by getDomains.
class GetDomainsResult {
  final String? changeEndTime;
  final String? changeStartTime;
  final bool? checkDomainShow;
  final String? domainSearchType;
  /// A list of domains. Each element contains the following attributes:
  final List<GetDomainsDomain> domains;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list ids of DCDN Domain.
  final List<String> ids;
  final String? nameRegex;
  /// A list of DCDN Domain names.
  final List<String> names;
  final String? outputFile;
  /// The ID of the resource group.
  final String? resourceGroupId;
  final String? securityToken;
  /// The status of DCDN Domain. Valid values: `online`, `offline`, `check_failed`, `checking`, `configure_failed`, `configuring`.
  final String? status;

  /// Creates a new [GetDomainsResult].
  /// [changeEndTime] Optional.
  /// [changeStartTime] Optional.
  /// [checkDomainShow] Optional.
  /// [domainSearchType] Optional.
  /// [domains] A list of domains. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list ids of DCDN Domain.
  /// [nameRegex] Optional.
  /// [names] A list of DCDN Domain names.
  /// [outputFile] Optional.
  /// [resourceGroupId] The ID of the resource group.
  /// [securityToken] Optional.
  /// [status] The status of DCDN Domain. Valid values: `online`, `offline`, `check_failed`, `checking`, `configure_failed`, `configuring`.
  GetDomainsResult({
    this.changeEndTime,
    this.changeStartTime,
    this.checkDomainShow,
    this.domainSearchType,
    required this.domains,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.resourceGroupId,
    this.securityToken,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeEndTime': ?changeEndTime,
      'changeStartTime': ?changeStartTime,
      'checkDomainShow': ?checkDomainShow,
      'domainSearchType': ?domainSearchType,
      'domains': pulumi.Input.encodeList<GetDomainsDomain, Map<String, dynamic>>(domains, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'securityToken': ?securityToken,
      'status': ?status,
    };
  }

  factory GetDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetDomainsResult(
      changeEndTime: map['changeEndTime'] == null ? null : map['changeEndTime']! as String,
      changeStartTime: map['changeStartTime'] == null ? null : map['changeStartTime']! as String,
      checkDomainShow: map['checkDomainShow'] == null ? null : map['checkDomainShow']! as bool,
      domainSearchType: map['domainSearchType'] == null ? null : map['domainSearchType']! as String,
      domains: pulumi.Input.decodeList<GetDomainsDomain>(map['domains'], (value) => GetDomainsDomain.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      securityToken: map['securityToken'] == null ? null : map['securityToken']! as String,
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

