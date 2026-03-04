// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_xforwarded_for.dart';

/// Input properties used for looking up and filtering Listener resources.
class ListenerState {
  final pulumi.Input<String>? aclId;
  final pulumi.Input<List<String>>? aclIds;
  final pulumi.Input<String>? aclStatus;
  final pulumi.Input<String>? aclType;
  final pulumi.Input<int>? backendPort;
  final pulumi.Input<int>? bandwidth;
  final pulumi.Input<String>? caCertificateId;
  final pulumi.Input<String>? cookie;
  final pulumi.Input<int>? cookieTimeout;
  final pulumi.Input<bool>? deleteProtectionValidation;
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? enableHttp2;
  final pulumi.Input<int>? establishedTimeout;
  final pulumi.Input<int>? forwardPort;
  final pulumi.Input<int>? frontendPort;
  final pulumi.Input<bool>? gzip;
  final pulumi.Input<String>? healthCheck;
  final pulumi.Input<int>? healthCheckConnectPort;
  final pulumi.Input<String>? healthCheckDomain;
  final pulumi.Input<String>? healthCheckHttpCode;
  final pulumi.Input<int>? healthCheckInterval;
  final pulumi.Input<String>? healthCheckMethod;
  final pulumi.Input<int>? healthCheckTimeout;
  final pulumi.Input<String>? healthCheckType;
  final pulumi.Input<String>? healthCheckUri;
  final pulumi.Input<int>? healthyThreshold;
  final pulumi.Input<int>? idleTimeout;
  final pulumi.Input<String>? listenerForward;
  final pulumi.Input<String>? loadBalancerId;
  final pulumi.Input<String>? masterSlaveServerGroupId;
  final pulumi.Input<int>? persistenceTimeout;
  final pulumi.Input<String>? protocol;
  final pulumi.Input<bool>? proxyProtocolV2Enabled;
  final pulumi.Input<int>? requestTimeout;
  final pulumi.Input<String>? scheduler;
  final pulumi.Input<String>? serverCertificateId;
  final pulumi.Input<String>? serverGroupId;
  final pulumi.Input<String>? sslCertificateId;
  final pulumi.Input<String>? stickySession;
  final pulumi.Input<String>? stickySessionType;
  final pulumi.Input<String>? tlsCipherPolicy;
  final pulumi.Input<int>? unhealthyThreshold;

  /// Whether to set additional HTTP Header field "X-Forwarded-For".
  final pulumi.Input<ListenerXForwardedFor>? xForwardedFor;

  /// Creates a new [ListenerState].
  /// [aclId] Optional.
  /// [aclIds] Optional.
  /// [aclStatus] Optional.
  /// [aclType] Optional.
  /// [backendPort] Optional.
  /// [bandwidth] Optional.
  /// [caCertificateId] Optional.
  /// [cookie] Optional.
  /// [cookieTimeout] Optional.
  /// [deleteProtectionValidation] Optional.
  /// [description] Optional.
  /// [enableHttp2] Optional.
  /// [establishedTimeout] Optional.
  /// [forwardPort] Optional.
  /// [frontendPort] Optional.
  /// [gzip] Optional.
  /// [healthCheck] Optional.
  /// [healthCheckConnectPort] Optional.
  /// [healthCheckDomain] Optional.
  /// [healthCheckHttpCode] Optional.
  /// [healthCheckInterval] Optional.
  /// [healthCheckMethod] Optional.
  /// [healthCheckTimeout] Optional.
  /// [healthCheckType] Optional.
  /// [healthCheckUri] Optional.
  /// [healthyThreshold] Optional.
  /// [idleTimeout] Optional.
  /// [listenerForward] Optional.
  /// [loadBalancerId] Optional.
  /// [masterSlaveServerGroupId] Optional.
  /// [persistenceTimeout] Optional.
  /// [protocol] Optional.
  /// [proxyProtocolV2Enabled] Optional.
  /// [requestTimeout] Optional.
  /// [scheduler] Optional.
  /// [serverCertificateId] Optional.
  /// [serverGroupId] Optional.
  /// [sslCertificateId] Optional.
  /// [stickySession] Optional.
  /// [stickySessionType] Optional.
  /// [tlsCipherPolicy] Optional.
  /// [unhealthyThreshold] Optional.
  /// [xForwardedFor] Whether to set additional HTTP Header field "X-Forwarded-For".
  ListenerState({
    this.aclId,
    this.aclIds,
    this.aclStatus,
    this.aclType,
    this.backendPort,
    this.bandwidth,
    this.caCertificateId,
    this.cookie,
    this.cookieTimeout,
    this.deleteProtectionValidation,
    this.description,
    this.enableHttp2,
    this.establishedTimeout,
    this.forwardPort,
    this.frontendPort,
    this.gzip,
    this.healthCheck,
    this.healthCheckConnectPort,
    this.healthCheckDomain,
    this.healthCheckHttpCode,
    this.healthCheckInterval,
    this.healthCheckMethod,
    this.healthCheckTimeout,
    this.healthCheckType,
    this.healthCheckUri,
    this.healthyThreshold,
    this.idleTimeout,
    this.listenerForward,
    this.loadBalancerId,
    this.masterSlaveServerGroupId,
    this.persistenceTimeout,
    this.protocol,
    this.proxyProtocolV2Enabled,
    this.requestTimeout,
    this.scheduler,
    this.serverCertificateId,
    this.serverGroupId,
    this.sslCertificateId,
    this.stickySession,
    this.stickySessionType,
    this.tlsCipherPolicy,
    this.unhealthyThreshold,
    this.xForwardedFor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': ?aclId,
      'aclIds': ?aclIds,
      'aclStatus': ?aclStatus,
      'aclType': ?aclType,
      'backendPort': ?backendPort,
      'bandwidth': ?bandwidth,
      'caCertificateId': ?caCertificateId,
      'cookie': ?cookie,
      'cookieTimeout': ?cookieTimeout,
      'deleteProtectionValidation': ?deleteProtectionValidation,
      'description': ?description,
      'enableHttp2': ?enableHttp2,
      'establishedTimeout': ?establishedTimeout,
      'forwardPort': ?forwardPort,
      'frontendPort': ?frontendPort,
      'gzip': ?gzip,
      'healthCheck': ?healthCheck,
      'healthCheckConnectPort': ?healthCheckConnectPort,
      'healthCheckDomain': ?healthCheckDomain,
      'healthCheckHttpCode': ?healthCheckHttpCode,
      'healthCheckInterval': ?healthCheckInterval,
      'healthCheckMethod': ?healthCheckMethod,
      'healthCheckTimeout': ?healthCheckTimeout,
      'healthCheckType': ?healthCheckType,
      'healthCheckUri': ?healthCheckUri,
      'healthyThreshold': ?healthyThreshold,
      'idleTimeout': ?idleTimeout,
      'listenerForward': ?listenerForward,
      'loadBalancerId': ?loadBalancerId,
      'masterSlaveServerGroupId': ?masterSlaveServerGroupId,
      'persistenceTimeout': ?persistenceTimeout,
      'protocol': ?protocol,
      'proxyProtocolV2Enabled': ?proxyProtocolV2Enabled,
      'requestTimeout': ?requestTimeout,
      'scheduler': ?scheduler,
      'serverCertificateId': ?serverCertificateId,
      'serverGroupId': ?serverGroupId,
      'sslCertificateId': ?sslCertificateId,
      'stickySession': ?stickySession,
      'stickySessionType': ?stickySessionType,
      'tlsCipherPolicy': ?tlsCipherPolicy,
      'unhealthyThreshold': ?unhealthyThreshold,
      'xForwardedFor':
          ?pulumi.Input.mapOptionalInputValue<
            ListenerXForwardedFor,
            Map<String, dynamic>
          >(xForwardedFor, (value) => value.toMap()),
    };
  }

  factory ListenerState.fromMap(Map<String, dynamic> map) {
    return ListenerState(
      aclId: (() {
        final guardedValue = map['aclId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      aclIds: (() {
        final guardedValue = map['aclIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      aclStatus: (() {
        final guardedValue = map['aclStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      aclType: (() {
        final guardedValue = map['aclType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      backendPort: (() {
        final guardedValue = map['backendPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      bandwidth: (() {
        final guardedValue = map['bandwidth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      caCertificateId: (() {
        final guardedValue = map['caCertificateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cookie: (() {
        final guardedValue = map['cookie'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cookieTimeout: (() {
        final guardedValue = map['cookieTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      deleteProtectionValidation: (() {
        final guardedValue = map['deleteProtectionValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableHttp2: (() {
        final guardedValue = map['enableHttp2'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      establishedTimeout: (() {
        final guardedValue = map['establishedTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      forwardPort: (() {
        final guardedValue = map['forwardPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      frontendPort: (() {
        final guardedValue = map['frontendPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      gzip: (() {
        final guardedValue = map['gzip'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      healthCheck: (() {
        final guardedValue = map['healthCheck'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthCheckConnectPort: (() {
        final guardedValue = map['healthCheckConnectPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      healthCheckDomain: (() {
        final guardedValue = map['healthCheckDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthCheckHttpCode: (() {
        final guardedValue = map['healthCheckHttpCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthCheckInterval: (() {
        final guardedValue = map['healthCheckInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      healthCheckMethod: (() {
        final guardedValue = map['healthCheckMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthCheckTimeout: (() {
        final guardedValue = map['healthCheckTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      healthCheckType: (() {
        final guardedValue = map['healthCheckType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthCheckUri: (() {
        final guardedValue = map['healthCheckUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthyThreshold: (() {
        final guardedValue = map['healthyThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      idleTimeout: (() {
        final guardedValue = map['idleTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      listenerForward: (() {
        final guardedValue = map['listenerForward'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancerId: (() {
        final guardedValue = map['loadBalancerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterSlaveServerGroupId: (() {
        final guardedValue = map['masterSlaveServerGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      persistenceTimeout: (() {
        final guardedValue = map['persistenceTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      proxyProtocolV2Enabled: (() {
        final guardedValue = map['proxyProtocolV2Enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      requestTimeout: (() {
        final guardedValue = map['requestTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      scheduler: (() {
        final guardedValue = map['scheduler'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverCertificateId: (() {
        final guardedValue = map['serverCertificateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverGroupId: (() {
        final guardedValue = map['serverGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslCertificateId: (() {
        final guardedValue = map['sslCertificateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stickySession: (() {
        final guardedValue = map['stickySession'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stickySessionType: (() {
        final guardedValue = map['stickySessionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tlsCipherPolicy: (() {
        final guardedValue = map['tlsCipherPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      unhealthyThreshold: (() {
        final guardedValue = map['unhealthyThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      xForwardedFor: (() {
        final guardedValue = map['xForwardedFor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ListenerXForwardedFor.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
