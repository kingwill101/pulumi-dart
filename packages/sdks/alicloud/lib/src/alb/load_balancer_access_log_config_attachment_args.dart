// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_load_balancer_access_log_config_attachment_load_balancer_access_log_config_attachment_args_doc}
/// The set of arguments for LoadBalancerAccessLogConfigAttachment.
/// {@endtemplate}
/// {@macro pulumi_alb_load_balancer_access_log_config_attachment_load_balancer_access_log_config_attachment_args_doc}
class LoadBalancerAccessLogConfigAttachmentArgs {
  /// The ID of the load balancing instance.
  final pulumi.Input<String> loadBalancerId;
  /// The log items shipped by the access log.
  final pulumi.Input<String> logProject;
  /// Logstore for log delivery.
  final pulumi.Input<String> logStore;

  /// Creates a new [LoadBalancerAccessLogConfigAttachmentArgs].
  /// [loadBalancerId] The ID of the load balancing instance.
  /// [logProject] The log items shipped by the access log.
  /// [logStore] Logstore for log delivery.
  LoadBalancerAccessLogConfigAttachmentArgs({
    required pulumi.Output<String> loadBalancerId,
    required pulumi.Output<String> logProject,
    required pulumi.Output<String> logStore,
  }) :
      loadBalancerId = pulumi.Input.asInput<String>(loadBalancerId),
      logProject = pulumi.Input.asInput<String>(logProject),
      logStore = pulumi.Input.asInput<String>(logStore);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerId': loadBalancerId,
      'logProject': logProject,
      'logStore': logStore,
    };
  }

  factory LoadBalancerAccessLogConfigAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerAccessLogConfigAttachmentArgs(
      loadBalancerId: pulumi.Output.create<String>(map['loadBalancerId'] as String),
      logProject: pulumi.Output.create<String>(map['logProject'] as String),
      logStore: pulumi.Output.create<String>(map['logStore'] as String),
    );
  }
}

