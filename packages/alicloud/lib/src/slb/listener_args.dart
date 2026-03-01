// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_xforwarded_for.dart';

/// {@template pulumi_slb_listener_listener_args_doc}
/// The set of arguments for Listener.
/// {@endtemplate}
/// {@macro pulumi_slb_listener_listener_args_doc}
class ListenerArgs {
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
  final pulumi.Input<int> frontendPort;
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
  final pulumi.Input<String> loadBalancerId;
  final pulumi.Input<String>? masterSlaveServerGroupId;
  final pulumi.Input<int>? persistenceTimeout;
  final pulumi.Input<String> protocol;
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

  /// Creates a new [ListenerArgs].
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
  /// [frontendPort] Required.
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
  /// [loadBalancerId] Required.
  /// [masterSlaveServerGroupId] Optional.
  /// [persistenceTimeout] Optional.
  /// [protocol] Required.
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
  ListenerArgs({
    String? aclId,
    List<String>? aclIds,
    String? aclStatus,
    String? aclType,
    int? backendPort,
    int? bandwidth,
    String? caCertificateId,
    String? cookie,
    int? cookieTimeout,
    bool? deleteProtectionValidation,
    String? description,
    String? enableHttp2,
    int? establishedTimeout,
    int? forwardPort,
    required int frontendPort,
    bool? gzip,
    String? healthCheck,
    int? healthCheckConnectPort,
    String? healthCheckDomain,
    String? healthCheckHttpCode,
    int? healthCheckInterval,
    String? healthCheckMethod,
    int? healthCheckTimeout,
    String? healthCheckType,
    String? healthCheckUri,
    int? healthyThreshold,
    int? idleTimeout,
    String? listenerForward,
    required String loadBalancerId,
    String? masterSlaveServerGroupId,
    int? persistenceTimeout,
    required String protocol,
    bool? proxyProtocolV2Enabled,
    int? requestTimeout,
    String? scheduler,
    String? serverCertificateId,
    String? serverGroupId,
    String? sslCertificateId,
    String? stickySession,
    String? stickySessionType,
    String? tlsCipherPolicy,
    int? unhealthyThreshold,
    ListenerXForwardedFor? xForwardedFor,
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
      frontendPort = pulumi.Input.asInput<int>(frontendPort),
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
      loadBalancerId = pulumi.Input.asInput<String>(loadBalancerId),
      masterSlaveServerGroupId = pulumi.Input.asOptionalInput<String>(masterSlaveServerGroupId),
      persistenceTimeout = pulumi.Input.asOptionalInput<int>(persistenceTimeout),
      protocol = pulumi.Input.asInput<String>(protocol),
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
      'frontendPort': frontendPort,
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
      'loadBalancerId': loadBalancerId,
      'masterSlaveServerGroupId': ?masterSlaveServerGroupId,
      'persistenceTimeout': ?persistenceTimeout,
      'protocol': protocol,
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

  factory ListenerArgs.fromMap(Map<String, dynamic> map) {
    return ListenerArgs(
      aclId: map['aclId'] == null ? null : map['aclId'] as String,
      aclIds: map['aclIds'] == null ? null : (map['aclIds'] as List).cast<String>(),
      aclStatus: map['aclStatus'] == null ? null : map['aclStatus'] as String,
      aclType: map['aclType'] == null ? null : map['aclType'] as String,
      backendPort: map['backendPort'] == null ? null : map['backendPort'] as int,
      bandwidth: map['bandwidth'] == null ? null : map['bandwidth'] as int,
      caCertificateId: map['caCertificateId'] == null ? null : map['caCertificateId'] as String,
      cookie: map['cookie'] == null ? null : map['cookie'] as String,
      cookieTimeout: map['cookieTimeout'] == null ? null : map['cookieTimeout'] as int,
      deleteProtectionValidation: map['deleteProtectionValidation'] == null ? null : map['deleteProtectionValidation'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      enableHttp2: map['enableHttp2'] == null ? null : map['enableHttp2'] as String,
      establishedTimeout: map['establishedTimeout'] == null ? null : map['establishedTimeout'] as int,
      forwardPort: map['forwardPort'] == null ? null : map['forwardPort'] as int,
      frontendPort: map['frontendPort'] as int,
      gzip: map['gzip'] == null ? null : map['gzip'] as bool,
      healthCheck: map['healthCheck'] == null ? null : map['healthCheck'] as String,
      healthCheckConnectPort: map['healthCheckConnectPort'] == null ? null : map['healthCheckConnectPort'] as int,
      healthCheckDomain: map['healthCheckDomain'] == null ? null : map['healthCheckDomain'] as String,
      healthCheckHttpCode: map['healthCheckHttpCode'] == null ? null : map['healthCheckHttpCode'] as String,
      healthCheckInterval: map['healthCheckInterval'] == null ? null : map['healthCheckInterval'] as int,
      healthCheckMethod: map['healthCheckMethod'] == null ? null : map['healthCheckMethod'] as String,
      healthCheckTimeout: map['healthCheckTimeout'] == null ? null : map['healthCheckTimeout'] as int,
      healthCheckType: map['healthCheckType'] == null ? null : map['healthCheckType'] as String,
      healthCheckUri: map['healthCheckUri'] == null ? null : map['healthCheckUri'] as String,
      healthyThreshold: map['healthyThreshold'] == null ? null : map['healthyThreshold'] as int,
      idleTimeout: map['idleTimeout'] == null ? null : map['idleTimeout'] as int,
      listenerForward: map['listenerForward'] == null ? null : map['listenerForward'] as String,
      loadBalancerId: map['loadBalancerId'] as String,
      masterSlaveServerGroupId: map['masterSlaveServerGroupId'] == null ? null : map['masterSlaveServerGroupId'] as String,
      persistenceTimeout: map['persistenceTimeout'] == null ? null : map['persistenceTimeout'] as int,
      protocol: map['protocol'] as String,
      proxyProtocolV2Enabled: map['proxyProtocolV2Enabled'] == null ? null : map['proxyProtocolV2Enabled'] as bool,
      requestTimeout: map['requestTimeout'] == null ? null : map['requestTimeout'] as int,
      scheduler: map['scheduler'] == null ? null : map['scheduler'] as String,
      serverCertificateId: map['serverCertificateId'] == null ? null : map['serverCertificateId'] as String,
      serverGroupId: map['serverGroupId'] == null ? null : map['serverGroupId'] as String,
      sslCertificateId: map['sslCertificateId'] == null ? null : map['sslCertificateId'] as String,
      stickySession: map['stickySession'] == null ? null : map['stickySession'] as String,
      stickySessionType: map['stickySessionType'] == null ? null : map['stickySessionType'] as String,
      tlsCipherPolicy: map['tlsCipherPolicy'] == null ? null : map['tlsCipherPolicy'] as String,
      unhealthyThreshold: map['unhealthyThreshold'] == null ? null : map['unhealthyThreshold'] as int,
      xForwardedFor: map['xForwardedFor'] == null ? null : ListenerXForwardedFor.fromMap((map['xForwardedFor'] as Map).cast<String, dynamic>()),
    );
  }
}

