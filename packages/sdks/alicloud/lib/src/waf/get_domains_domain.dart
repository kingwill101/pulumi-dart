// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_domain_log_header.dart';

class GetDomainsDomain {
  /// The type of the WAF cluster.
  final pulumi.Input<String> clusterType;
  /// The CNAME record assigned by the WAF instance to the specified domain.
  final pulumi.Input<String> cname;
  /// The connection timeout for WAF exclusive clusters. Valid values: `PhysicalCluster` and `VirtualCluster`. Default to `PhysicalCluster`.
  final pulumi.Input<int> connectionTime;
  /// Field `domain` has been deprecated from version 1.94.0. Use `domain_name` instead.
  final pulumi.Input<String> domain;
  /// Name of the domain.
  final pulumi.Input<String> domainName;
  /// List of the HTTP 2.0 ports.
  final pulumi.Input<List<String>> http2Ports;
  /// List of the HTTP ports.
  final pulumi.Input<List<String>> httpPorts;
  /// Specifies whether to enable the HTTP back-to-origin feature. After this feature is enabled, the WAF instance can use HTTP to forward HTTPS requests to the origin server.
  final pulumi.Input<String> httpToUserIp;
  /// List of the HTTPS ports.
  final pulumi.Input<List<String>> httpsPorts;
  /// Specifies whether to redirect HTTP requests as HTTPS requests. Valid values: `On` and `Off`. Default to `Off`.
  final pulumi.Input<String> httpsRedirect;
  /// The ID of domain self ID, value as `domain_name`.
  final pulumi.Input<String> id;
  /// Specifies whether to configure a Layer-7 proxy, such as Anti-DDoS Pro or CDN, to filter the inbound traffic before it is forwarded to WAF. Valid values: `On` and "Off". Default to `Off`.
  final pulumi.Input<String> isAccessProduct;
  /// The load balancing algorithm that is used to forward requests to the origin. Valid values: `IpHash` and `RoundRobin`. Default to `IpHash`.
  final pulumi.Input<String> loadBalancing;
  /// The key-value pair that is used to mark the traffic that flows through WAF to the domain. Each item contains two field:
  final pulumi.Input<List<GetDomainsDomainLogHeader>> logHeaders;
  /// The read timeout of a WAF exclusive cluster. Unit: seconds.
  final pulumi.Input<int> readTime;
  /// The ID of the resource group to which the queried domain belongs in Resource Management.
  final pulumi.Input<String> resourceGroupId;
  /// List of the IP address or domain of the origin server to which the specified domain points.
  final pulumi.Input<List<String>> sourceIps;
  /// The system data identifier that is used to control optimistic locking.
  final pulumi.Input<int> version;
  /// The timeout period for a WAF exclusive cluster write connection. Unit: seconds.
  final pulumi.Input<int> writeTime;

  /// Creates a new [GetDomainsDomain].
  /// [clusterType] The type of the WAF cluster.
  /// [cname] The CNAME record assigned by the WAF instance to the specified domain.
  /// [connectionTime] The connection timeout for WAF exclusive clusters. Valid values: `PhysicalCluster` and `VirtualCluster`. Default to `PhysicalCluster`.
  /// [domain] Field `domain` has been deprecated from version 1.94.0. Use `domain_name` instead.
  /// [domainName] Name of the domain.
  /// [http2Ports] List of the HTTP 2.0 ports.
  /// [httpPorts] List of the HTTP ports.
  /// [httpToUserIp] Specifies whether to enable the HTTP back-to-origin feature. After this feature is enabled, the WAF instance can use HTTP to forward HTTPS requests to the origin server.
  /// [httpsPorts] List of the HTTPS ports.
  /// [httpsRedirect] Specifies whether to redirect HTTP requests as HTTPS requests. Valid values: `On` and `Off`. Default to `Off`.
  /// [id] The ID of domain self ID, value as `domain_name`.
  /// [isAccessProduct] Specifies whether to configure a Layer-7 proxy, such as Anti-DDoS Pro or CDN, to filter the inbound traffic before it is forwarded to WAF. Valid values: `On` and "Off". Default to `Off`.
  /// [loadBalancing] The load balancing algorithm that is used to forward requests to the origin. Valid values: `IpHash` and `RoundRobin`. Default to `IpHash`.
  /// [logHeaders] The key-value pair that is used to mark the traffic that flows through WAF to the domain. Each item contains two field:
  /// [readTime] The read timeout of a WAF exclusive cluster. Unit: seconds.
  /// [resourceGroupId] The ID of the resource group to which the queried domain belongs in Resource Management.
  /// [sourceIps] List of the IP address or domain of the origin server to which the specified domain points.
  /// [version] The system data identifier that is used to control optimistic locking.
  /// [writeTime] The timeout period for a WAF exclusive cluster write connection. Unit: seconds.
  GetDomainsDomain({
    required this.clusterType,
    required this.cname,
    required this.connectionTime,
    required this.domain,
    required this.domainName,
    required this.http2Ports,
    required this.httpPorts,
    required this.httpToUserIp,
    required this.httpsPorts,
    required this.httpsRedirect,
    required this.id,
    required this.isAccessProduct,
    required this.loadBalancing,
    required this.logHeaders,
    required this.readTime,
    required this.resourceGroupId,
    required this.sourceIps,
    required this.version,
    required this.writeTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterType': clusterType,
      'cname': cname,
      'connectionTime': connectionTime,
      'domain': domain,
      'domainName': domainName,
      'http2Ports': http2Ports,
      'httpPorts': httpPorts,
      'httpToUserIp': httpToUserIp,
      'httpsPorts': httpsPorts,
      'httpsRedirect': httpsRedirect,
      'id': id,
      'isAccessProduct': isAccessProduct,
      'loadBalancing': loadBalancing,
      'logHeaders': pulumi.Input.mapInputValue<List<GetDomainsDomainLogHeader>, List<Map<String, dynamic>>>(logHeaders, (value) => pulumi.Input.encodeList<GetDomainsDomainLogHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readTime': readTime,
      'resourceGroupId': resourceGroupId,
      'sourceIps': sourceIps,
      'version': version,
      'writeTime': writeTime,
    };
  }

  factory GetDomainsDomain.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomain(
      clusterType: (map['clusterType'] as String).input(),
      cname: (map['cname'] as String).input(),
      connectionTime: (map['connectionTime'] as int).input(),
      domain: (map['domain'] as String).input(),
      domainName: (map['domainName'] as String).input(),
      http2Ports: ((map['http2Ports'] as List).cast<String>()).input(),
      httpPorts: ((map['httpPorts'] as List).cast<String>()).input(),
      httpToUserIp: (map['httpToUserIp'] as String).input(),
      httpsPorts: ((map['httpsPorts'] as List).cast<String>()).input(),
      httpsRedirect: (map['httpsRedirect'] as String).input(),
      id: (map['id'] as String).input(),
      isAccessProduct: (map['isAccessProduct'] as String).input(),
      loadBalancing: (map['loadBalancing'] as String).input(),
      logHeaders: (pulumi.Input.decodeList<GetDomainsDomainLogHeader>(map['logHeaders'], (value) => GetDomainsDomainLogHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      readTime: (map['readTime'] as int).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      sourceIps: ((map['sourceIps'] as List).cast<String>()).input(),
      version: (map['version'] as int).input(),
      writeTime: (map['writeTime'] as int).input(),
    );
  }
}

