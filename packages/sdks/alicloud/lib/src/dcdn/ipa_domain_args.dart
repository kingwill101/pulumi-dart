// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipa_domain_source.dart';

/// {@template pulumi_dcdn_ipa_domain_ipa_domain_args_doc}
/// The set of arguments for IpaDomain.
/// {@endtemplate}
/// {@macro pulumi_dcdn_ipa_domain_ipa_domain_args_doc}
class IpaDomainArgs {
  /// The domain name to be added to IPA. Wildcard domain names are supported. A wildcard domain name must start with a period (.).
  final pulumi.Input<String> domainName;
  /// The ID of the resource group. If you do not set this parameter, the system automatically assigns the ID of the default resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The accelerated region. Valid values: `domestic`, `global`, `overseas`.
  final pulumi.Input<String>? scope;
  /// Sources. See `sources` below.
  final pulumi.Input<List<IpaDomainSource>> sources;
  /// The status of DCDN Ipa Domain. Valid values: `online`, `offline`. Default to `online`.
  final pulumi.Input<String>? status;

  /// Creates a new [IpaDomainArgs].
  /// [domainName] The domain name to be added to IPA. Wildcard domain names are supported. A wildcard domain name must start with a period (.).
  /// [resourceGroupId] The ID of the resource group. If you do not set this parameter, the system automatically assigns the ID of the default resource group.
  /// [scope] The accelerated region. Valid values: `domestic`, `global`, `overseas`.
  /// [sources] Sources. See `sources` below.
  /// [status] The status of DCDN Ipa Domain. Valid values: `online`, `offline`. Default to `online`.
  const IpaDomainArgs({
    required this.domainName,
    this.resourceGroupId,
    this.scope,
    required this.sources,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'resourceGroupId': ?resourceGroupId,
      'scope': ?scope,
      'sources': pulumi.Input.mapInputValue<List<IpaDomainSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<IpaDomainSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
    };
  }

  factory IpaDomainArgs.fromMap(Map<String, dynamic> map) {
    return IpaDomainArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sources: pulumi.Input.fromValue(pulumi.Input.decodeList<IpaDomainSource>(map['sources']!, (value) => IpaDomainSource.fromMap((value as Map).cast<String, dynamic>()))),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

