// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listeners_listener_access_log_tracing_config.dart';
import 'get_listeners_listener_acl_config.dart';
import 'get_listeners_listener_certificate.dart';
import 'get_listeners_listener_default_action.dart';
import 'get_listeners_listener_quic_config.dart';
import 'get_listeners_listener_xforwarded_for_config.dart';

class GetListenersListener {
  /// Indicates whether the access log has a custom header field. Valid values: true and false. Default value: false.
  ///
  /// &gt; **NOTE:** Only Instances outside the Security Group to Access the Log Switch **accesslogenabled** Open, in Order to Set This Parameter to the **True**.
  final pulumi.Input<bool> accessLogRecordCustomizedHeadersEnabled;
  /// Xtrace Configuration Information.
  final pulumi.Input<List<GetListenersListenerAccessLogTracingConfig>> accessLogTracingConfigs;
  /// The configurations of the access control lists (ACLs).
  final pulumi.Input<List<GetListenersListenerAclConfig>> aclConfigs;
  /// The Certificate List.
  final pulumi.Input<List<GetListenersListenerCertificate>> certificates;
  /// The Default Rule Action List.
  final pulumi.Input<List<GetListenersListenerDefaultAction>> defaultActions;
  /// Whether to Enable Gzip Compression, as a Specific File Type on a Compression. Valid Values: `True` Or `False`. Default Value: `True`.
  final pulumi.Input<bool> gzipEnabled;
  /// Whether to Enable HTTP/2 Features. Valid Values: `True` Or `False`. Default Value: `True`.
  ///
  /// &gt; **NOTE:** The attribute is valid when the attribute `ListenerProtocol` is `HTTPS`.
  final pulumi.Input<bool> http2Enabled;
  /// The ID of the Listener.
  final pulumi.Input<String> id;
  /// Specify the Connection Idle Timeout Value: `1` to `60`. Unit: Seconds.
  final pulumi.Input<int> idleTimeout;
  /// Set the IP Address of the Listened Description. Length Is from 2 to 256 Characters.
  final pulumi.Input<String> listenerDescription;
  /// on Behalf of the Resource Level Id of the Resources Property Fields.
  final pulumi.Input<String> listenerId;
  /// The ALB Instance Front-End, and Those of the Ports Used. Value: `1~65535`.
  final pulumi.Input<int> listenerPort;
  /// Snooping Protocols. Valid Values: `HTTP`, `HTTPS` Or `QUIC`.
  final pulumi.Input<String> listenerProtocol;
  /// The ALB Instance Id.
  final pulumi.Input<String> loadBalancerId;
  /// This Request Returned by the Maximum Number of Records.
  final pulumi.Input<String> maxResults;
  /// The Current Call Returns to the Position of the Set to Null Represents the Data Has Been Read to the End of.
  final pulumi.Input<String> nextToken;
  /// Configuration Associated with the QuIC Listening.
  final pulumi.Input<List<GetListenersListenerQuicConfig>> quicConfigs;
  /// The Specified Request Timeout Time. Value: `1` to `180`. Unit: Seconds. Default Value: 60. If the Timeout Time Within the Back-End Server Has Not Answered the ALB Will Give up Waiting, the Client Returns the HTTP 504 Error Code.
  final pulumi.Input<int> requestTimeout;
  /// Security Policy.
  ///
  /// &gt; **NOTE:** The attribute is valid when the attribute `ListenerProtocol` is `HTTPS`.
  final pulumi.Input<String> securityPolicyId;
  /// The state of the listener. Valid Values: `Running` Or `Stopped`. `Running`: The listener is running. `Stopped`: The listener is stopped.
  final pulumi.Input<String> status;
  /// xforwardfor Related Attribute Configuration.
  final pulumi.Input<List<GetListenersListenerXforwardedForConfig>> xforwardedForConfigs;

  /// Creates a new [GetListenersListener].
  /// [accessLogRecordCustomizedHeadersEnabled] Indicates whether the access log has a custom header field. Valid values: true and false. Default value: false.
  /// [accessLogTracingConfigs] Xtrace Configuration Information.
  /// [aclConfigs] The configurations of the access control lists (ACLs).
  /// [certificates] The Certificate List.
  /// [defaultActions] The Default Rule Action List.
  /// [gzipEnabled] Whether to Enable Gzip Compression, as a Specific File Type on a Compression. Valid Values: `True` Or `False`. Default Value: `True`.
  /// [http2Enabled] Whether to Enable HTTP/2 Features. Valid Values: `True` Or `False`. Default Value: `True`.
  /// [id] The ID of the Listener.
  /// [idleTimeout] Specify the Connection Idle Timeout Value: `1` to `60`. Unit: Seconds.
  /// [listenerDescription] Set the IP Address of the Listened Description. Length Is from 2 to 256 Characters.
  /// [listenerId] on Behalf of the Resource Level Id of the Resources Property Fields.
  /// [listenerPort] The ALB Instance Front-End, and Those of the Ports Used. Value: `1~65535`.
  /// [listenerProtocol] Snooping Protocols. Valid Values: `HTTP`, `HTTPS` Or `QUIC`.
  /// [loadBalancerId] The ALB Instance Id.
  /// [maxResults] This Request Returned by the Maximum Number of Records.
  /// [nextToken] The Current Call Returns to the Position of the Set to Null Represents the Data Has Been Read to the End of.
  /// [quicConfigs] Configuration Associated with the QuIC Listening.
  /// [requestTimeout] The Specified Request Timeout Time. Value: `1` to `180`. Unit: Seconds. Default Value: 60. If the Timeout Time Within the Back-End Server Has Not Answered the ALB Will Give up Waiting, the Client Returns the HTTP 504 Error Code.
  /// [securityPolicyId] Security Policy.
  /// [status] The state of the listener. Valid Values: `Running` Or `Stopped`. `Running`: The listener is running. `Stopped`: The listener is stopped.
  /// [xforwardedForConfigs] xforwardfor Related Attribute Configuration.
  const GetListenersListener({
    required this.accessLogRecordCustomizedHeadersEnabled,
    required this.accessLogTracingConfigs,
    required this.aclConfigs,
    required this.certificates,
    required this.defaultActions,
    required this.gzipEnabled,
    required this.http2Enabled,
    required this.id,
    required this.idleTimeout,
    required this.listenerDescription,
    required this.listenerId,
    required this.listenerPort,
    required this.listenerProtocol,
    required this.loadBalancerId,
    required this.maxResults,
    required this.nextToken,
    required this.quicConfigs,
    required this.requestTimeout,
    required this.securityPolicyId,
    required this.status,
    required this.xforwardedForConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogRecordCustomizedHeadersEnabled': accessLogRecordCustomizedHeadersEnabled,
      'accessLogTracingConfigs': pulumi.Input.mapInputValue<List<GetListenersListenerAccessLogTracingConfig>, List<Map<String, dynamic>>>(accessLogTracingConfigs, (value) => pulumi.Input.encodeList<GetListenersListenerAccessLogTracingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aclConfigs': pulumi.Input.mapInputValue<List<GetListenersListenerAclConfig>, List<Map<String, dynamic>>>(aclConfigs, (value) => pulumi.Input.encodeList<GetListenersListenerAclConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'certificates': pulumi.Input.mapInputValue<List<GetListenersListenerCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<GetListenersListenerCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultActions': pulumi.Input.mapInputValue<List<GetListenersListenerDefaultAction>, List<Map<String, dynamic>>>(defaultActions, (value) => pulumi.Input.encodeList<GetListenersListenerDefaultAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gzipEnabled': gzipEnabled,
      'http2Enabled': http2Enabled,
      'id': id,
      'idleTimeout': idleTimeout,
      'listenerDescription': listenerDescription,
      'listenerId': listenerId,
      'listenerPort': listenerPort,
      'listenerProtocol': listenerProtocol,
      'loadBalancerId': loadBalancerId,
      'maxResults': maxResults,
      'nextToken': nextToken,
      'quicConfigs': pulumi.Input.mapInputValue<List<GetListenersListenerQuicConfig>, List<Map<String, dynamic>>>(quicConfigs, (value) => pulumi.Input.encodeList<GetListenersListenerQuicConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestTimeout': requestTimeout,
      'securityPolicyId': securityPolicyId,
      'status': status,
      'xforwardedForConfigs': pulumi.Input.mapInputValue<List<GetListenersListenerXforwardedForConfig>, List<Map<String, dynamic>>>(xforwardedForConfigs, (value) => pulumi.Input.encodeList<GetListenersListenerXforwardedForConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetListenersListener.fromMap(Map<String, dynamic> map) {
    return GetListenersListener(
      accessLogRecordCustomizedHeadersEnabled: pulumi.Input.fromValue(map['accessLogRecordCustomizedHeadersEnabled'] as bool),
      accessLogTracingConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenersListenerAccessLogTracingConfig>(map['accessLogTracingConfigs']!, (value) => GetListenersListenerAccessLogTracingConfig.fromMap((value as Map).cast<String, dynamic>()))),
      aclConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenersListenerAclConfig>(map['aclConfigs']!, (value) => GetListenersListenerAclConfig.fromMap((value as Map).cast<String, dynamic>()))),
      certificates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenersListenerCertificate>(map['certificates']!, (value) => GetListenersListenerCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      defaultActions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenersListenerDefaultAction>(map['defaultActions']!, (value) => GetListenersListenerDefaultAction.fromMap((value as Map).cast<String, dynamic>()))),
      gzipEnabled: pulumi.Input.fromValue(map['gzipEnabled'] as bool),
      http2Enabled: pulumi.Input.fromValue(map['http2Enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      idleTimeout: pulumi.Input.fromValue(map['idleTimeout'] as int),
      listenerDescription: pulumi.Input.fromValue(map['listenerDescription'] as String),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
      listenerPort: pulumi.Input.fromValue(map['listenerPort'] as int),
      listenerProtocol: pulumi.Input.fromValue(map['listenerProtocol'] as String),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      maxResults: pulumi.Input.fromValue(map['maxResults'] as String),
      nextToken: pulumi.Input.fromValue(map['nextToken'] as String),
      quicConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenersListenerQuicConfig>(map['quicConfigs']!, (value) => GetListenersListenerQuicConfig.fromMap((value as Map).cast<String, dynamic>()))),
      requestTimeout: pulumi.Input.fromValue(map['requestTimeout'] as int),
      securityPolicyId: pulumi.Input.fromValue(map['securityPolicyId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      xforwardedForConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenersListenerXforwardedForConfig>(map['xforwardedForConfigs']!, (value) => GetListenersListenerXforwardedForConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

