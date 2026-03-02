// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_resource_proxy_type.dart';

/// Input properties used for looking up and filtering DomainResource resources.
class DomainResourceState {
  /// the mode of the Intelligent Protection policy.
  /// - watch: the Warning mode
  /// - defense: the Defense mode
  final pulumi.Input<String>? aiMode;
  /// the level of the Intelligent Protection policy.
  /// - level30: the Low level
  /// - level60: the Normal level
  /// - level90: the Strict level
  final pulumi.Input<String>? aiTemplate;
  /// ip blacklist
  final pulumi.Input<List<String>>? blackLists;
  /// The status of the blacklist and whitelist feature. Valid values:
  /// - 0: Disabled
  /// - 1: Enabled
  final pulumi.Input<int>? bwListEnable;
  /// CC safety protection switch.
  /// - 0: Disabled
  /// - 1: Enabled
  final pulumi.Input<String>? ccGlobalSwitch;
  /// The private key of the certificate that you want to associate. This parameter must be used together with the CertName and Cert parameters.
  ///
  /// > **NOTE:**   If you specify a value for the CertName, Cert, and Key parameters, you do not need to specify a value for the CertId parameter.
  final pulumi.Input<String>? cert;
  /// The name of the certificate.
  ///
  /// > **NOTE:**   You can specify the name of the certificate that you want to associate. From version 1.249.0, `cert_identifier` is in the "CertificateID-RegionId" format. For example, if the ID of the certificateId is `123`, and the region ID is `cn-hangzhou`, the value of the `cert_identifier` is `123-cn-hangzhou`.
  final pulumi.Input<String>? certIdentifier;
  /// The public key of the certificate that you want to associate. This parameter must be used together with the CertName and Key parameters.
  ///
  /// > **NOTE:**   If you specify a value for the CertName, Cert, and Key parameters, you do not need to specify a value for the CertId parameter.
  final pulumi.Input<String>? certName;
  /// The region of the certificate. `cn-hangzhou` and `ap-southeast-1` are supported. The default value is `cn-hangzhou`.
  final pulumi.Input<String>? certRegion;
  /// The CNAME address to query.
  final pulumi.Input<String>? cname;
  /// The key-value pair of the custom header. The key specifies the header name, and the value specifies the header value. You can specify up to five key-value pairs. The key-value pairs can be up to 200 characters in length.
  /// Take note of the following items:
  /// - Do not use the following default HTTP headers:
  /// - X-Forwarded-ClientSrcPort: This header is used to obtain the source ports of clients that access Anti-DDoS Proxy (a Layer 7 proxy).
  /// - X-Forwarded-ProxyPort: This header is used to obtain the ports of listeners that access Anti-DDoS Proxy (a Layer 7 proxy).
  /// - X-Forwarded-For: This header is used to obtain the IP addresses of clients that access Anti-DDoS Proxy (a Layer 7 proxy).
  /// - Do not use standard HTTP headers or specific widely used custom HTTP headers. The standard HTTP headers include Host, User-Agent, Connection, and Upgrade, and the widely used custom HTTP headers include X-Real-IP, X-True-IP, X-Client-IP, Web-Server-Type, WL-Proxy-Client-IP, eEagleEye-RpcID, EagleEye-TraceID, X-Forwarded-Cluster, and X-Forwarded-Proto. If the preceding headers are used, the original content of the headers is overwritten.
  final pulumi.Input<String>? customHeaders;
  /// The domain name for which you want to configure the Static Page Caching policy.
  ///
  /// > **NOTE:**  You can call the [DescribeDomains](https://www.alibabacloud.com/help/en/doc-detail/91724.html) operation to query all the domain names that are added to Anti-DDoS Pro or Anti-DDoS Premium.
  final pulumi.Input<String>? domain;
  /// The advanced HTTPS settings. This parameter takes effect only when the value of the `ProxyType` parameter includes `https`. The value is a string that consists of a JSON struct. The JSON struct contains the following fields:
  ///
  /// - `Http2https`: specifies whether to turn on Enforce HTTPS Routing. This field is optional and must be an integer. Valid values: `0` and `1`. The value 0 indicates that Enforce HTTPS Routing is turned off. The value 1 indicates that Enforce HTTPS Routing is turned on. The default value is 0.
  ///
  /// If your website supports both HTTP and HTTPS, this feature meets your business requirements. If you enable this feature, all HTTP requests to access the website are redirected to HTTPS requests on the standard port 443.
  ///
  /// - `Https2http`: specifies whether to turn on Enable HTTP. This field is optional and must be an integer. Valid values: `0` and `1`. The value 0 indicates that Enable HTTP is turned off. The value 1 indicates that Enable HTTP is turned on. The default value is 0.
  ///
  /// If your website does not support HTTPS, this feature meets your business requirements If this feature is enabled, all HTTPS requests are redirected to HTTP requests and forwarded to origin servers. This feature can redirect WebSockets requests to WebSocket requests. Requests are redirected over the standard port 80.
  ///
  /// - `Http2`: specifies whether to turn on Enable HTTP/2. This field is optional. Data type: integer. Valid values: `0` and `1`. The value 0 indicates that Enable HTTP/2 is turned off. The value 1 indicates that Enable HTTP/2 is turned on. The default value is 0.
  ///
  /// After you turn on the switch, HTTP/2 is used.
  final pulumi.Input<String>? httpsExt;
  /// InstanceIds
  final pulumi.Input<List<String>>? instanceIds;
  /// The globally unique ID of the certificate. The value is in the "Certificate ID-cn-hangzhou" format. For example, if the ID of the certificate is 123, the value of the CertIdentifier parameter is 123-cn-hangzhou.
  ///
  /// > **NOTE:**   You can specify only one of this parameter and the CertId parameter.
  final pulumi.Input<String>? key;
  /// Specifies whether to enable the OCSP feature. Valid values:
  final pulumi.Input<bool>? ocspEnabled;
  /// Protocol type and port number information. See `proxy_types` below.
  final pulumi.Input<List<DomainResourceProxyType>>? proxyTypes;
  /// Server address information of the source station.
  final pulumi.Input<List<String>>? realServers;
  /// The address type of the origin server. Valid values:
  final pulumi.Input<int>? rsType;
  /// IP whitelist list.
  final pulumi.Input<List<String>>? whiteLists;

  /// Creates a new [DomainResourceState].
  /// [aiMode] the mode of the Intelligent Protection policy.
  /// [aiTemplate] the level of the Intelligent Protection policy.
  /// [blackLists] ip blacklist
  /// [bwListEnable] The status of the blacklist and whitelist feature. Valid values:
  /// [ccGlobalSwitch] CC safety protection switch.
  /// [cert] The private key of the certificate that you want to associate. This parameter must be used together with the CertName and Cert parameters.
  /// [certIdentifier] The name of the certificate.
  /// [certName] The public key of the certificate that you want to associate. This parameter must be used together with the CertName and Key parameters.
  /// [certRegion] The region of the certificate. `cn-hangzhou` and `ap-southeast-1` are supported. The default value is `cn-hangzhou`.
  /// [cname] The CNAME address to query.
  /// [customHeaders] The key-value pair of the custom header. The key specifies the header name, and the value specifies the header value. You can specify up to five key-value pairs. The key-value pairs can be up to 200 characters in length.
  /// [domain] The domain name for which you want to configure the Static Page Caching policy.
  /// [httpsExt] The advanced HTTPS settings. This parameter takes effect only when the value of the `ProxyType` parameter includes `https`. The value is a string that consists of a JSON struct. The JSON struct contains the following fields:
  /// [instanceIds] InstanceIds
  /// [key] The globally unique ID of the certificate. The value is in the "Certificate ID-cn-hangzhou" format. For example, if the ID of the certificate is 123, the value of the CertIdentifier parameter is 123-cn-hangzhou.
  /// [ocspEnabled] Specifies whether to enable the OCSP feature. Valid values:
  /// [proxyTypes] Protocol type and port number information. See `proxy_types` below.
  /// [realServers] Server address information of the source station.
  /// [rsType] The address type of the origin server. Valid values:
  /// [whiteLists] IP whitelist list.
  DomainResourceState({
    this.aiMode,
    this.aiTemplate,
    this.blackLists,
    this.bwListEnable,
    this.ccGlobalSwitch,
    this.cert,
    this.certIdentifier,
    this.certName,
    this.certRegion,
    this.cname,
    this.customHeaders,
    this.domain,
    this.httpsExt,
    this.instanceIds,
    this.key,
    this.ocspEnabled,
    this.proxyTypes,
    this.realServers,
    this.rsType,
    this.whiteLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiMode': ?aiMode,
      'aiTemplate': ?aiTemplate,
      'blackLists': ?blackLists,
      'bwListEnable': ?bwListEnable,
      'ccGlobalSwitch': ?ccGlobalSwitch,
      'cert': ?cert,
      'certIdentifier': ?certIdentifier,
      'certName': ?certName,
      'certRegion': ?certRegion,
      'cname': ?cname,
      'customHeaders': ?customHeaders,
      'domain': ?domain,
      'httpsExt': ?httpsExt,
      'instanceIds': ?instanceIds,
      'key': ?key,
      'ocspEnabled': ?ocspEnabled,
      'proxyTypes': ?pulumi.Input.mapOptionalInputValue<List<DomainResourceProxyType>, List<Map<String, dynamic>>>(proxyTypes, (value) => pulumi.Input.encodeList<DomainResourceProxyType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'realServers': ?realServers,
      'rsType': ?rsType,
      'whiteLists': ?whiteLists,
    };
  }

  factory DomainResourceState.fromMap(Map<String, dynamic> map) {
    return DomainResourceState(
      aiMode: map['aiMode'] == null ? null : (map['aiMode'] as String).input(),
      aiTemplate: map['aiTemplate'] == null ? null : (map['aiTemplate'] as String).input(),
      blackLists: map['blackLists'] == null ? null : ((map['blackLists'] as List).cast<String>()).input(),
      bwListEnable: map['bwListEnable'] == null ? null : (map['bwListEnable'] as int).input(),
      ccGlobalSwitch: map['ccGlobalSwitch'] == null ? null : (map['ccGlobalSwitch'] as String).input(),
      cert: map['cert'] == null ? null : (map['cert'] as String).input(),
      certIdentifier: map['certIdentifier'] == null ? null : (map['certIdentifier'] as String).input(),
      certName: map['certName'] == null ? null : (map['certName'] as String).input(),
      certRegion: map['certRegion'] == null ? null : (map['certRegion'] as String).input(),
      cname: map['cname'] == null ? null : (map['cname'] as String).input(),
      customHeaders: map['customHeaders'] == null ? null : (map['customHeaders'] as String).input(),
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      httpsExt: map['httpsExt'] == null ? null : (map['httpsExt'] as String).input(),
      instanceIds: map['instanceIds'] == null ? null : ((map['instanceIds'] as List).cast<String>()).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      ocspEnabled: map['ocspEnabled'] == null ? null : (map['ocspEnabled'] as bool).input(),
      proxyTypes: map['proxyTypes'] == null ? null : (pulumi.Input.decodeList<DomainResourceProxyType>(map['proxyTypes'], (value) => DomainResourceProxyType.fromMap((value as Map).cast<String, dynamic>()))).input(),
      realServers: map['realServers'] == null ? null : ((map['realServers'] as List).cast<String>()).input(),
      rsType: map['rsType'] == null ? null : (map['rsType'] as int).input(),
      whiteLists: map['whiteLists'] == null ? null : ((map['whiteLists'] as List).cast<String>()).input(),
    );
  }
}

