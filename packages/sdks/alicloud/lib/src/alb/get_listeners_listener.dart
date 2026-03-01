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
  /// > **NOTE:** Only Instances outside the Security Group to Access the Log Switch **accesslogenabled** Open, in Order to Set This Parameter to the **True**.
  final bool accessLogRecordCustomizedHeadersEnabled;
  /// Xtrace Configuration Information.
  final List<GetListenersListenerAccessLogTracingConfig> accessLogTracingConfigs;
  /// The configurations of the access control lists (ACLs).
  final List<GetListenersListenerAclConfig> aclConfigs;
  /// The Certificate List.
  final List<GetListenersListenerCertificate> certificates;
  /// The Default Rule Action List.
  final List<GetListenersListenerDefaultAction> defaultActions;
  /// Whether to Enable Gzip Compression, as a Specific File Type on a Compression. Valid Values: `True` Or `False`. Default Value: `True`.
  final bool gzipEnabled;
  /// Whether to Enable HTTP/2 Features. Valid Values: `True` Or `False`. Default Value: `True`.
  ///
  /// > **NOTE:** The attribute is valid when the attribute `ListenerProtocol` is `HTTPS`.
  final bool http2Enabled;
  /// The ID of the Listener.
  final String id;
  /// Specify the Connection Idle Timeout Value: `1` to `60`. Unit: Seconds.
  final int idleTimeout;
  /// Set the IP Address of the Listened Description. Length Is from 2 to 256 Characters.
  final String listenerDescription;
  /// on Behalf of the Resource Level Id of the Resources Property Fields.
  final String listenerId;
  /// The ALB Instance Front-End, and Those of the Ports Used. Value: `1~65535`.
  final int listenerPort;
  /// Snooping Protocols. Valid Values: `HTTP`, `HTTPS` Or `QUIC`.
  final String listenerProtocol;
  /// The ALB Instance Id.
  final String loadBalancerId;
  /// This Request Returned by the Maximum Number of Records.
  final String maxResults;
  /// The Current Call Returns to the Position of the Set to Null Represents the Data Has Been Read to the End of.
  final String nextToken;
  /// Configuration Associated with the QuIC Listening.
  final List<GetListenersListenerQuicConfig> quicConfigs;
  /// The Specified Request Timeout Time. Value: `1` to `180`. Unit: Seconds. Default Value: 60. If the Timeout Time Within the Back-End Server Has Not Answered the ALB Will Give up Waiting, the Client Returns the HTTP 504 Error Code.
  final int requestTimeout;
  /// Security Policy.
  ///
  /// > **NOTE:** The attribute is valid when the attribute `ListenerProtocol` is `HTTPS`.
  final String securityPolicyId;
  /// The state of the listener. Valid Values: `Running` Or `Stopped`. `Running`: The listener is running. `Stopped`: The listener is stopped.
  final String status;
  /// xforwardfor Related Attribute Configuration.
  final List<GetListenersListenerXforwardedForConfig> xforwardedForConfigs;

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
  GetListenersListener({
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
      'accessLogTracingConfigs': pulumi.Input.encodeList<GetListenersListenerAccessLogTracingConfig, Map<String, dynamic>>(accessLogTracingConfigs, (value) => value.toMap()),
      'aclConfigs': pulumi.Input.encodeList<GetListenersListenerAclConfig, Map<String, dynamic>>(aclConfigs, (value) => value.toMap()),
      'certificates': pulumi.Input.encodeList<GetListenersListenerCertificate, Map<String, dynamic>>(certificates, (value) => value.toMap()),
      'defaultActions': pulumi.Input.encodeList<GetListenersListenerDefaultAction, Map<String, dynamic>>(defaultActions, (value) => value.toMap()),
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
      'quicConfigs': pulumi.Input.encodeList<GetListenersListenerQuicConfig, Map<String, dynamic>>(quicConfigs, (value) => value.toMap()),
      'requestTimeout': requestTimeout,
      'securityPolicyId': securityPolicyId,
      'status': status,
      'xforwardedForConfigs': pulumi.Input.encodeList<GetListenersListenerXforwardedForConfig, Map<String, dynamic>>(xforwardedForConfigs, (value) => value.toMap()),
    };
  }

  factory GetListenersListener.fromMap(Map<String, dynamic> map) {
    return GetListenersListener(
      accessLogRecordCustomizedHeadersEnabled: map['accessLogRecordCustomizedHeadersEnabled'] as bool,
      accessLogTracingConfigs: pulumi.Input.decodeList<GetListenersListenerAccessLogTracingConfig>(map['accessLogTracingConfigs'], (value) => GetListenersListenerAccessLogTracingConfig.fromMap((value as Map).cast<String, dynamic>())),
      aclConfigs: pulumi.Input.decodeList<GetListenersListenerAclConfig>(map['aclConfigs'], (value) => GetListenersListenerAclConfig.fromMap((value as Map).cast<String, dynamic>())),
      certificates: pulumi.Input.decodeList<GetListenersListenerCertificate>(map['certificates'], (value) => GetListenersListenerCertificate.fromMap((value as Map).cast<String, dynamic>())),
      defaultActions: pulumi.Input.decodeList<GetListenersListenerDefaultAction>(map['defaultActions'], (value) => GetListenersListenerDefaultAction.fromMap((value as Map).cast<String, dynamic>())),
      gzipEnabled: map['gzipEnabled'] as bool,
      http2Enabled: map['http2Enabled'] as bool,
      id: map['id'] as String,
      idleTimeout: map['idleTimeout'] as int,
      listenerDescription: map['listenerDescription'] as String,
      listenerId: map['listenerId'] as String,
      listenerPort: map['listenerPort'] as int,
      listenerProtocol: map['listenerProtocol'] as String,
      loadBalancerId: map['loadBalancerId'] as String,
      maxResults: map['maxResults'] as String,
      nextToken: map['nextToken'] as String,
      quicConfigs: pulumi.Input.decodeList<GetListenersListenerQuicConfig>(map['quicConfigs'], (value) => GetListenersListenerQuicConfig.fromMap((value as Map).cast<String, dynamic>())),
      requestTimeout: map['requestTimeout'] as int,
      securityPolicyId: map['securityPolicyId'] as String,
      status: map['status'] as String,
      xforwardedForConfigs: pulumi.Input.decodeList<GetListenersListenerXforwardedForConfig>(map['xforwardedForConfigs'], (value) => GetListenersListenerXforwardedForConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

