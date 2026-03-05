// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_new_certificate_config.dart';
import 'domain_new_source.dart';

/// Input properties used for looking up and filtering DomainNew resources.
class DomainNewState {
  /// Cdn type of the accelerated domain. Valid values are `web`, `download`, `video`.
  final pulumi.Input<String>? cdnType;
  /// Certificate configuration See `certificate_config` below.
  final pulumi.Input<DomainNewCertificateConfig>? certificateConfig;
  /// Health test URL.
  final pulumi.Input<String>? checkUrl;
  /// The CNAME domain name corresponding to the accelerated domain name.
  final pulumi.Input<String>? cname;
  /// Name of the accelerated domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  final pulumi.Input<String>? domainName;
  /// Whether to issue a certificate in grayscale. Value: staging: issued certificate in grayscale. Not passing or passing any other value is a formal certificate.
  final pulumi.Input<String>? env;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// Scope of the accelerated domain. Valid values are `domestic`, `overseas`, `global`. Default value is `domestic`. This parameter's setting is valid Only for the international users and domestic L3 and above users. Value:
  final pulumi.Input<String>? scope;
  /// The source address list of the accelerated domain. Defaults to null. See `sources` below.
  final pulumi.Input<List<DomainNewSource>>? sources;
  /// The status of the resource, valid values: `online`, `offline`.
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DomainNewState].
  /// [cdnType] Cdn type of the accelerated domain. Valid values are `web`, `download`, `video`.
  /// [certificateConfig] Certificate configuration See `certificate_config` below.
  /// [checkUrl] Health test URL.
  /// [cname] The CNAME domain name corresponding to the accelerated domain name.
  /// [domainName] Name of the accelerated domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  /// [env] Whether to issue a certificate in grayscale. Value: staging: issued certificate in grayscale. Not passing or passing any other value is a formal certificate.
  /// [resourceGroupId] The ID of the resource group.
  /// [scope] Scope of the accelerated domain. Valid values are `domestic`, `overseas`, `global`. Default value is `domestic`. This parameter's setting is valid Only for the international users and domestic L3 and above users. Value:
  /// [sources] The source address list of the accelerated domain. Defaults to null. See `sources` below.
  /// [status] The status of the resource, valid values: `online`, `offline`.
  /// [tags] The tag of the resource
  DomainNewState({
    this.cdnType,
    this.certificateConfig,
    this.checkUrl,
    this.cname,
    this.domainName,
    this.env,
    this.resourceGroupId,
    this.scope,
    this.sources,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnType': ?cdnType,
      'certificateConfig': ?pulumi.Input.mapOptionalInputValue<DomainNewCertificateConfig, Map<String, dynamic>>(certificateConfig, (value) => value.toMap()),
      'checkUrl': ?checkUrl,
      'cname': ?cname,
      'domainName': ?domainName,
      'env': ?env,
      'resourceGroupId': ?resourceGroupId,
      'scope': ?scope,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<DomainNewSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<DomainNewSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory DomainNewState.fromMap(Map<String, dynamic> map) {
    return DomainNewState(
      cdnType: (() { final guardedValue = map['cdnType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateConfig: (() { final guardedValue = map['certificateConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainNewCertificateConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      checkUrl: (() { final guardedValue = map['checkUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cname: (() { final guardedValue = map['cname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainNewSource>(guardedValue, (value) => DomainNewSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

