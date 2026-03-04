// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_access_log_tracing_config.dart';
import 'listener_acl_config.dart';
import 'listener_ca_certificate.dart';
import 'listener_certificates.dart';
import 'listener_default_action.dart';
import 'listener_quic_config.dart';
import 'listener_xforwarded_for_config.dart';

/// Input properties used for looking up and filtering Listener resources.
class ListenerState {
  /// Access Log Whether to Enable Carry Custom Header Field. Valid values: `true`, `false`. Default Value: `false`.
  ///
  /// &gt; **NOTE:**  Only Instances outside the Security Group to Access the Log Switch `accesslogenabled` Open, in Order to Set This Parameter to the `true`.
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
  final pulumi.Input<List<ListenerDefaultAction>>? defaultActions;

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
  final pulumi.Input<int>? listenerPort;

  /// Snooping Protocols. Valid Values: HTTP, HTTPS Or QuIC.
  final pulumi.Input<String>? listenerProtocol;

  /// The SLB Instance Id.
  final pulumi.Input<String>? loadBalancerId;

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

  /// Creates a new [ListenerState].
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
  ListenerState({
    this.accessLogRecordCustomizedHeadersEnabled,
    this.accessLogTracingConfig,
    this.aclConfig,
    this.caCertificates,
    this.caEnabled,
    this.certificates,
    this.defaultActions,
    this.dryRun,
    this.gzipEnabled,
    this.http2Enabled,
    this.idleTimeout,
    this.listenerDescription,
    this.listenerPort,
    this.listenerProtocol,
    this.loadBalancerId,
    this.quicConfig,
    this.requestTimeout,
    this.securityPolicyId,
    this.status,
    this.tags,
    this.xForwardedForConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogRecordCustomizedHeadersEnabled':
          ?accessLogRecordCustomizedHeadersEnabled,
      'accessLogTracingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ListenerAccessLogTracingConfig,
            Map<String, dynamic>
          >(accessLogTracingConfig, (value) => value.toMap()),
      'aclConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ListenerAclConfig,
            Map<String, dynamic>
          >(aclConfig, (value) => value.toMap()),
      'caCertificates':
          ?pulumi.Input.mapOptionalInputValue<
            List<ListenerCaCertificate>,
            List<Map<String, dynamic>>
          >(
            caCertificates,
            (value) =>
                pulumi.Input.encodeList<
                  ListenerCaCertificate,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'caEnabled': ?caEnabled,
      'certificates':
          ?pulumi.Input.mapOptionalInputValue<
            ListenerCertificates,
            Map<String, dynamic>
          >(certificates, (value) => value.toMap()),
      'defaultActions':
          ?pulumi.Input.mapOptionalInputValue<
            List<ListenerDefaultAction>,
            List<Map<String, dynamic>>
          >(
            defaultActions,
            (value) =>
                pulumi.Input.encodeList<
                  ListenerDefaultAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dryRun': ?dryRun,
      'gzipEnabled': ?gzipEnabled,
      'http2Enabled': ?http2Enabled,
      'idleTimeout': ?idleTimeout,
      'listenerDescription': ?listenerDescription,
      'listenerPort': ?listenerPort,
      'listenerProtocol': ?listenerProtocol,
      'loadBalancerId': ?loadBalancerId,
      'quicConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ListenerQuicConfig,
            Map<String, dynamic>
          >(quicConfig, (value) => value.toMap()),
      'requestTimeout': ?requestTimeout,
      'securityPolicyId': ?securityPolicyId,
      'status': ?status,
      'tags': ?tags,
      'xForwardedForConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ListenerXForwardedForConfig,
            Map<String, dynamic>
          >(xForwardedForConfig, (value) => value.toMap()),
    };
  }

  factory ListenerState.fromMap(Map<String, dynamic> map) {
    return ListenerState(
      accessLogRecordCustomizedHeadersEnabled: (() {
        final guardedValue = map['accessLogRecordCustomizedHeadersEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      accessLogTracingConfig: (() {
        final guardedValue = map['accessLogTracingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ListenerAccessLogTracingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      aclConfig: (() {
        final guardedValue = map['aclConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ListenerAclConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      caCertificates: (() {
        final guardedValue = map['caCertificates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ListenerCaCertificate>(
            guardedValue,
            (value) => ListenerCaCertificate.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      caEnabled: (() {
        final guardedValue = map['caEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      certificates: (() {
        final guardedValue = map['certificates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ListenerCertificates.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      defaultActions: (() {
        final guardedValue = map['defaultActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ListenerDefaultAction>(
            guardedValue,
            (value) => ListenerDefaultAction.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      gzipEnabled: (() {
        final guardedValue = map['gzipEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      http2Enabled: (() {
        final guardedValue = map['http2Enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      idleTimeout: (() {
        final guardedValue = map['idleTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      listenerDescription: (() {
        final guardedValue = map['listenerDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      listenerPort: (() {
        final guardedValue = map['listenerPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      listenerProtocol: (() {
        final guardedValue = map['listenerProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancerId: (() {
        final guardedValue = map['loadBalancerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      quicConfig: (() {
        final guardedValue = map['quicConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ListenerQuicConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      requestTimeout: (() {
        final guardedValue = map['requestTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      securityPolicyId: (() {
        final guardedValue = map['securityPolicyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      xForwardedForConfig: (() {
        final guardedValue = map['xForwardedForConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ListenerXForwardedForConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
