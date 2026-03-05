// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayVpnAttachmentsAttachmentHealthCheckConfig {
  /// Target IP.
  final pulumi.Input<String> dip;
  /// Whether health check is enabled:-**false**: not enabled. -**true**: enabled.
  final pulumi.Input<bool> enable;
  /// The health check retry interval, in seconds.
  final pulumi.Input<int> interval;
  /// Whether to revoke the published route when the health check fails- **revoke_route**(default): withdraws published routes.- **reserve_route**: does not withdraw published routes.
  final pulumi.Input<String> policy;
  /// Number of retries for health check.
  final pulumi.Input<int> retry;
  /// SOURCE IP.
  final pulumi.Input<String> sip;
  /// The status of the resource. Valid values: `init`, `active`, `attaching`, `attached`, `detaching`, `financialLocked`, `provisioning`, `updating`, `upgrading`, `deleted`.
  final pulumi.Input<String> status;

  /// Creates a new [GetGatewayVpnAttachmentsAttachmentHealthCheckConfig].
  /// [dip] Target IP.
  /// [enable] Whether health check is enabled:-**false**: not enabled. -**true**: enabled.
  /// [interval] The health check retry interval, in seconds.
  /// [policy] Whether to revoke the published route when the health check fails- **revoke_route**(default): withdraws published routes.- **reserve_route**: does not withdraw published routes.
  /// [retry] Number of retries for health check.
  /// [sip] SOURCE IP.
  /// [status] The status of the resource. Valid values: `init`, `active`, `attaching`, `attached`, `detaching`, `financialLocked`, `provisioning`, `updating`, `upgrading`, `deleted`.
  GetGatewayVpnAttachmentsAttachmentHealthCheckConfig({
    required this.dip,
    required this.enable,
    required this.interval,
    required this.policy,
    required this.retry,
    required this.sip,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dip': dip,
      'enable': enable,
      'interval': interval,
      'policy': policy,
      'retry': retry,
      'sip': sip,
      'status': status,
    };
  }

  factory GetGatewayVpnAttachmentsAttachmentHealthCheckConfig.fromMap(Map<String, dynamic> map) {
    return GetGatewayVpnAttachmentsAttachmentHealthCheckConfig(
      dip: pulumi.Input.fromValue(map['dip'] as String),
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      interval: pulumi.Input.fromValue(map['interval'] as int),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      retry: pulumi.Input.fromValue(map['retry'] as int),
      sip: pulumi.Input.fromValue(map['sip'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

