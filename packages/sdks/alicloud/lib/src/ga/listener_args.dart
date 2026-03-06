// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_certificate.dart';
import 'listener_forwarded_for_config.dart';
import 'listener_port_range.dart';

/// {@template pulumi_ga_listener_listener_args_doc}
/// The set of arguments for Listener.
/// {@endtemplate}
/// {@macro pulumi_ga_listener_listener_args_doc}
class ListenerArgs {
  /// The accelerator id.
  final pulumi.Input<String> acceleratorId;
  /// The certificates of the listener. See `certificates` below.
  /// &gt; **NOTE:** This parameter needs to be configured only for monitoring of the `HTTPS` protocol.
  final pulumi.Input<List<ListenerCertificate>>? certificates;
  /// The clientAffinity of the listener. Default value: `NONE`. Valid values:
  /// - `NONE`: client affinity is not maintained, that is, connection requests from the same client cannot always be directed to the same terminal node.
  /// - `SOURCE_IP`: maintain client affinity. When a client accesses a stateful application, all requests from the same client can be directed to the same terminal node, regardless of the source port and protocol.
  final pulumi.Input<String>? clientAffinity;
  /// The description of the listener.
  final pulumi.Input<String>? description;
  /// The XForward headers. See `forwarded_for_config` below.
  final pulumi.Input<ListenerForwardedForConfig>? forwardedForConfig;
  /// The maximum version of the HTTP protocol. Default Value: `http2`. Valid values: `http1.1`, `http2`, `http3`.
  /// &gt; **NOTE:** `http_version` is only valid when `protocol` is `HTTPS`.
  final pulumi.Input<String>? httpVersion;
  /// The timeout period of idle connections. Unit: seconds. Valid values:
  /// - If you set `protocol` to `TCP`. Default Value: `900`. Valid values: `10` to `900`.
  /// - If you set `protocol` to `UDP`. Default Value: `20`. Valid values: `10` to `20`.
  /// - If you set `protocol` to `HTTP` or `HTTPS`. Default Value: `15`. Valid values: `1` to `60`.
  final pulumi.Input<int>? idleTimeout;
  /// The routing type of the listener. Default Value: `Standard`. Valid values:
  /// - `Standard`: intelligent routing.
  /// - `CustomRouting`: custom routing.
  final pulumi.Input<String>? listenerType;
  /// The name of the listener. The length of the name is 2-128 characters. It starts with uppercase and lowercase letters or Chinese characters. It can contain numbers and underscores and dashes.
  final pulumi.Input<String>? name;
  /// The portRanges of the listener. See `port_ranges` below.
  /// &gt; **NOTE:** For `HTTP` or `HTTPS` protocol monitoring, only one monitoring port can be configured, that is, the start monitoring port and end monitoring port should be the same.
  final pulumi.Input<List<ListenerPortRange>> portRanges;
  /// Type of network transport protocol monitored. Default value: `TCP`. Valid values: `TCP`, `UDP`, `HTTP`, `HTTPS`.
  final pulumi.Input<String>? protocol;
  /// The proxy protocol of the listener. Default value: `false`. Valid values:
  final pulumi.Input<bool>? proxyProtocol;
  /// The timeout period for HTTP or HTTPS requests. Unit: seconds. Default Value: `60`. Valid values: `1` to `180`.
  /// &gt; **NOTE:** `request_timeout` is only valid when `protocol` is `HTTP` or `HTTPS`.
  final pulumi.Input<int>? requestTimeout;
  /// The ID of the security policy. **NOTE:** Only `HTTPS` listeners support this parameter. Valid values:
  final pulumi.Input<String>? securityPolicyId;

  /// Creates a new [ListenerArgs].
  /// [acceleratorId] The accelerator id.
  /// [certificates] The certificates of the listener. See `certificates` below.
  /// [clientAffinity] The clientAffinity of the listener. Default value: `NONE`. Valid values:
  /// [description] The description of the listener.
  /// [forwardedForConfig] The XForward headers. See `forwarded_for_config` below.
  /// [httpVersion] The maximum version of the HTTP protocol. Default Value: `http2`. Valid values: `http1.1`, `http2`, `http3`.
  /// [idleTimeout] The timeout period of idle connections. Unit: seconds. Valid values:
  /// [listenerType] The routing type of the listener. Default Value: `Standard`. Valid values:
  /// [name] The name of the listener. The length of the name is 2-128 characters. It starts with uppercase and lowercase letters or Chinese characters. It can contain numbers and underscores and dashes.
  /// [portRanges] The portRanges of the listener. See `port_ranges` below.
  /// [protocol] Type of network transport protocol monitored. Default value: `TCP`. Valid values: `TCP`, `UDP`, `HTTP`, `HTTPS`.
  /// [proxyProtocol] The proxy protocol of the listener. Default value: `false`. Valid values:
  /// [requestTimeout] The timeout period for HTTP or HTTPS requests. Unit: seconds. Default Value: `60`. Valid values: `1` to `180`.
  /// [securityPolicyId] The ID of the security policy. **NOTE:** Only `HTTPS` listeners support this parameter. Valid values:
  const ListenerArgs({
    required this.acceleratorId,
    this.certificates,
    this.clientAffinity,
    this.description,
    this.forwardedForConfig,
    this.httpVersion,
    this.idleTimeout,
    this.listenerType,
    this.name,
    required this.portRanges,
    this.protocol,
    this.proxyProtocol,
    this.requestTimeout,
    this.securityPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'certificates': ?pulumi.Input.mapOptionalInputValue<List<ListenerCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<ListenerCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientAffinity': ?clientAffinity,
      'description': ?description,
      'forwardedForConfig': ?pulumi.Input.mapOptionalInputValue<ListenerForwardedForConfig, Map<String, dynamic>>(forwardedForConfig, (value) => value.toMap()),
      'httpVersion': ?httpVersion,
      'idleTimeout': ?idleTimeout,
      'listenerType': ?listenerType,
      'name': ?name,
      'portRanges': pulumi.Input.mapInputValue<List<ListenerPortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<ListenerPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': ?protocol,
      'proxyProtocol': ?proxyProtocol,
      'requestTimeout': ?requestTimeout,
      'securityPolicyId': ?securityPolicyId,
    };
  }

  factory ListenerArgs.fromMap(Map<String, dynamic> map) {
    return ListenerArgs(
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ListenerCertificate>(guardedValue, (value) => ListenerCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clientAffinity: (() { final guardedValue = map['clientAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardedForConfig: (() { final guardedValue = map['forwardedForConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListenerForwardedForConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpVersion: (() { final guardedValue = map['httpVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idleTimeout: (() { final guardedValue = map['idleTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      listenerType: (() { final guardedValue = map['listenerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<ListenerPortRange>(map['portRanges']!, (value) => ListenerPortRange.fromMap((value as Map).cast<String, dynamic>()))),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyProtocol: (() { final guardedValue = map['proxyProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requestTimeout: (() { final guardedValue = map['requestTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      securityPolicyId: (() { final guardedValue = map['securityPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

