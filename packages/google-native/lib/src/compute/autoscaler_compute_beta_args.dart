// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_policy_compute_beta.dart';

/// {@template pulumi_compute_beta_autoscaler_compute_beta_args_doc}
/// The set of arguments for Autoscaler.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_autoscaler_compute_beta_args_doc}
class AutoscalerComputeBetaArgs {
  /// The configuration parameters for the autoscaling algorithm. You can define one or more signals for an autoscaler: cpuUtilization, customMetricUtilizations, and loadBalancingUtilization. If none of these are specified, the default will be to autoscale based on cpuUtilization to 0.6 or 60%.
  final pulumi.Input<AutoscalingPolicyComputeBeta>? autoscalingPolicy;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// URL of the managed instance group that this autoscaler will scale. This field is required when creating an autoscaler.
  final pulumi.Input<String>? target;
  final pulumi.Input<String>? zone;

  /// Creates a new [AutoscalerComputeBetaArgs].
  /// [autoscalingPolicy] The configuration parameters for the autoscaling algorithm. You can define one or more signals for an autoscaler: cpuUtilization, customMetricUtilizations, and loadBalancingUtilization. If none of these are specified, the default will be to autoscale based on cpuUtilization to 0.6 or 60%.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [target] URL of the managed instance group that this autoscaler will scale. This field is required when creating an autoscaler.
  /// [zone] Optional.
  AutoscalerComputeBetaArgs({
    AutoscalingPolicyComputeBeta? autoscalingPolicy,
    String? description,
    String? name,
    String? project,
    String? requestId,
    String? target,
    String? zone,
  }) : autoscalingPolicy =
           pulumi.Input.asOptionalInput<AutoscalingPolicyComputeBeta>(
             autoscalingPolicy,
           ),
       description = pulumi.Input.asOptionalInput<String>(description),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       target = pulumi.Input.asOptionalInput<String>(target),
       zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            AutoscalingPolicyComputeBeta,
            Map<String, dynamic>
          >(autoscalingPolicy, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'target': ?target,
      'zone': ?zone,
    };
  }

  factory AutoscalerComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return AutoscalerComputeBetaArgs(
      autoscalingPolicy: map['autoscalingPolicy'] == null
          ? null
          : AutoscalingPolicyComputeBeta.fromMap(
              (map['autoscalingPolicy'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      target: map['target'] == null ? null : map['target'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
