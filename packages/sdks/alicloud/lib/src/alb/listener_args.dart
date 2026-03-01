// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_access_log_tracing_config.dart';
import 'listener_acl_config.dart';
import 'listener_ca_certificate.dart';
import 'listener_certificates.dart';
import 'listener_default_action.dart';
import 'listener_quic_config.dart';
import 'listener_xforwarded_for_config.dart';

/// {@template pulumi_alb_listener_listener_args_doc}
/// The set of arguments for Listener.
/// {@endtemplate}
/// {@macro pulumi_alb_listener_listener_args_doc}
class ListenerArgs {
  /// Access Log Whether to Enable Carry Custom Header Field. Valid values: `true`, `false`. Default Value: `false`.
  ///
  /// > **NOTE:**  Only Instances outside the Security Group to Access the Log Switch `accesslogenabled` Open, in Order to Set This Parameter to the `true`.
  final pulumi.Input<bool>? accessLogRecordCustomizedHeadersEnabled;
  /// Xtrace Configuration Information. See `access_log_tracing_config` below.
  final pulumi.Input<ListenerAccessLogTracingConfig>? accessLogTracingConfig;
  /// The configurations of the access control lists (ACLs). See `acl_config` below for details. **NOTE:** Field `acl_config` has been deprecated from provider version 1.163.0, and it will be removed in the future version. Please use the new resource `alicloud.alb.ListenerAclAttachment`.,
  final pulumi.Input<ListenerAclConfig>? aclConfig;
  /// The list of certificates. See `ca_certificates` below.
  final pulumi.Input<List<ListenerCaCertificate>>? caCertificates;
  /// Whether to turn on two-way authentication. Value:
  final pulumi.Input<bool>? caEnabled;
  /// The list of certificates. See `certificates` below.
  final pulumi.Input<ListenerCertificates>? certificates;
  /// The Default Rule Action List See `default_actions` below.
  final pulumi.Input<List<ListenerDefaultAction>> defaultActions;
  /// Whether to PreCheck only this request. Value:
  final pulumi.Input<bool>? dryRun;
  /// Whether to Enable Gzip Compression, as a Specific File Type on a Compression. Valid Values: True Or False. Default Value: TRUE.
  final pulumi.Input<bool>? gzipEnabled;
  /// Whether to Enable HTTP/2 Features. Valid Values: True Or False. Default Value: TRUE.
  final pulumi.Input<bool>? http2Enabled;
  /// Specify the Connection Idle Timeout Value: 1 to 60 seconds.
  final pulumi.Input<int>? idleTimeout;
  /// Set the IP Address of the Listened Description. Length Is from 2 to 256 Characters.
  final pulumi.Input<String>? listenerDescription;
  /// The SLB Instance Front-End, and Those of the Ports Used. Value: 1~65535.
  final pulumi.Input<int> listenerPort;
  /// Snooping Protocols. Valid Values: HTTP, HTTPS Or QuIC.
  final pulumi.Input<String> listenerProtocol;
  /// The SLB Instance Id.
  final pulumi.Input<String> loadBalancerId;
  /// Configuration Associated with the QuIC Listening See `quic_config` below.
  final pulumi.Input<ListenerQuicConfig>? quicConfig;
  /// The Specified Request Timeout Time. Value: 1~180 Seconds. Default Value: 60 seconds. If the Timeout Time Within the Back-End Server Has Not Answered the SLB Will Give up Waiting, the Client Returns the HTTP 504 Error Code.
  final pulumi.Input<int>? requestTimeout;
  /// Security Policy
  final pulumi.Input<String>? securityPolicyId;
  /// The Current IP Address of the Listened State
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// xforwardfor Related Attribute Configuration See `x_forwarded_for_config` below.
  final pulumi.Input<ListenerXForwardedForConfig>? xForwardedForConfig;

  /// Creates a new [ListenerArgs].
  /// [accessLogRecordCustomizedHeadersEnabled] Access Log Whether to Enable Carry Custom Header Field. Valid values: `true`, `false`. Default Value: `false`.
  /// [accessLogTracingConfig] Xtrace Configuration Information. See `access_log_tracing_config` below.
  /// [aclConfig] The configurations of the access control lists (ACLs). See `acl_config` below for details. **NOTE:** Field `acl_config` has been deprecated from provider version 1.163.0, and it will be removed in the future version. Please use the new resource `alicloud.alb.ListenerAclAttachment`.,
  /// [caCertificates] The list of certificates. See `ca_certificates` below.
  /// [caEnabled] Whether to turn on two-way authentication. Value:
  /// [certificates] The list of certificates. See `certificates` below.
  /// [defaultActions] The Default Rule Action List See `default_actions` below.
  /// [dryRun] Whether to PreCheck only this request. Value:
  /// [gzipEnabled] Whether to Enable Gzip Compression, as a Specific File Type on a Compression. Valid Values: True Or False. Default Value: TRUE.
  /// [http2Enabled] Whether to Enable HTTP/2 Features. Valid Values: True Or False. Default Value: TRUE.
  /// [idleTimeout] Specify the Connection Idle Timeout Value: 1 to 60 seconds.
  /// [listenerDescription] Set the IP Address of the Listened Description. Length Is from 2 to 256 Characters.
  /// [listenerPort] The SLB Instance Front-End, and Those of the Ports Used. Value: 1~65535.
  /// [listenerProtocol] Snooping Protocols. Valid Values: HTTP, HTTPS Or QuIC.
  /// [loadBalancerId] The SLB Instance Id.
  /// [quicConfig] Configuration Associated with the QuIC Listening See `quic_config` below.
  /// [requestTimeout] The Specified Request Timeout Time. Value: 1~180 Seconds. Default Value: 60 seconds. If the Timeout Time Within the Back-End Server Has Not Answered the SLB Will Give up Waiting, the Client Returns the HTTP 504 Error Code.
  /// [securityPolicyId] Security Policy
  /// [status] The Current IP Address of the Listened State
  /// [tags] The tag of the resource
  /// [xForwardedForConfig] xforwardfor Related Attribute Configuration See `x_forwarded_for_config` below.
  ListenerArgs({
    pulumi.Output<bool>? accessLogRecordCustomizedHeadersEnabled,
    pulumi.Output<ListenerAccessLogTracingConfig>? accessLogTracingConfig,
    pulumi.Output<ListenerAclConfig>? aclConfig,
    pulumi.Output<List<ListenerCaCertificate>>? caCertificates,
    pulumi.Output<bool>? caEnabled,
    pulumi.Output<ListenerCertificates>? certificates,
    required pulumi.Output<List<ListenerDefaultAction>> defaultActions,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<bool>? gzipEnabled,
    pulumi.Output<bool>? http2Enabled,
    pulumi.Output<int>? idleTimeout,
    pulumi.Output<String>? listenerDescription,
    required pulumi.Output<int> listenerPort,
    required pulumi.Output<String> listenerProtocol,
    required pulumi.Output<String> loadBalancerId,
    pulumi.Output<ListenerQuicConfig>? quicConfig,
    pulumi.Output<int>? requestTimeout,
    pulumi.Output<String>? securityPolicyId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<ListenerXForwardedForConfig>? xForwardedForConfig,
  }) :
      accessLogRecordCustomizedHeadersEnabled = pulumi.Input.asOptionalInput<bool>(accessLogRecordCustomizedHeadersEnabled),
      accessLogTracingConfig = pulumi.Input.asOptionalInput<ListenerAccessLogTracingConfig>(accessLogTracingConfig),
      aclConfig = pulumi.Input.asOptionalInput<ListenerAclConfig>(aclConfig),
      caCertificates = pulumi.Input.asOptionalInput<List<ListenerCaCertificate>>(caCertificates),
      caEnabled = pulumi.Input.asOptionalInput<bool>(caEnabled),
      certificates = pulumi.Input.asOptionalInput<ListenerCertificates>(certificates),
      defaultActions = pulumi.Input.asInput<List<ListenerDefaultAction>>(defaultActions),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      gzipEnabled = pulumi.Input.asOptionalInput<bool>(gzipEnabled),
      http2Enabled = pulumi.Input.asOptionalInput<bool>(http2Enabled),
      idleTimeout = pulumi.Input.asOptionalInput<int>(idleTimeout),
      listenerDescription = pulumi.Input.asOptionalInput<String>(listenerDescription),
      listenerPort = pulumi.Input.asInput<int>(listenerPort),
      listenerProtocol = pulumi.Input.asInput<String>(listenerProtocol),
      loadBalancerId = pulumi.Input.asInput<String>(loadBalancerId),
      quicConfig = pulumi.Input.asOptionalInput<ListenerQuicConfig>(quicConfig),
      requestTimeout = pulumi.Input.asOptionalInput<int>(requestTimeout),
      securityPolicyId = pulumi.Input.asOptionalInput<String>(securityPolicyId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      xForwardedForConfig = pulumi.Input.asOptionalInput<ListenerXForwardedForConfig>(xForwardedForConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogRecordCustomizedHeadersEnabled': ?accessLogRecordCustomizedHeadersEnabled,
      'accessLogTracingConfig': ?pulumi.Input.mapOptionalInputValue<ListenerAccessLogTracingConfig, Map<String, dynamic>>(accessLogTracingConfig, (value) => value.toMap()),
      'aclConfig': ?pulumi.Input.mapOptionalInputValue<ListenerAclConfig, Map<String, dynamic>>(aclConfig, (value) => value.toMap()),
      'caCertificates': ?pulumi.Input.mapOptionalInputValue<List<ListenerCaCertificate>, List<Map<String, dynamic>>>(caCertificates, (value) => pulumi.Input.encodeList<ListenerCaCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'caEnabled': ?caEnabled,
      'certificates': ?pulumi.Input.mapOptionalInputValue<ListenerCertificates, Map<String, dynamic>>(certificates, (value) => value.toMap()),
      'defaultActions': pulumi.Input.mapInputValue<List<ListenerDefaultAction>, List<Map<String, dynamic>>>(defaultActions, (value) => pulumi.Input.encodeList<ListenerDefaultAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dryRun': ?dryRun,
      'gzipEnabled': ?gzipEnabled,
      'http2Enabled': ?http2Enabled,
      'idleTimeout': ?idleTimeout,
      'listenerDescription': ?listenerDescription,
      'listenerPort': listenerPort,
      'listenerProtocol': listenerProtocol,
      'loadBalancerId': loadBalancerId,
      'quicConfig': ?pulumi.Input.mapOptionalInputValue<ListenerQuicConfig, Map<String, dynamic>>(quicConfig, (value) => value.toMap()),
      'requestTimeout': ?requestTimeout,
      'securityPolicyId': ?securityPolicyId,
      'status': ?status,
      'tags': ?tags,
      'xForwardedForConfig': ?pulumi.Input.mapOptionalInputValue<ListenerXForwardedForConfig, Map<String, dynamic>>(xForwardedForConfig, (value) => value.toMap()),
    };
  }

  factory ListenerArgs.fromMap(Map<String, dynamic> map) {
    return ListenerArgs(
      accessLogRecordCustomizedHeadersEnabled: map['accessLogRecordCustomizedHeadersEnabled'] == null ? null : pulumi.Output.create<bool>(map['accessLogRecordCustomizedHeadersEnabled'] as bool),
      accessLogTracingConfig: map['accessLogTracingConfig'] == null ? null : pulumi.Output.create<ListenerAccessLogTracingConfig>(ListenerAccessLogTracingConfig.fromMap((map['accessLogTracingConfig'] as Map).cast<String, dynamic>())),
      aclConfig: map['aclConfig'] == null ? null : pulumi.Output.create<ListenerAclConfig>(ListenerAclConfig.fromMap((map['aclConfig'] as Map).cast<String, dynamic>())),
      caCertificates: map['caCertificates'] == null ? null : pulumi.Output.create<List<ListenerCaCertificate>>(pulumi.Input.decodeList<ListenerCaCertificate>(map['caCertificates'], (value) => ListenerCaCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      caEnabled: map['caEnabled'] == null ? null : pulumi.Output.create<bool>(map['caEnabled'] as bool),
      certificates: map['certificates'] == null ? null : pulumi.Output.create<ListenerCertificates>(ListenerCertificates.fromMap((map['certificates'] as Map).cast<String, dynamic>())),
      defaultActions: pulumi.Output.create<List<ListenerDefaultAction>>(pulumi.Input.decodeList<ListenerDefaultAction>(map['defaultActions'], (value) => ListenerDefaultAction.fromMap((value as Map).cast<String, dynamic>()))),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      gzipEnabled: map['gzipEnabled'] == null ? null : pulumi.Output.create<bool>(map['gzipEnabled'] as bool),
      http2Enabled: map['http2Enabled'] == null ? null : pulumi.Output.create<bool>(map['http2Enabled'] as bool),
      idleTimeout: map['idleTimeout'] == null ? null : pulumi.Output.create<int>(map['idleTimeout'] as int),
      listenerDescription: map['listenerDescription'] == null ? null : pulumi.Output.create<String>(map['listenerDescription'] as String),
      listenerPort: pulumi.Output.create<int>(map['listenerPort'] as int),
      listenerProtocol: pulumi.Output.create<String>(map['listenerProtocol'] as String),
      loadBalancerId: pulumi.Output.create<String>(map['loadBalancerId'] as String),
      quicConfig: map['quicConfig'] == null ? null : pulumi.Output.create<ListenerQuicConfig>(ListenerQuicConfig.fromMap((map['quicConfig'] as Map).cast<String, dynamic>())),
      requestTimeout: map['requestTimeout'] == null ? null : pulumi.Output.create<int>(map['requestTimeout'] as int),
      securityPolicyId: map['securityPolicyId'] == null ? null : pulumi.Output.create<String>(map['securityPolicyId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      xForwardedForConfig: map['xForwardedForConfig'] == null ? null : pulumi.Output.create<ListenerXForwardedForConfig>(ListenerXForwardedForConfig.fromMap((map['xForwardedForConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

