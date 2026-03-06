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
  const DomainState({
    this.clusterType,
    this.cname,
    this.connectionTime,
    this.domain,
    this.domainName,
    this.http2Ports,
    this.httpPorts,
    this.httpToUserIp,
    this.httpsPorts,
    this.httpsRedirect,
    this.instanceId,
    this.isAccessProduct,
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
      clusterType: (() { final guardedValue = map['clusterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cname: (() { final guardedValue = map['cname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionTime: (() { final guardedValue = map['connectionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      http2Ports: (() { final guardedValue = map['http2Ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      httpPorts: (() { final guardedValue = map['httpPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      httpToUserIp: (() { final guardedValue = map['httpToUserIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsPorts: (() { final guardedValue = map['httpsPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      httpsRedirect: (() { final guardedValue = map['httpsRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isAccessProduct: (() { final guardedValue = map['isAccessProduct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancing: (() { final guardedValue = map['loadBalancing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logHeaders: (() { final guardedValue = map['logHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainLogHeader>(guardedValue, (value) => DomainLogHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      readTime: (() { final guardedValue = map['readTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceIps: (() { final guardedValue = map['sourceIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      writeTime: (() { final guardedValue = map['writeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

