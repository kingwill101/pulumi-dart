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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? loadBalancerId,
    pulumi.Output<String>? logProject,
    pulumi.Output<String>? logStore,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      loadBalancerId = pulumi.Input.asOptionalInput<String>(loadBalancerId),
      logProject = pulumi.Input.asOptionalInput<String>(logProject),
      logStore = pulumi.Input.asOptionalInput<String>(logStore);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'loadBalancerId': ?loadBalancerId,
      'logProject': ?logProject,
      'logStore': ?logStore,
    };
  }

  factory LoadBalancerAccessLogConfigAttachmentState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerAccessLogConfigAttachmentState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      loadBalancerId: map['loadBalancerId'] == null ? null : pulumi.Output.create<String>(map['loadBalancerId'] as String),
      logProject: map['logProject'] == null ? null : pulumi.Output.create<String>(map['logProject'] as String),
      logStore: map['logStore'] == null ? null : pulumi.Output.create<String>(map['logStore'] as String),
    );
  }
}

