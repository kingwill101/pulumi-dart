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
      'xForwardedFor': ?pulumi.Input.mapOptionalInputValue<ListenerXForwardedFor, Map<String, dynamic>>(xForwardedFor, (value) => value.toMap()),
    };
  }

  factory ListenerState.fromMap(Map<String, dynamic> map) {
    return ListenerState(
      aclId: map['aclId'] == null ? null : (map['aclId'] as String).input(),
      aclIds: map['aclIds'] == null ? null : ((map['aclIds'] as List).cast<String>()).input(),
      aclStatus: map['aclStatus'] == null ? null : (map['aclStatus'] as String).input(),
      aclType: map['aclType'] == null ? null : (map['aclType'] as String).input(),
      backendPort: map['backendPort'] == null ? null : (map['backendPort'] as int).input(),
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth'] as int).input(),
      caCertificateId: map['caCertificateId'] == null ? null : (map['caCertificateId'] as String).input(),
      cookie: map['cookie'] == null ? null : (map['cookie'] as String).input(),
      cookieTimeout: map['cookieTimeout'] == null ? null : (map['cookieTimeout'] as int).input(),
      deleteProtectionValidation: map['deleteProtectionValidation'] == null ? null : (map['deleteProtectionValidation'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enableHttp2: map['enableHttp2'] == null ? null : (map['enableHttp2'] as String).input(),
      establishedTimeout: map['establishedTimeout'] == null ? null : (map['establishedTimeout'] as int).input(),
      forwardPort: map['forwardPort'] == null ? null : (map['forwardPort'] as int).input(),
      frontendPort: map['frontendPort'] == null ? null : (map['frontendPort'] as int).input(),
      gzip: map['gzip'] == null ? null : (map['gzip'] as bool).input(),
      healthCheck: map['healthCheck'] == null ? null : (map['healthCheck'] as String).input(),
      healthCheckConnectPort: map['healthCheckConnectPort'] == null ? null : (map['healthCheckConnectPort'] as int).input(),
      healthCheckDomain: map['healthCheckDomain'] == null ? null : (map['healthCheckDomain'] as String).input(),
      healthCheckHttpCode: map['healthCheckHttpCode'] == null ? null : (map['healthCheckHttpCode'] as String).input(),
      healthCheckInterval: map['healthCheckInterval'] == null ? null : (map['healthCheckInterval'] as int).input(),
      healthCheckMethod: map['healthCheckMethod'] == null ? null : (map['healthCheckMethod'] as String).input(),
      healthCheckTimeout: map['healthCheckTimeout'] == null ? null : (map['healthCheckTimeout'] as int).input(),
      healthCheckType: map['healthCheckType'] == null ? null : (map['healthCheckType'] as String).input(),
      healthCheckUri: map['healthCheckUri'] == null ? null : (map['healthCheckUri'] as String).input(),
      healthyThreshold: map['healthyThreshold'] == null ? null : (map['healthyThreshold'] as int).input(),
      idleTimeout: map['idleTimeout'] == null ? null : (map['idleTimeout'] as int).input(),
      listenerForward: map['listenerForward'] == null ? null : (map['listenerForward'] as String).input(),
      loadBalancerId: map['loadBalancerId'] == null ? null : (map['loadBalancerId'] as String).input(),
      masterSlaveServerGroupId: map['masterSlaveServerGroupId'] == null ? null : (map['masterSlaveServerGroupId'] as String).input(),
      persistenceTimeout: map['persistenceTimeout'] == null ? null : (map['persistenceTimeout'] as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      proxyProtocolV2Enabled: map['proxyProtocolV2Enabled'] == null ? null : (map['proxyProtocolV2Enabled'] as bool).input(),
      requestTimeout: map['requestTimeout'] == null ? null : (map['requestTimeout'] as int).input(),
      scheduler: map['scheduler'] == null ? null : (map['scheduler'] as String).input(),
      serverCertificateId: map['serverCertificateId'] == null ? null : (map['serverCertificateId'] as String).input(),
      serverGroupId: map['serverGroupId'] == null ? null : (map['serverGroupId'] as String).input(),
      sslCertificateId: map['sslCertificateId'] == null ? null : (map['sslCertificateId'] as String).input(),
      stickySession: map['stickySession'] == null ? null : (map['stickySession'] as String).input(),
      stickySessionType: map['stickySessionType'] == null ? null : (map['stickySessionType'] as String).input(),
      tlsCipherPolicy: map['tlsCipherPolicy'] == null ? null : (map['tlsCipherPolicy'] as String).input(),
      unhealthyThreshold: map['unhealthyThreshold'] == null ? null : (map['unhealthyThreshold'] as int).input(),
      xForwardedFor: map['xForwardedFor'] == null ? null : (ListenerXForwardedFor.fromMap((map['xForwardedFor'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

