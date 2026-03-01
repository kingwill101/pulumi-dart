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
    pulumi.Output<String>? changeEndTime,
    pulumi.Output<String>? changeStartTime,
    pulumi.Output<bool>? checkDomainShow,
    pulumi.Output<String>? domainSearchType,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? securityToken,
    pulumi.Output<String>? status,
  }) :
      changeEndTime = pulumi.Input.asOptionalInput<String>(changeEndTime),
      changeStartTime = pulumi.Input.asOptionalInput<String>(changeStartTime),
      checkDomainShow = pulumi.Input.asOptionalInput<bool>(checkDomainShow),
      domainSearchType = pulumi.Input.asOptionalInput<String>(domainSearchType),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityToken = pulumi.Input.asOptionalInput<String>(securityToken),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      changeEndTime: map['changeEndTime'] == null ? null : pulumi.Output.create<String>(map['changeEndTime'] as String),
      changeStartTime: map['changeStartTime'] == null ? null : pulumi.Output.create<String>(map['changeStartTime'] as String),
      checkDomainShow: map['checkDomainShow'] == null ? null : pulumi.Output.create<bool>(map['checkDomainShow'] as bool),
      domainSearchType: map['domainSearchType'] == null ? null : pulumi.Output.create<String>(map['domainSearchType'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityToken: map['securityToken'] == null ? null : pulumi.Output.create<String>(map['securityToken'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

