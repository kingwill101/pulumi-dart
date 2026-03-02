// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Rule resources.
class RuleState {
  /// The cookie configured on the server. It is mandatory when `sticky_session` is `on` and `sticky_session_type` is `server`. Otherwise, it will be ignored. Valid value：String in line with RFC 2965, with length being `1` - `200`. It only contains characters such as ASCII codes, English letters and digits instead of the comma, semicolon or spacing, and it cannot start with $.
  final pulumi.Input<String>? cookie;
  /// Cookie timeout. It is mandatory when `sticky_session` is `on` and `sticky_session_type` is `insert`. Otherwise, it will be ignored. Valid values: [1-86400] in seconds.
  final pulumi.Input<int>? cookieTimeout;
  /// Checking DeleteProtection of SLB instance before deleting. If `true`, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default value: `false`.
  final pulumi.Input<bool>? deleteProtectionValidation;
  /// Domain name of the forwarding rule. It can contain letters a-z, numbers 0-9, hyphens (-), and periods (.),
  /// and wildcard characters. The following two domain name formats are supported:
  /// - Standard domain name: www.test.com
  /// - Wildcard domain name: *.test.com. wildcard (*) must be the first character in the format of (*.)
  final pulumi.Input<String>? domain;
  /// The listener frontend port which is used to launch the new forwarding rule. Valid values: [1-65535].
  final pulumi.Input<int>? frontendPort;
  /// Whether to enable health check. Valid values: `on` and `off`. `TCP` and `UDP` listener's `health_check` is always `on`, so it will be ignore when launching `TCP` or `UDP` listener. **NOTE:** `health_check` is required and takes effect only when `listener_sync` is set to `off`.
  final pulumi.Input<String>? healthCheck;
  /// Port used for health check. Valid values: [1-65535]. Default value: `None` means the backend server port is used.
  final pulumi.Input<int>? healthCheckConnectPort;
  /// Domain name used for health check. When it used to launch TCP listener, `health_check_type` must be `http`. Its length is limited to 1-80 and only characters such as letters, digits, ‘-‘ and ‘.’ are allowed. When it is not set or empty, Server Load Balancer uses the private network IP address of each backend server as Domain used for health check.
  final pulumi.Input<String>? healthCheckDomain;
  /// Regular health check HTTP status code. Multiple codes are segmented by “,”. It is required when `health_check` is `on`. Default value: `http_2xx`. Valid values: `http_2xx`, `http_3xx`, `http_4xx` and `http_5xx`.
  final pulumi.Input<String>? healthCheckHttpCode;
  /// Time interval of health checks. It is required when `health_check` is `on`. Valid values: [1-50] in seconds. Default value: `2`.
  final pulumi.Input<int>? healthCheckInterval;
  /// Maximum timeout of each health check response. It is required when `health_check` is `on`. Valid values: [1-300] in seconds. Default value: `5`. Note: If `health_check_timeout` < `health_check_interval`, its will be replaced by `health_check_interval`.
  final pulumi.Input<int>? healthCheckTimeout;
  /// URI used for health check. When it used to launch TCP listener, `health_check_type` must be `http`. Its length is limited to 1-80 and it must start with /. Only characters such as letters, digits, ‘-’, ‘/’, ‘.’, ‘%’, ‘?’, #’ and ‘&’ are allowed.
  final pulumi.Input<String>? healthCheckUri;
  /// Threshold determining the result of the health check is success. It is required when `health_check` is `on`. Valid values: [1-10] in seconds. Default value: `3`.
  final pulumi.Input<int>? healthyThreshold;
  /// Indicates whether a forwarding rule inherits the settings of a health check , session persistence, and scheduling algorithm from a listener. Default value: `on`. Valid values: `on` and `off`.
  final pulumi.Input<String>? listenerSync;
  /// The Load Balancer ID which is used to launch the new forwarding rule.
  final pulumi.Input<String>? loadBalancerId;
  /// Name of the forwarding rule. Our plugin provides a default name: "tf-slb-rule".
  final pulumi.Input<String>? name;
  /// Scheduling algorithm. Valid values: `wrr`, `rr` and `wlc`. Default value: `wrr`. **NOTE:** `scheduler` is required and takes effect only when `listener_sync` is set to `off`.
  final pulumi.Input<String>? scheduler;
  /// ID of a virtual server group that will be forwarded.
  final pulumi.Input<String>? serverGroupId;
  /// Whether to enable session persistence. Valid values: `on` and `off`. Default value: `off`. **NOTE:** `sticky_session` is required and takes effect only when `listener_sync` is set to `off`.
  final pulumi.Input<String>? stickySession;
  /// Mode for handling the cookie. If `sticky_session` is `on`, it is mandatory. Otherwise, it will be ignored. Valid values: `insert` and `server`. `insert` means it is inserted from Server Load Balancer; `server` means the Server Load Balancer learns from the backend server.
  final pulumi.Input<String>? stickySessionType;
  /// Threshold determining the result of the health check is fail. It is required when `health_check` is `on`. Valid values: [1-10] in seconds. Default value: `3`.
  final pulumi.Input<int>? unhealthyThreshold;
  /// Domain of the forwarding rule. It must be 2-80 characters in length. Only letters a-z, numbers 0-9, and characters '-' '/' '?' '%' '#' and '&' are allowed. URLs must be started with the character '/', but cannot be '/' alone.
  final pulumi.Input<String>? url;

  /// Creates a new [RuleState].
  /// [cookie] The cookie configured on the server. It is mandatory when `sticky_session` is `on` and `sticky_session_type` is `server`. Otherwise, it will be ignored. Valid value：String in line with RFC 2965, with length being `1` - `200`. It only contains characters such as ASCII codes, English letters and digits instead of the comma, semicolon or spacing, and it cannot start with $.
  /// [cookieTimeout] Cookie timeout. It is mandatory when `sticky_session` is `on` and `sticky_session_type` is `insert`. Otherwise, it will be ignored. Valid values: [1-86400] in seconds.
  /// [deleteProtectionValidation] Checking DeleteProtection of SLB instance before deleting. If `true`, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default value: `false`.
  /// [domain] Domain name of the forwarding rule. It can contain letters a-z, numbers 0-9, hyphens (-), and periods (.),
  /// [frontendPort] The listener frontend port which is used to launch the new forwarding rule. Valid values: [1-65535].
  /// [healthCheck] Whether to enable health check. Valid values: `on` and `off`. `TCP` and `UDP` listener's `health_check` is always `on`, so it will be ignore when launching `TCP` or `UDP` listener. **NOTE:** `health_check` is required and takes effect only when `listener_sync` is set to `off`.
  /// [healthCheckConnectPort] Port used for health check. Valid values: [1-65535]. Default value: `None` means the backend server port is used.
  /// [healthCheckDomain] Domain name used for health check. When it used to launch TCP listener, `health_check_type` must be `http`. Its length is limited to 1-80 and only characters such as letters, digits, ‘-‘ and ‘.’ are allowed. When it is not set or empty, Server Load Balancer uses the private network IP address of each backend server as Domain used for health check.
  /// [healthCheckHttpCode] Regular health check HTTP status code. Multiple codes are segmented by “,”. It is required when `health_check` is `on`. Default value: `http_2xx`. Valid values: `http_2xx`, `http_3xx`, `http_4xx` and `http_5xx`.
  /// [healthCheckInterval] Time interval of health checks. It is required when `health_check` is `on`. Valid values: [1-50] in seconds. Default value: `2`.
  /// [healthCheckTimeout] Maximum timeout of each health check response. It is required when `health_check` is `on`. Valid values: [1-300] in seconds. Default value: `5`. Note: If `health_check_timeout` < `health_check_interval`, its will be replaced by `health_check_interval`.
  /// [healthCheckUri] URI used for health check. When it used to launch TCP listener, `health_check_type` must be `http`. Its length is limited to 1-80 and it must start with /. Only characters such as letters, digits, ‘-’, ‘/’, ‘.’, ‘%’, ‘?’, #’ and ‘&’ are allowed.
  /// [healthyThreshold] Threshold determining the result of the health check is success. It is required when `health_check` is `on`. Valid values: [1-10] in seconds. Default value: `3`.
  /// [listenerSync] Indicates whether a forwarding rule inherits the settings of a health check , session persistence, and scheduling algorithm from a listener. Default value: `on`. Valid values: `on` and `off`.
  /// [loadBalancerId] The Load Balancer ID which is used to launch the new forwarding rule.
  /// [name] Name of the forwarding rule. Our plugin provides a default name: "tf-slb-rule".
  /// [scheduler] Scheduling algorithm. Valid values: `wrr`, `rr` and `wlc`. Default value: `wrr`. **NOTE:** `scheduler` is required and takes effect only when `listener_sync` is set to `off`.
  /// [serverGroupId] ID of a virtual server group that will be forwarded.
  /// [stickySession] Whether to enable session persistence. Valid values: `on` and `off`. Default value: `off`. **NOTE:** `sticky_session` is required and takes effect only when `listener_sync` is set to `off`.
  /// [stickySessionType] Mode for handling the cookie. If `sticky_session` is `on`, it is mandatory. Otherwise, it will be ignored. Valid values: `insert` and `server`. `insert` means it is inserted from Server Load Balancer; `server` means the Server Load Balancer learns from the backend server.
  /// [unhealthyThreshold] Threshold determining the result of the health check is fail. It is required when `health_check` is `on`. Valid values: [1-10] in seconds. Default value: `3`.
  /// [url] Domain of the forwarding rule. It must be 2-80 characters in length. Only letters a-z, numbers 0-9, and characters '-' '/' '?' '%' '#' and '&' are allowed. URLs must be started with the character '/', but cannot be '/' alone.
  RuleState({
    this.cookie,
    this.cookieTimeout,
    this.deleteProtectionValidation,
    this.domain,
    this.frontendPort,
    this.healthCheck,
    this.healthCheckConnectPort,
    this.healthCheckDomain,
    this.healthCheckHttpCode,
    this.healthCheckInterval,
    this.healthCheckTimeout,
    this.healthCheckUri,
    this.healthyThreshold,
    this.listenerSync,
    this.loadBalancerId,
    this.name,
    this.scheduler,
    this.serverGroupId,
    this.stickySession,
    this.stickySessionType,
    this.unhealthyThreshold,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookie': ?cookie,
      'cookieTimeout': ?cookieTimeout,
      'deleteProtectionValidation': ?deleteProtectionValidation,
      'domain': ?domain,
      'frontendPort': ?frontendPort,
      'healthCheck': ?healthCheck,
      'healthCheckConnectPort': ?healthCheckConnectPort,
      'healthCheckDomain': ?healthCheckDomain,
      'healthCheckHttpCode': ?healthCheckHttpCode,
      'healthCheckInterval': ?healthCheckInterval,
      'healthCheckTimeout': ?healthCheckTimeout,
      'healthCheckUri': ?healthCheckUri,
      'healthyThreshold': ?healthyThreshold,
      'listenerSync': ?listenerSync,
      'loadBalancerId': ?loadBalancerId,
      'name': ?name,
      'scheduler': ?scheduler,
      'serverGroupId': ?serverGroupId,
      'stickySession': ?stickySession,
      'stickySessionType': ?stickySessionType,
      'unhealthyThreshold': ?unhealthyThreshold,
      'url': ?url,
    };
  }

  factory RuleState.fromMap(Map<String, dynamic> map) {
    return RuleState(
      cookie: map['cookie'] == null ? null : (map['cookie'] as String).input(),
      cookieTimeout: map['cookieTimeout'] == null ? null : (map['cookieTimeout'] as int).input(),
      deleteProtectionValidation: map['deleteProtectionValidation'] == null ? null : (map['deleteProtectionValidation'] as bool).input(),
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      frontendPort: map['frontendPort'] == null ? null : (map['frontendPort'] as int).input(),
      healthCheck: map['healthCheck'] == null ? null : (map['healthCheck'] as String).input(),
      healthCheckConnectPort: map['healthCheckConnectPort'] == null ? null : (map['healthCheckConnectPort'] as int).input(),
      healthCheckDomain: map['healthCheckDomain'] == null ? null : (map['healthCheckDomain'] as String).input(),
      healthCheckHttpCode: map['healthCheckHttpCode'] == null ? null : (map['healthCheckHttpCode'] as String).input(),
      healthCheckInterval: map['healthCheckInterval'] == null ? null : (map['healthCheckInterval'] as int).input(),
      healthCheckTimeout: map['healthCheckTimeout'] == null ? null : (map['healthCheckTimeout'] as int).input(),
      healthCheckUri: map['healthCheckUri'] == null ? null : (map['healthCheckUri'] as String).input(),
      healthyThreshold: map['healthyThreshold'] == null ? null : (map['healthyThreshold'] as int).input(),
      listenerSync: map['listenerSync'] == null ? null : (map['listenerSync'] as String).input(),
      loadBalancerId: map['loadBalancerId'] == null ? null : (map['loadBalancerId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      scheduler: map['scheduler'] == null ? null : (map['scheduler'] as String).input(),
      serverGroupId: map['serverGroupId'] == null ? null : (map['serverGroupId'] as String).input(),
      stickySession: map['stickySession'] == null ? null : (map['stickySession'] as String).input(),
      stickySessionType: map['stickySessionType'] == null ? null : (map['stickySessionType'] as String).input(),
      unhealthyThreshold: map['unhealthyThreshold'] == null ? null : (map['unhealthyThreshold'] as int).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

