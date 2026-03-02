// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipa_domain_source.dart';

/// Input properties used for looking up and filtering IpaDomain resources.
class IpaDomainState {
  /// The domain name to be added to IPA. Wildcard domain names are supported. A wildcard domain name must start with a period (.).
  final pulumi.Input<String>? domainName;
  /// The ID of the resource group. If you do not set this parameter, the system automatically assigns the ID of the default resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The accelerated region. Valid values: `domestic`, `global`, `overseas`.
  final pulumi.Input<String>? scope;
  /// Sources. See `sources` below.
  final pulumi.Input<List<IpaDomainSource>>? sources;
  /// The status of DCDN Ipa Domain. Valid values: `online`, `offline`. Default to `online`.
  final pulumi.Input<String>? status;

  /// Creates a new [IpaDomainState].
  /// [domainName] The domain name to be added to IPA. Wildcard domain names are supported. A wildcard domain name must start with a period (.).
  /// [resourceGroupId] The ID of the resource group. If you do not set this parameter, the system automatically assigns the ID of the default resource group.
  /// [scope] The accelerated region. Valid values: `domestic`, `global`, `overseas`.
  /// [sources] Sources. See `sources` below.
  /// [status] The status of DCDN Ipa Domain. Valid values: `online`, `offline`. Default to `online`.
  IpaDomainState({
    this.domainName,
    this.resourceGroupId,
    this.scope,
    this.sources,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'resourceGroupId': ?resourceGroupId,
      'scope': ?scope,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<IpaDomainSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<IpaDomainSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
    };
  }

  factory IpaDomainState.fromMap(Map<String, dynamic> map) {
    return IpaDomainState(
      domainName: map['domainName'] == null ? null : (map['domainName']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      sources: map['sources'] == null ? null : (pulumi.Input.decodeList<IpaDomainSource>(map['sources']!, (value) => IpaDomainSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

