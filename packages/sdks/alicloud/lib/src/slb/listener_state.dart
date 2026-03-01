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
    pulumi.Output<String>? aclId,
    pulumi.Output<List<String>>? aclIds,
    pulumi.Output<String>? aclStatus,
    pulumi.Output<String>? aclType,
    pulumi.Output<int>? backendPort,
    pulumi.Output<int>? bandwidth,
    pulumi.Output<String>? caCertificateId,
    pulumi.Output<String>? cookie,
    pulumi.Output<int>? cookieTimeout,
    pulumi.Output<bool>? deleteProtectionValidation,
    pulumi.Output<String>? description,
    pulumi.Output<String>? enableHttp2,
    pulumi.Output<int>? establishedTimeout,
    pulumi.Output<int>? forwardPort,
    pulumi.Output<int>? frontendPort,
    pulumi.Output<bool>? gzip,
    pulumi.Output<String>? healthCheck,
    pulumi.Output<int>? healthCheckConnectPort,
    pulumi.Output<String>? healthCheckDomain,
    pulumi.Output<String>? healthCheckHttpCode,
    pulumi.Output<int>? healthCheckInterval,
    pulumi.Output<String>? healthCheckMethod,
    pulumi.Output<int>? healthCheckTimeout,
    pulumi.Output<String>? healthCheckType,
    pulumi.Output<String>? healthCheckUri,
    pulumi.Output<int>? healthyThreshold,
    pulumi.Output<int>? idleTimeout,
    pulumi.Output<String>? listenerForward,
    pulumi.Output<String>? loadBalancerId,
    pulumi.Output<String>? masterSlaveServerGroupId,
    pulumi.Output<int>? persistenceTimeout,
    pulumi.Output<String>? protocol,
    pulumi.Output<bool>? proxyProtocolV2Enabled,
    pulumi.Output<int>? requestTimeout,
    pulumi.Output<String>? scheduler,
    pulumi.Output<String>? serverCertificateId,
    pulumi.Output<String>? serverGroupId,
    pulumi.Output<String>? sslCertificateId,
    pulumi.Output<String>? stickySession,
    pulumi.Output<String>? stickySessionType,
    pulumi.Output<String>? tlsCipherPolicy,
    pulumi.Output<int>? unhealthyThreshold,
    pulumi.Output<ListenerXForwardedFor>? xForwardedFor,
  }) :
      aclId = pulumi.Input.asOptionalInput<String>(aclId),
      aclIds = pulumi.Input.asOptionalInput<List<String>>(aclIds),
      aclStatus = pulumi.Input.asOptionalInput<String>(aclStatus),
      aclType = pulumi.Input.asOptionalInput<String>(aclType),
      backendPort = pulumi.Input.asOptionalInput<int>(backendPort),
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      caCertificateId = pulumi.Input.asOptionalInput<String>(caCertificateId),
      cookie = pulumi.Input.asOptionalInput<String>(cookie),
      cookieTimeout = pulumi.Input.asOptionalInput<int>(cookieTimeout),
      deleteProtectionValidation = pulumi.Input.asOptionalInput<bool>(deleteProtectionValidation),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableHttp2 = pulumi.Input.asOptionalInput<String>(enableHttp2),
      establishedTimeout = pulumi.Input.asOptionalInput<int>(establishedTimeout),
      forwardPort = pulumi.Input.asOptionalInput<int>(forwardPort),
      frontendPort = pulumi.Input.asOptionalInput<int>(frontendPort),
      gzip = pulumi.Input.asOptionalInput<bool>(gzip),
      healthCheck = pulumi.Input.asOptionalInput<String>(healthCheck),
      healthCheckConnectPort = pulumi.Input.asOptionalInput<int>(healthCheckConnectPort),
      healthCheckDomain = pulumi.Input.asOptionalInput<String>(healthCheckDomain),
      healthCheckHttpCode = pulumi.Input.asOptionalInput<String>(healthCheckHttpCode),
      healthCheckInterval = pulumi.Input.asOptionalInput<int>(healthCheckInterval),
      healthCheckMethod = pulumi.Input.asOptionalInput<String>(healthCheckMethod),
      healthCheckTimeout = pulumi.Input.asOptionalInput<int>(healthCheckTimeout),
      healthCheckType = pulumi.Input.asOptionalInput<String>(healthCheckType),
      healthCheckUri = pulumi.Input.asOptionalInput<String>(healthCheckUri),
      healthyThreshold = pulumi.Input.asOptionalInput<int>(healthyThreshold),
      idleTimeout = pulumi.Input.asOptionalInput<int>(idleTimeout),
      listenerForward = pulumi.Input.asOptionalInput<String>(listenerForward),
      loadBalancerId = pulumi.Input.asOptionalInput<String>(loadBalancerId),
      masterSlaveServerGroupId = pulumi.Input.asOptionalInput<String>(masterSlaveServerGroupId),
      persistenceTimeout = pulumi.Input.asOptionalInput<int>(persistenceTimeout),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      proxyProtocolV2Enabled = pulumi.Input.asOptionalInput<bool>(proxyProtocolV2Enabled),
      requestTimeout = pulumi.Input.asOptionalInput<int>(requestTimeout),
      scheduler = pulumi.Input.asOptionalInput<String>(scheduler),
      serverCertificateId = pulumi.Input.asOptionalInput<String>(serverCertificateId),
      serverGroupId = pulumi.Input.asOptionalInput<String>(serverGroupId),
      sslCertificateId = pulumi.Input.asOptionalInput<String>(sslCertificateId),
      stickySession = pulumi.Input.asOptionalInput<String>(stickySession),
      stickySessionType = pulumi.Input.asOptionalInput<String>(stickySessionType),
      tlsCipherPolicy = pulumi.Input.asOptionalInput<String>(tlsCipherPolicy),
      unhealthyThreshold = pulumi.Input.asOptionalInput<int>(unhealthyThreshold),
      xForwardedFor = pulumi.Input.asOptionalInput<ListenerXForwardedFor>(xForwardedFor);

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
      aclId: map['aclId'] == null ? null : pulumi.Output.create<String>(map['aclId'] as String),
      aclIds: map['aclIds'] == null ? null : pulumi.Output.create<List<String>>((map['aclIds'] as List).cast<String>()),
      aclStatus: map['aclStatus'] == null ? null : pulumi.Output.create<String>(map['aclStatus'] as String),
      aclType: map['aclType'] == null ? null : pulumi.Output.create<String>(map['aclType'] as String),
      backendPort: map['backendPort'] == null ? null : pulumi.Output.create<int>(map['backendPort'] as int),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      caCertificateId: map['caCertificateId'] == null ? null : pulumi.Output.create<String>(map['caCertificateId'] as String),
      cookie: map['cookie'] == null ? null : pulumi.Output.create<String>(map['cookie'] as String),
      cookieTimeout: map['cookieTimeout'] == null ? null : pulumi.Output.create<int>(map['cookieTimeout'] as int),
      deleteProtectionValidation: map['deleteProtectionValidation'] == null ? null : pulumi.Output.create<bool>(map['deleteProtectionValidation'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enableHttp2: map['enableHttp2'] == null ? null : pulumi.Output.create<String>(map['enableHttp2'] as String),
      establishedTimeout: map['establishedTimeout'] == null ? null : pulumi.Output.create<int>(map['establishedTimeout'] as int),
      forwardPort: map['forwardPort'] == null ? null : pulumi.Output.create<int>(map['forwardPort'] as int),
      frontendPort: map['frontendPort'] == null ? null : pulumi.Output.create<int>(map['frontendPort'] as int),
      gzip: map['gzip'] == null ? null : pulumi.Output.create<bool>(map['gzip'] as bool),
      healthCheck: map['healthCheck'] == null ? null : pulumi.Output.create<String>(map['healthCheck'] as String),
      healthCheckConnectPort: map['healthCheckConnectPort'] == null ? null : pulumi.Output.create<int>(map['healthCheckConnectPort'] as int),
      healthCheckDomain: map['healthCheckDomain'] == null ? null : pulumi.Output.create<String>(map['healthCheckDomain'] as String),
      healthCheckHttpCode: map['healthCheckHttpCode'] == null ? null : pulumi.Output.create<String>(map['healthCheckHttpCode'] as String),
      healthCheckInterval: map['healthCheckInterval'] == null ? null : pulumi.Output.create<int>(map['healthCheckInterval'] as int),
      healthCheckMethod: map['healthCheckMethod'] == null ? null : pulumi.Output.create<String>(map['healthCheckMethod'] as String),
      healthCheckTimeout: map['healthCheckTimeout'] == null ? null : pulumi.Output.create<int>(map['healthCheckTimeout'] as int),
      healthCheckType: map['healthCheckType'] == null ? null : pulumi.Output.create<String>(map['healthCheckType'] as String),
      healthCheckUri: map['healthCheckUri'] == null ? null : pulumi.Output.create<String>(map['healthCheckUri'] as String),
      healthyThreshold: map['healthyThreshold'] == null ? null : pulumi.Output.create<int>(map['healthyThreshold'] as int),
      idleTimeout: map['idleTimeout'] == null ? null : pulumi.Output.create<int>(map['idleTimeout'] as int),
      listenerForward: map['listenerForward'] == null ? null : pulumi.Output.create<String>(map['listenerForward'] as String),
      loadBalancerId: map['loadBalancerId'] == null ? null : pulumi.Output.create<String>(map['loadBalancerId'] as String),
      masterSlaveServerGroupId: map['masterSlaveServerGroupId'] == null ? null : pulumi.Output.create<String>(map['masterSlaveServerGroupId'] as String),
      persistenceTimeout: map['persistenceTimeout'] == null ? null : pulumi.Output.create<int>(map['persistenceTimeout'] as int),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      proxyProtocolV2Enabled: map['proxyProtocolV2Enabled'] == null ? null : pulumi.Output.create<bool>(map['proxyProtocolV2Enabled'] as bool),
      requestTimeout: map['requestTimeout'] == null ? null : pulumi.Output.create<int>(map['requestTimeout'] as int),
      scheduler: map['scheduler'] == null ? null : pulumi.Output.create<String>(map['scheduler'] as String),
      serverCertificateId: map['serverCertificateId'] == null ? null : pulumi.Output.create<String>(map['serverCertificateId'] as String),
      serverGroupId: map['serverGroupId'] == null ? null : pulumi.Output.create<String>(map['serverGroupId'] as String),
      sslCertificateId: map['sslCertificateId'] == null ? null : pulumi.Output.create<String>(map['sslCertificateId'] as String),
      stickySession: map['stickySession'] == null ? null : pulumi.Output.create<String>(map['stickySession'] as String),
      stickySessionType: map['stickySessionType'] == null ? null : pulumi.Output.create<String>(map['stickySessionType'] as String),
      tlsCipherPolicy: map['tlsCipherPolicy'] == null ? null : pulumi.Output.create<String>(map['tlsCipherPolicy'] as String),
      unhealthyThreshold: map['unhealthyThreshold'] == null ? null : pulumi.Output.create<int>(map['unhealthyThreshold'] as int),
      xForwardedFor: map['xForwardedFor'] == null ? null : pulumi.Output.create<ListenerXForwardedFor>(ListenerXForwardedFor.fromMap((map['xForwardedFor'] as Map).cast<String, dynamic>())),
    );
  }
}

