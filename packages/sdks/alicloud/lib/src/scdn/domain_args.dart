// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cert_info.dart';
import 'domain_source.dart';

/// {@template pulumi_scdn_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_scdn_domain_domain_args_doc}
class DomainArgs {
  /// Attribute perm has been deprecated and suggest removing it from your template.
  final pulumi.Input<String>? bizName;
  /// Certificate Information. See the following `Block cert_infos`.
  final pulumi.Input<List<DomainCertInfo>>? certInfos;
  /// The health check url.
  final pulumi.Input<String>? checkUrl;
  /// The name of domain.
  final pulumi.Input<String> domainName;
  /// Whether to set certificate forcibly.
  final pulumi.Input<String>? forceSet;
  /// The resource group id.
  final pulumi.Input<String>? resourceGroupId;
  /// the Origin Server Information. See the following `Block sources`.
  final pulumi.Input<List<DomainSource>> sources;
  /// The status of the resource. Valid values: `offline`, `online`.
  final pulumi.Input<String>? status;

  /// Creates a new [DomainArgs].
  /// [bizName] Attribute perm has been deprecated and suggest removing it from your template.
  /// [certInfos] Certificate Information. See the following `Block cert_infos`.
  /// [checkUrl] The health check url.
  /// [domainName] The name of domain.
  /// [forceSet] Whether to set certificate forcibly.
  /// [resourceGroupId] The resource group id.
  /// [sources] the Origin Server Information. See the following `Block sources`.
  /// [status] The status of the resource. Valid values: `offline`, `online`.
  DomainArgs({
    pulumi.Output<String>? bizName,
    pulumi.Output<List<DomainCertInfo>>? certInfos,
    pulumi.Output<String>? checkUrl,
    required pulumi.Output<String> domainName,
    pulumi.Output<String>? forceSet,
    pulumi.Output<String>? resourceGroupId,
    required pulumi.Output<List<DomainSource>> sources,
    pulumi.Output<String>? status,
  }) :
      bizName = pulumi.Input.asOptionalInput<String>(bizName),
      certInfos = pulumi.Input.asOptionalInput<List<DomainCertInfo>>(certInfos),
      checkUrl = pulumi.Input.asOptionalInput<String>(checkUrl),
      domainName = pulumi.Input.asInput<String>(domainName),
      forceSet = pulumi.Input.asOptionalInput<String>(forceSet),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      sources = pulumi.Input.asInput<List<DomainSource>>(sources),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bizName': ?bizName,
      'certInfos': ?pulumi.Input.mapOptionalInputValue<List<DomainCertInfo>, List<Map<String, dynamic>>>(certInfos, (value) => pulumi.Input.encodeList<DomainCertInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'checkUrl': ?checkUrl,
      'domainName': domainName,
      'forceSet': ?forceSet,
      'resourceGroupId': ?resourceGroupId,
      'sources': pulumi.Input.mapInputValue<List<DomainSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<DomainSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      bizName: map['bizName'] == null ? null : pulumi.Output.create<String>(map['bizName'] as String),
      certInfos: map['certInfos'] == null ? null : pulumi.Output.create<List<DomainCertInfo>>(pulumi.Input.decodeList<DomainCertInfo>(map['certInfos'], (value) => DomainCertInfo.fromMap((value as Map).cast<String, dynamic>()))),
      checkUrl: map['checkUrl'] == null ? null : pulumi.Output.create<String>(map['checkUrl'] as String),
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      forceSet: map['forceSet'] == null ? null : pulumi.Output.create<String>(map['forceSet'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      sources: pulumi.Output.create<List<DomainSource>>(pulumi.Input.decodeList<DomainSource>(map['sources'], (value) => DomainSource.fromMap((value as Map).cast<String, dynamic>()))),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

