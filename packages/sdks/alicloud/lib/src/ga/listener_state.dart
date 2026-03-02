// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_certificate.dart';
import 'listener_forwarded_for_config.dart';
import 'listener_port_range.dart';

/// Input properties used for looking up and filtering Listener resources.
class ListenerState {
  /// The accelerator id.
  final pulumi.Input<String>? acceleratorId;
  /// The certificates of the listener. See `certificates` below.
  /// > **NOTE:** This parameter needs to be configured only for monitoring of the `HTTPS` protocol.
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
  /// > **NOTE:** `http_version` is only valid when `protocol` is `HTTPS`.
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
  /// > **NOTE:** For `HTTP` or `HTTPS` protocol monitoring, only one monitoring port can be configured, that is, the start monitoring port and end monitoring port should be the same.
  final pulumi.Input<List<ListenerPortRange>>? portRanges;
  /// Type of network transport protocol monitored. Default value: `TCP`. Valid values: `TCP`, `UDP`, `HTTP`, `HTTPS`.
  final pulumi.Input<String>? protocol;
  /// The proxy protocol of the listener. Default value: `false`. Valid values:
  final pulumi.Input<bool>? proxyProtocol;
  /// The timeout period for HTTP or HTTPS requests. Unit: seconds. Default Value: `60`. Valid values: `1` to `180`.
  /// > **NOTE:** `request_timeout` is only valid when `protocol` is `HTTP` or `HTTPS`.
  final pulumi.Input<int>? requestTimeout;
  /// The ID of the security policy. **NOTE:** Only `HTTPS` listeners support this parameter. Valid values:
  final pulumi.Input<String>? securityPolicyId;
  /// The status of the listener.
  final pulumi.Input<String>? status;

  /// Creates a new [ListenerState].
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
  /// [status] The status of the listener.
  ListenerState({
    this.acceleratorId,
    this.certificates,
    this.clientAffinity,
    this.description,
    this.forwardedForConfig,
    this.httpVersion,
    this.idleTimeout,
    this.listenerType,
    this.name,
    this.portRanges,
    this.protocol,
    this.proxyProtocol,
    this.requestTimeout,
    this.securityPolicyId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'certificates': ?pulumi.Input.mapOptionalInputValue<List<ListenerCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<ListenerCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientAffinity': ?clientAffinity,
      'description': ?description,
      'forwardedForConfig': ?pulumi.Input.mapOptionalInputValue<ListenerForwardedForConfig, Map<String, dynamic>>(forwardedForConfig, (value) => value.toMap()),
      'httpVersion': ?httpVersion,
      'idleTimeout': ?idleTimeout,
      'listenerType': ?listenerType,
      'name': ?name,
      'portRanges': ?pulumi.Input.mapOptionalInputValue<List<ListenerPortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<ListenerPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': ?protocol,
      'proxyProtocol': ?proxyProtocol,
      'requestTimeout': ?requestTimeout,
      'securityPolicyId': ?securityPolicyId,
      'status': ?status,
    };
  }

  factory ListenerState.fromMap(Map<String, dynamic> map) {
    return ListenerState(
      acceleratorId: map['acceleratorId'] == null ? null : (map['acceleratorId']! as String).input(),
      certificates: map['certificates'] == null ? null : (pulumi.Input.decodeList<ListenerCertificate>(map['certificates']!, (value) => ListenerCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clientAffinity: map['clientAffinity'] == null ? null : (map['clientAffinity']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      forwardedForConfig: map['forwardedForConfig'] == null ? null : (ListenerForwardedForConfig.fromMap((map['forwardedForConfig']! as Map).cast<String, dynamic>())).input(),
      httpVersion: map['httpVersion'] == null ? null : (map['httpVersion']! as String).input(),
      idleTimeout: map['idleTimeout'] == null ? null : (map['idleTimeout']! as int).input(),
      listenerType: map['listenerType'] == null ? null : (map['listenerType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      portRanges: map['portRanges'] == null ? null : (pulumi.Input.decodeList<ListenerPortRange>(map['portRanges']!, (value) => ListenerPortRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      proxyProtocol: map['proxyProtocol'] == null ? null : (map['proxyProtocol']! as bool).input(),
      requestTimeout: map['requestTimeout'] == null ? null : (map['requestTimeout']! as int).input(),
      securityPolicyId: map['securityPolicyId'] == null ? null : (map['securityPolicyId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

