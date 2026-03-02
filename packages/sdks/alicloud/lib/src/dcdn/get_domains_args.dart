// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dcdn_get_domains_get_domains_args_doc}
/// Arguments for getDomains.
/// {@endtemplate}
/// {@macro pulumi_dcdn_get_domains_get_domains_args_doc}
class GetDomainsArgs {
  /// The end time of the update. Specify the time in the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time must be in UTC.
  final pulumi.Input<String>? changeEndTime;
  /// The start time of the update. Specify the time in the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time must be in UTC.
  final pulumi.Input<String>? changeStartTime;
  /// Specifies whether to display the domains in the checking, check_failed, or configure_failed status. Valid values: `true` or `false`.
  final pulumi.Input<bool>? checkDomainShow;
  /// The search method. Default value: `fuzzy_match`. Valid values: `fuzzy_match`, `pre_match`, `suf_match`, `full_match`.
  final pulumi.Input<String>? domainSearchType;
  /// Default to `false`. Set it to true can output more details.
  final pulumi.Input<bool>? enableDetails;
  /// A list ids of DCDN Domain.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by the DCDN Domain.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<String>? securityToken;
  /// The status of DCDN Domain.
  final pulumi.Input<String>? status;

  /// Creates a new [GetDomainsArgs].
  /// [changeEndTime] The end time of the update. Specify the time in the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time must be in UTC.
  /// [changeStartTime] The start time of the update. Specify the time in the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time must be in UTC.
  /// [checkDomainShow] Specifies whether to display the domains in the checking, check_failed, or configure_failed status. Valid values: `true` or `false`.
  /// [domainSearchType] The search method. Default value: `fuzzy_match`. Valid values: `fuzzy_match`, `pre_match`, `suf_match`, `full_match`.
  /// [enableDetails] Default to `false`. Set it to true can output more details.
  /// [ids] A list ids of DCDN Domain.
  /// [nameRegex] A regex string to filter results by the DCDN Domain.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the resource group.
  /// [securityToken] Optional.
  /// [status] The status of DCDN Domain.
  GetDomainsArgs({
    this.changeEndTime,
    this.changeStartTime,
    this.checkDomainShow,
    this.domainSearchType,
    this.enableDetails,
    this.ids,
    this.nameRegex,
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
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'securityToken': ?securityToken,
      'status': ?status,
    };
  }

  factory GetDomainsArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainsArgs(
      changeEndTime: map['changeEndTime'] == null ? null : (map['changeEndTime'] as String).input(),
      changeStartTime: map['changeStartTime'] == null ? null : (map['changeStartTime'] as String).input(),
      checkDomainShow: map['checkDomainShow'] == null ? null : (map['checkDomainShow'] as bool).input(),
      domainSearchType: map['domainSearchType'] == null ? null : (map['domainSearchType'] as String).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      securityToken: map['securityToken'] == null ? null : (map['securityToken'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

