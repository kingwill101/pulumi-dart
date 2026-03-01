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
    pulumi.Output<String>? cdnType,
    pulumi.Output<DomainNewCertificateConfig>? certificateConfig,
    pulumi.Output<String>? checkUrl,
    pulumi.Output<String>? cname,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? env,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? scope,
    pulumi.Output<List<DomainNewSource>>? sources,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      cdnType = pulumi.Input.asOptionalInput<String>(cdnType),
      certificateConfig = pulumi.Input.asOptionalInput<DomainNewCertificateConfig>(certificateConfig),
      checkUrl = pulumi.Input.asOptionalInput<String>(checkUrl),
      cname = pulumi.Input.asOptionalInput<String>(cname),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      env = pulumi.Input.asOptionalInput<String>(env),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      sources = pulumi.Input.asOptionalInput<List<DomainNewSource>>(sources),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      cdnType: map['cdnType'] == null ? null : pulumi.Output.create<String>(map['cdnType'] as String),
      certificateConfig: map['certificateConfig'] == null ? null : pulumi.Output.create<DomainNewCertificateConfig>(DomainNewCertificateConfig.fromMap((map['certificateConfig'] as Map).cast<String, dynamic>())),
      checkUrl: map['checkUrl'] == null ? null : pulumi.Output.create<String>(map['checkUrl'] as String),
      cname: map['cname'] == null ? null : pulumi.Output.create<String>(map['cname'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      env: map['env'] == null ? null : pulumi.Output.create<String>(map['env'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      sources: map['sources'] == null ? null : pulumi.Output.create<List<DomainNewSource>>(pulumi.Input.decodeList<DomainNewSource>(map['sources'], (value) => DomainNewSource.fromMap((value as Map).cast<String, dynamic>()))),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

