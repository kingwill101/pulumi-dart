// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_log_header.dart';

/// {@template pulumi_waf_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_waf_domain_domain_args_doc}
class DomainArgs {
  /// The type of the WAF cluster. Valid values: `PhysicalCluster` and `VirtualCluster`. Default to `PhysicalCluster`.
  final pulumi.Input<String>? clusterType;
  /// The connection timeout for WAF exclusive clusters. Unit: seconds.
  final pulumi.Input<int>? connectionTime;
  /// Field `domain` has been deprecated from version 1.94.0. Use `domain_name` instead.
  final pulumi.Input<String>? domain;
  /// The domain that you want to add to WAF. The `domain_name` is required when the value of the `domain`  is Empty.
  final pulumi.Input<String>? domainName;
  /// List of the HTTP 2.0 ports.
  final pulumi.Input<List<String>>? http2Ports;
  /// List of the HTTP ports.
  final pulumi.Input<List<String>>? httpPorts;
  /// Specifies whether to enable the HTTP back-to-origin feature. After this feature is enabled, the WAF instance can use HTTP to forward HTTPS requests to the origin server.
  /// By default, port 80 is used to forward the requests to the origin server. Valid values: `On` and `Off`. Default to `Off`.
  final pulumi.Input<String>? httpToUserIp;
  /// List of the HTTPS ports.
  final pulumi.Input<List<String>>? httpsPorts;
  /// Specifies whether to redirect HTTP requests as HTTPS requests. Valid values: "On" and `Off`. Default to `Off`.
  final pulumi.Input<String>? httpsRedirect;
  /// The ID of the WAF instance.
  final pulumi.Input<String> instanceId;
  /// Specifies whether to configure a Layer-7 proxy, such as Anti-DDoS Pro or CDN, to filter the inbound traffic before it is forwarded to WAF. Valid values: `On` and `Off`. Default to `Off`.
  final pulumi.Input<String> isAccessProduct;
  /// The load balancing algorithm that is used to forward requests to the origin. Valid values: `IpHash` and `RoundRobin`. Default to `IpHash`.
  final pulumi.Input<String>? loadBalancing;
  /// The key-value pair that is used to mark the traffic that flows through WAF to the domain. Each item contains two field:
  /// * key: The key of label
  /// * value: The value of label
  final pulumi.Input<List<DomainLogHeader>>? logHeaders;
  /// The read timeout of a WAF exclusive cluster. Unit: seconds.
  final pulumi.Input<int>? readTime;
  /// The ID of the resource group to which the queried domain belongs in Resource Management. By default, no value is specified, indicating that the domain belongs to the default resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// List of the IP address or domain of the origin server to which the specified domain points.
  final pulumi.Input<List<String>>? sourceIps;
  /// The timeout period for a WAF exclusive cluster write connection. Unit: seconds.
  final pulumi.Input<int>? writeTime;

  /// Creates a new [DomainArgs].
  /// [clusterType] The type of the WAF cluster. Valid values: `PhysicalCluster` and `VirtualCluster`. Default to `PhysicalCluster`.
  /// [connectionTime] The connection timeout for WAF exclusive clusters. Unit: seconds.
  /// [domain] Field `domain` has been deprecated from version 1.94.0. Use `domain_name` instead.
  /// [domainName] The domain that you want to add to WAF. The `domain_name` is required when the value of the `domain`  is Empty.
  /// [http2Ports] List of the HTTP 2.0 ports.
  /// [httpPorts] List of the HTTP ports.
  /// [httpToUserIp] Specifies whether to enable the HTTP back-to-origin feature. After this feature is enabled, the WAF instance can use HTTP to forward HTTPS requests to the origin server.
  /// [httpsPorts] List of the HTTPS ports.
  /// [httpsRedirect] Specifies whether to redirect HTTP requests as HTTPS requests. Valid values: "On" and `Off`. Default to `Off`.
  /// [instanceId] The ID of the WAF instance.
  /// [isAccessProduct] Specifies whether to configure a Layer-7 proxy, such as Anti-DDoS Pro or CDN, to filter the inbound traffic before it is forwarded to WAF. Valid values: `On` and `Off`. Default to `Off`.
  /// [loadBalancing] The load balancing algorithm that is used to forward requests to the origin. Valid values: `IpHash` and `RoundRobin`. Default to `IpHash`.
  /// [logHeaders] The key-value pair that is used to mark the traffic that flows through WAF to the domain. Each item contains two field:
  /// [readTime] The read timeout of a WAF exclusive cluster. Unit: seconds.
  /// [resourceGroupId] The ID of the resource group to which the queried domain belongs in Resource Management. By default, no value is specified, indicating that the domain belongs to the default resource group.
  /// [sourceIps] List of the IP address or domain of the origin server to which the specified domain points.
  /// [writeTime] The timeout period for a WAF exclusive cluster write connection. Unit: seconds.
  DomainArgs({
    this.clusterType,
    this.connectionTime,
    this.domain,
    this.domainName,
    this.http2Ports,
    this.httpPorts,
    this.httpToUserIp,
    this.httpsPorts,
    this.httpsRedirect,
    required this.instanceId,
    required this.isAccessProduct,
    this.loadBalancing,
    this.logHeaders,
    this.readTime,
    this.resourceGroupId,
    this.sourceIps,
    this.writeTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterType': ?clusterType,
      'connectionTime': ?connectionTime,
      'domain': ?domain,
      'domainName': ?domainName,
      'http2Ports': ?http2Ports,
      'httpPorts': ?httpPorts,
      'httpToUserIp': ?httpToUserIp,
      'httpsPorts': ?httpsPorts,
      'httpsRedirect': ?httpsRedirect,
      'instanceId': instanceId,
      'isAccessProduct': isAccessProduct,
      'loadBalancing': ?loadBalancing,
      'logHeaders': ?pulumi.Input.mapOptionalInputValue<List<DomainLogHeader>, List<Map<String, dynamic>>>(logHeaders, (value) => pulumi.Input.encodeList<DomainLogHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readTime': ?readTime,
      'resourceGroupId': ?resourceGroupId,
      'sourceIps': ?sourceIps,
      'writeTime': ?writeTime,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      clusterType: map['clusterType'] == null ? null : (map['clusterType']! as String).input(),
      connectionTime: map['connectionTime'] == null ? null : (map['connectionTime']! as int).input(),
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName']! as String).input(),
      http2Ports: map['http2Ports'] == null ? null : ((map['http2Ports']! as List).cast<String>()).input(),
      httpPorts: map['httpPorts'] == null ? null : ((map['httpPorts']! as List).cast<String>()).input(),
      httpToUserIp: map['httpToUserIp'] == null ? null : (map['httpToUserIp']! as String).input(),
      httpsPorts: map['httpsPorts'] == null ? null : ((map['httpsPorts']! as List).cast<String>()).input(),
      httpsRedirect: map['httpsRedirect'] == null ? null : (map['httpsRedirect']! as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      isAccessProduct: (map['isAccessProduct'] as String).input(),
      loadBalancing: map['loadBalancing'] == null ? null : (map['loadBalancing']! as String).input(),
      logHeaders: map['logHeaders'] == null ? null : (pulumi.Input.decodeList<DomainLogHeader>(map['logHeaders']!, (value) => DomainLogHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      readTime: map['readTime'] == null ? null : (map['readTime']! as int).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      sourceIps: map['sourceIps'] == null ? null : ((map['sourceIps']! as List).cast<String>()).input(),
      writeTime: map['writeTime'] == null ? null : (map['writeTime']! as int).input(),
    );
  }
}

