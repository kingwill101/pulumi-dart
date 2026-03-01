// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_log_header.dart';

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  /// The type of the WAF cluster. Valid values: `PhysicalCluster` and `VirtualCluster`. Default to `PhysicalCluster`.
  final pulumi.Input<String>? clusterType;
  /// The CNAME record assigned by the WAF instance to the specified domain.
  final pulumi.Input<String>? cname;
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
  final pulumi.Input<String>? instanceId;
  /// Specifies whether to configure a Layer-7 proxy, such as Anti-DDoS Pro or CDN, to filter the inbound traffic before it is forwarded to WAF. Valid values: `On` and `Off`. Default to `Off`.
  final pulumi.Input<String>? isAccessProduct;
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

  /// Creates a new [DomainState].
  /// [clusterType] The type of the WAF cluster. Valid values: `PhysicalCluster` and `VirtualCluster`. Default to `PhysicalCluster`.
  /// [cname] The CNAME record assigned by the WAF instance to the specified domain.
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
  DomainState({
    pulumi.Output<String>? clusterType,
    pulumi.Output<String>? cname,
    pulumi.Output<int>? connectionTime,
    pulumi.Output<String>? domain,
    pulumi.Output<String>? domainName,
    pulumi.Output<List<String>>? http2Ports,
    pulumi.Output<List<String>>? httpPorts,
    pulumi.Output<String>? httpToUserIp,
    pulumi.Output<List<String>>? httpsPorts,
    pulumi.Output<String>? httpsRedirect,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? isAccessProduct,
    pulumi.Output<String>? loadBalancing,
    pulumi.Output<List<DomainLogHeader>>? logHeaders,
    pulumi.Output<int>? readTime,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<List<String>>? sourceIps,
    pulumi.Output<int>? writeTime,
  }) :
      clusterType = pulumi.Input.asOptionalInput<String>(clusterType),
      cname = pulumi.Input.asOptionalInput<String>(cname),
      connectionTime = pulumi.Input.asOptionalInput<int>(connectionTime),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      http2Ports = pulumi.Input.asOptionalInput<List<String>>(http2Ports),
      httpPorts = pulumi.Input.asOptionalInput<List<String>>(httpPorts),
      httpToUserIp = pulumi.Input.asOptionalInput<String>(httpToUserIp),
      httpsPorts = pulumi.Input.asOptionalInput<List<String>>(httpsPorts),
      httpsRedirect = pulumi.Input.asOptionalInput<String>(httpsRedirect),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      isAccessProduct = pulumi.Input.asOptionalInput<String>(isAccessProduct),
      loadBalancing = pulumi.Input.asOptionalInput<String>(loadBalancing),
      logHeaders = pulumi.Input.asOptionalInput<List<DomainLogHeader>>(logHeaders),
      readTime = pulumi.Input.asOptionalInput<int>(readTime),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      sourceIps = pulumi.Input.asOptionalInput<List<String>>(sourceIps),
      writeTime = pulumi.Input.asOptionalInput<int>(writeTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterType': ?clusterType,
      'cname': ?cname,
      'connectionTime': ?connectionTime,
      'domain': ?domain,
      'domainName': ?domainName,
      'http2Ports': ?http2Ports,
      'httpPorts': ?httpPorts,
      'httpToUserIp': ?httpToUserIp,
      'httpsPorts': ?httpsPorts,
      'httpsRedirect': ?httpsRedirect,
      'instanceId': ?instanceId,
      'isAccessProduct': ?isAccessProduct,
      'loadBalancing': ?loadBalancing,
      'logHeaders': ?pulumi.Input.mapOptionalInputValue<List<DomainLogHeader>, List<Map<String, dynamic>>>(logHeaders, (value) => pulumi.Input.encodeList<DomainLogHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readTime': ?readTime,
      'resourceGroupId': ?resourceGroupId,
      'sourceIps': ?sourceIps,
      'writeTime': ?writeTime,
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      clusterType: map['clusterType'] == null ? null : pulumi.Output.create<String>(map['clusterType'] as String),
      cname: map['cname'] == null ? null : pulumi.Output.create<String>(map['cname'] as String),
      connectionTime: map['connectionTime'] == null ? null : pulumi.Output.create<int>(map['connectionTime'] as int),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      http2Ports: map['http2Ports'] == null ? null : pulumi.Output.create<List<String>>((map['http2Ports'] as List).cast<String>()),
      httpPorts: map['httpPorts'] == null ? null : pulumi.Output.create<List<String>>((map['httpPorts'] as List).cast<String>()),
      httpToUserIp: map['httpToUserIp'] == null ? null : pulumi.Output.create<String>(map['httpToUserIp'] as String),
      httpsPorts: map['httpsPorts'] == null ? null : pulumi.Output.create<List<String>>((map['httpsPorts'] as List).cast<String>()),
      httpsRedirect: map['httpsRedirect'] == null ? null : pulumi.Output.create<String>(map['httpsRedirect'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      isAccessProduct: map['isAccessProduct'] == null ? null : pulumi.Output.create<String>(map['isAccessProduct'] as String),
      loadBalancing: map['loadBalancing'] == null ? null : pulumi.Output.create<String>(map['loadBalancing'] as String),
      logHeaders: map['logHeaders'] == null ? null : pulumi.Output.create<List<DomainLogHeader>>(pulumi.Input.decodeList<DomainLogHeader>(map['logHeaders'], (value) => DomainLogHeader.fromMap((value as Map).cast<String, dynamic>()))),
      readTime: map['readTime'] == null ? null : pulumi.Output.create<int>(map['readTime'] as int),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      sourceIps: map['sourceIps'] == null ? null : pulumi.Output.create<List<String>>((map['sourceIps'] as List).cast<String>()),
      writeTime: map['writeTime'] == null ? null : pulumi.Output.create<int>(map['writeTime'] as int),
    );
  }
}

