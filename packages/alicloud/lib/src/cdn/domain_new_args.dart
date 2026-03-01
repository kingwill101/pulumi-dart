// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_new_certificate_config.dart';
import 'domain_new_source.dart';

/// {@template pulumi_cdn_domain_new_domain_new_args_doc}
/// The set of arguments for DomainNew.
/// {@endtemplate}
/// {@macro pulumi_cdn_domain_new_domain_new_args_doc}
class DomainNewArgs {
  /// Cdn type of the accelerated domain. Valid values are `web`, `download`, `video`.
  final pulumi.Input<String> cdnType;
  /// Certificate configuration See `certificate_config` below.
  final pulumi.Input<DomainNewCertificateConfig>? certificateConfig;
  /// Health test URL.
  final pulumi.Input<String>? checkUrl;
  /// Name of the accelerated domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  final pulumi.Input<String> domainName;
  /// Whether to issue a certificate in grayscale. Value: staging: issued certificate in grayscale. Not passing or passing any other value is a formal certificate.
  final pulumi.Input<String>? env;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// Scope of the accelerated domain. Valid values are `domestic`, `overseas`, `global`. Default value is `domestic`. This parameter's setting is valid Only for the international users and domestic L3 and above users. Value:
  final pulumi.Input<String>? scope;
  /// The source address list of the accelerated domain. Defaults to null. See `sources` below.
  final pulumi.Input<List<DomainNewSource>> sources;
  /// The status of the resource, valid values: `online`, `offline`.
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DomainNewArgs].
  /// [cdnType] Cdn type of the accelerated domain. Valid values are `web`, `download`, `video`.
  /// [certificateConfig] Certificate configuration See `certificate_config` below.
  /// [checkUrl] Health test URL.
  /// [domainName] Name of the accelerated domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  /// [env] Whether to issue a certificate in grayscale. Value: staging: issued certificate in grayscale. Not passing or passing any other value is a formal certificate.
  /// [resourceGroupId] The ID of the resource group.
  /// [scope] Scope of the accelerated domain. Valid values are `domestic`, `overseas`, `global`. Default value is `domestic`. This parameter's setting is valid Only for the international users and domestic L3 and above users. Value:
  /// [sources] The source address list of the accelerated domain. Defaults to null. See `sources` below.
  /// [status] The status of the resource, valid values: `online`, `offline`.
  /// [tags] The tag of the resource
  DomainNewArgs({
    required String cdnType,
    DomainNewCertificateConfig? certificateConfig,
    String? checkUrl,
    required String domainName,
    String? env,
    String? resourceGroupId,
    String? scope,
    required List<DomainNewSource> sources,
    String? status,
    Map<String, String>? tags,
  }) :
      cdnType = pulumi.Input.asInput<String>(cdnType),
      certificateConfig = pulumi.Input.asOptionalInput<DomainNewCertificateConfig>(certificateConfig),
      checkUrl = pulumi.Input.asOptionalInput<String>(checkUrl),
      domainName = pulumi.Input.asInput<String>(domainName),
      env = pulumi.Input.asOptionalInput<String>(env),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      sources = pulumi.Input.asInput<List<DomainNewSource>>(sources),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnType': cdnType,
      'certificateConfig': ?pulumi.Input.mapOptionalInputValue<DomainNewCertificateConfig, Map<String, dynamic>>(certificateConfig, (value) => value.toMap()),
      'checkUrl': ?checkUrl,
      'domainName': domainName,
      'env': ?env,
      'resourceGroupId': ?resourceGroupId,
      'scope': ?scope,
      'sources': pulumi.Input.mapInputValue<List<DomainNewSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<DomainNewSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory DomainNewArgs.fromMap(Map<String, dynamic> map) {
    return DomainNewArgs(
      cdnType: map['cdnType'] as String,
      certificateConfig: map['certificateConfig'] == null ? null : DomainNewCertificateConfig.fromMap((map['certificateConfig'] as Map).cast<String, dynamic>()),
      checkUrl: map['checkUrl'] == null ? null : map['checkUrl'] as String,
      domainName: map['domainName'] as String,
      env: map['env'] == null ? null : map['env'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      sources: pulumi.Input.decodeList<DomainNewSource>(map['sources'], (value) => DomainNewSource.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

