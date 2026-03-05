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
    this.certId,
    this.certName,
    this.certRegion,
    this.certType,
    this.checkUrl,
    required this.domainName,
    this.env,
    this.functionType,
    this.resourceGroupId,
    this.scene,
    this.scope,
    this.sources,
    this.sslPri,
    this.sslProtocol,
    this.sslPub,
    this.status,
    this.tags,
    this.topLevelDomain,
  });

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
      certId: (() { final guardedValue = map['certId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certName: (() { final guardedValue = map['certName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certRegion: (() { final guardedValue = map['certRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certType: (() { final guardedValue = map['certType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      checkUrl: (() { final guardedValue = map['checkUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionType: (() { final guardedValue = map['functionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scene: (() { final guardedValue = map['scene']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainSource>(guardedValue, (value) => DomainSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sslPri: (() { final guardedValue = map['sslPri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslProtocol: (() { final guardedValue = map['sslProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslPub: (() { final guardedValue = map['sslPub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      topLevelDomain: (() { final guardedValue = map['topLevelDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

