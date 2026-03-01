// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_source.dart';

/// {@template pulumi_dcdn_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_dcdn_domain_domain_args_doc}
class DomainArgs {
  /// The certificate ID. This parameter is required and valid only when `CertType` is set to `cas`. If you specify this parameter, an existing certificate is used.
  final pulumi.Input<String>? certId;
  /// The name of the new certificate. You can specify only one certificate name. This parameter is optional and valid only when `CertType` is set to `upload`.
  final pulumi.Input<String>? certName;
  /// The region of the SSL certificate. This parameter takes effect only when `CertType` is set to `cas`. Default value: **cn-hangzhou**. Valid values: **cn-hangzhou** and **ap-southeast-1**.
  final pulumi.Input<String>? certRegion;
  /// The certificate type.
  final pulumi.Input<String>? certType;
  /// The URL that is used for health checks.
  final pulumi.Input<String>? checkUrl;
  /// The accelerated domain name. You can specify multiple domain names and separate them with commas (,). You can specify up to 500 domain names in each request. The query results of multiple domain names are aggregated. If you do not specify this parameter, data of all accelerated domain names under your account is queried.
  final pulumi.Input<String> domainName;
  /// Specifies whether the certificate is issued in canary releases. If you set this parameter to `staging`, the certificate is issued in canary releases. If you do not specify this parameter or set this parameter to other values, the certificate is officially issued.
  final pulumi.Input<String>? env;
  /// Computing service type. Valid values:
  final pulumi.Input<String>? functionType;
  /// The ID of the resource group. If you do not specify a value for this parameter, the system automatically assigns the ID of the default resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The Acceleration scen. Supported:
  final pulumi.Input<String>? scene;
  /// The region where the acceleration service is deployed. Valid values:
  final pulumi.Input<String>? scope;
  /// Source  See `sources` below.
  final pulumi.Input<List<DomainSource>>? sources;
  /// The private key. Specify the private key only if you want to enable the SSL certificate.
  final pulumi.Input<String>? sslPri;
  /// Specifies whether to enable the SSL certificate. Valid values:
  final pulumi.Input<String>? sslProtocol;
  /// The content of the SSL certificate. Specify the content of the SSL certificate only if you want to enable the SSL certificate.
  final pulumi.Input<String>? sslPub;
  /// The status of the domain name. Valid values:
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The top-level domain.
  final pulumi.Input<String>? topLevelDomain;

  /// Creates a new [DomainArgs].
  /// [certId] The certificate ID. This parameter is required and valid only when `CertType` is set to `cas`. If you specify this parameter, an existing certificate is used.
  /// [certName] The name of the new certificate. You can specify only one certificate name. This parameter is optional and valid only when `CertType` is set to `upload`.
  /// [certRegion] The region of the SSL certificate. This parameter takes effect only when `CertType` is set to `cas`. Default value: **cn-hangzhou**. Valid values: **cn-hangzhou** and **ap-southeast-1**.
  /// [certType] The certificate type.
  /// [checkUrl] The URL that is used for health checks.
  /// [domainName] The accelerated domain name. You can specify multiple domain names and separate them with commas (,). You can specify up to 500 domain names in each request. The query results of multiple domain names are aggregated. If you do not specify this parameter, data of all accelerated domain names under your account is queried.
  /// [env] Specifies whether the certificate is issued in canary releases. If you set this parameter to `staging`, the certificate is issued in canary releases. If you do not specify this parameter or set this parameter to other values, the certificate is officially issued.
  /// [functionType] Computing service type. Valid values:
  /// [resourceGroupId] The ID of the resource group. If you do not specify a value for this parameter, the system automatically assigns the ID of the default resource group.
  /// [scene] The Acceleration scen. Supported:
  /// [scope] The region where the acceleration service is deployed. Valid values:
  /// [sources] Source  See `sources` below.
  /// [sslPri] The private key. Specify the private key only if you want to enable the SSL certificate.
  /// [sslProtocol] Specifies whether to enable the SSL certificate. Valid values:
  /// [sslPub] The content of the SSL certificate. Specify the content of the SSL certificate only if you want to enable the SSL certificate.
  /// [status] The status of the domain name. Valid values:
  /// [tags] The tag of the resource
  /// [topLevelDomain] The top-level domain.
  DomainArgs({
    pulumi.Output<String>? certId,
    pulumi.Output<String>? certName,
    pulumi.Output<String>? certRegion,
    pulumi.Output<String>? certType,
    pulumi.Output<String>? checkUrl,
    required pulumi.Output<String> domainName,
    pulumi.Output<String>? env,
    pulumi.Output<String>? functionType,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? scene,
    pulumi.Output<String>? scope,
    pulumi.Output<List<DomainSource>>? sources,
    pulumi.Output<String>? sslPri,
    pulumi.Output<String>? sslProtocol,
    pulumi.Output<String>? sslPub,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? topLevelDomain,
  }) :
      certId = pulumi.Input.asOptionalInput<String>(certId),
      certName = pulumi.Input.asOptionalInput<String>(certName),
      certRegion = pulumi.Input.asOptionalInput<String>(certRegion),
      certType = pulumi.Input.asOptionalInput<String>(certType),
      checkUrl = pulumi.Input.asOptionalInput<String>(checkUrl),
      domainName = pulumi.Input.asInput<String>(domainName),
      env = pulumi.Input.asOptionalInput<String>(env),
      functionType = pulumi.Input.asOptionalInput<String>(functionType),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      scene = pulumi.Input.asOptionalInput<String>(scene),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      sources = pulumi.Input.asOptionalInput<List<DomainSource>>(sources),
      sslPri = pulumi.Input.asOptionalInput<String>(sslPri),
      sslProtocol = pulumi.Input.asOptionalInput<String>(sslProtocol),
      sslPub = pulumi.Input.asOptionalInput<String>(sslPub),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      topLevelDomain = pulumi.Input.asOptionalInput<String>(topLevelDomain);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certId': ?certId,
      'certName': ?certName,
      'certRegion': ?certRegion,
      'certType': ?certType,
      'checkUrl': ?checkUrl,
      'domainName': domainName,
      'env': ?env,
      'functionType': ?functionType,
      'resourceGroupId': ?resourceGroupId,
      'scene': ?scene,
      'scope': ?scope,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<DomainSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<DomainSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sslPri': ?sslPri,
      'sslProtocol': ?sslProtocol,
      'sslPub': ?sslPub,
      'status': ?status,
      'tags': ?tags,
      'topLevelDomain': ?topLevelDomain,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      certId: map['certId'] == null ? null : pulumi.Output.create<String>(map['certId'] as String),
      certName: map['certName'] == null ? null : pulumi.Output.create<String>(map['certName'] as String),
      certRegion: map['certRegion'] == null ? null : pulumi.Output.create<String>(map['certRegion'] as String),
      certType: map['certType'] == null ? null : pulumi.Output.create<String>(map['certType'] as String),
      checkUrl: map['checkUrl'] == null ? null : pulumi.Output.create<String>(map['checkUrl'] as String),
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      env: map['env'] == null ? null : pulumi.Output.create<String>(map['env'] as String),
      functionType: map['functionType'] == null ? null : pulumi.Output.create<String>(map['functionType'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      scene: map['scene'] == null ? null : pulumi.Output.create<String>(map['scene'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      sources: map['sources'] == null ? null : pulumi.Output.create<List<DomainSource>>(pulumi.Input.decodeList<DomainSource>(map['sources'], (value) => DomainSource.fromMap((value as Map).cast<String, dynamic>()))),
      sslPri: map['sslPri'] == null ? null : pulumi.Output.create<String>(map['sslPri'] as String),
      sslProtocol: map['sslProtocol'] == null ? null : pulumi.Output.create<String>(map['sslProtocol'] as String),
      sslPub: map['sslPub'] == null ? null : pulumi.Output.create<String>(map['sslPub'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      topLevelDomain: map['topLevelDomain'] == null ? null : pulumi.Output.create<String>(map['topLevelDomain'] as String),
    );
  }
}

