// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cert_info.dart';
import 'domain_source.dart';

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  /// Attribute perm has been deprecated and suggest removing it from your template.
  final pulumi.Input<String>? bizName;
  /// Certificate Information. See the following `Block cert_infos`.
  final pulumi.Input<List<DomainCertInfo>>? certInfos;
  /// The health check url.
  final pulumi.Input<String>? checkUrl;
  /// The name of domain.
  final pulumi.Input<String>? domainName;
  /// Whether to set certificate forcibly.
  final pulumi.Input<String>? forceSet;
  /// The resource group id.
  final pulumi.Input<String>? resourceGroupId;
  /// the Origin Server Information. See the following `Block sources`.
  final pulumi.Input<List<DomainSource>>? sources;
  /// The status of the resource. Valid values: `offline`, `online`.
  final pulumi.Input<String>? status;

  /// Creates a new [DomainState].
  /// [bizName] Attribute perm has been deprecated and suggest removing it from your template.
  /// [certInfos] Certificate Information. See the following `Block cert_infos`.
  /// [checkUrl] The health check url.
  /// [domainName] The name of domain.
  /// [forceSet] Whether to set certificate forcibly.
  /// [resourceGroupId] The resource group id.
  /// [sources] the Origin Server Information. See the following `Block sources`.
  /// [status] The status of the resource. Valid values: `offline`, `online`.
  const DomainState({
    this.bizName,
    this.certInfos,
    this.checkUrl,
    this.domainName,
    this.forceSet,
    this.resourceGroupId,
    this.sources,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bizName': ?bizName,
      'certInfos': ?pulumi.Input.mapOptionalInputValue<List<DomainCertInfo>, List<Map<String, dynamic>>>(certInfos, (value) => pulumi.Input.encodeList<DomainCertInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'checkUrl': ?checkUrl,
      'domainName': ?domainName,
      'forceSet': ?forceSet,
      'resourceGroupId': ?resourceGroupId,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<DomainSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<DomainSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      bizName: (() { final guardedValue = map['bizName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certInfos: (() { final guardedValue = map['certInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainCertInfo>(guardedValue, (value) => DomainCertInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      checkUrl: (() { final guardedValue = map['checkUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceSet: (() { final guardedValue = map['forceSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainSource>(guardedValue, (value) => DomainSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

