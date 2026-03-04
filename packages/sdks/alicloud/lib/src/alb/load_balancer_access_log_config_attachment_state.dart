// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LoadBalancerAccessLogConfigAttachment resources.
class LoadBalancerAccessLogConfigAttachmentState {
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;

  /// The ID of the load balancing instance.
  final pulumi.Input<String>? loadBalancerId;

  /// The log items shipped by the access log.
  final pulumi.Input<String>? logProject;

  /// Logstore for log delivery.
  final pulumi.Input<String>? logStore;

  /// Creates a new [LoadBalancerAccessLogConfigAttachmentState].
  /// [createTime] The creation time of the resource
  /// [loadBalancerId] The ID of the load balancing instance.
  /// [logProject] The log items shipped by the access log.
  /// [logStore] Logstore for log delivery.
  LoadBalancerAccessLogConfigAttachmentState({
    this.createTime,
    this.loadBalancerId,
    this.logProject,
    this.logStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'loadBalancerId': ?loadBalancerId,
      'logProject': ?logProject,
      'logStore': ?logStore,
    };
  }

  factory LoadBalancerAccessLogConfigAttachmentState.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoadBalancerAccessLogConfigAttachmentState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancerId: (() {
        final guardedValue = map['loadBalancerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logProject: (() {
        final guardedValue = map['logProject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logStore: (() {
        final guardedValue = map['logStore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
