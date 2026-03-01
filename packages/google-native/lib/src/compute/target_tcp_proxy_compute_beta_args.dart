// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_tcp_proxy_proxy_header_compute_beta.dart';

/// {@template pulumi_compute_beta_target_tcp_proxy_compute_beta_args_doc}
/// The set of arguments for TargetTcpProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_target_tcp_proxy_compute_beta_args_doc}
class TargetTcpProxyComputeBetaArgs {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// This field only applies when the forwarding rule that references this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When this field is set to true, Envoy proxies set up inbound traffic interception and bind to the IP address and port specified in the forwarding rule. This is generally useful when using Traffic Director to configure Envoy as a gateway or middle proxy (in other words, not a sidecar proxy). The Envoy proxy listens for inbound requests and handles requests when it receives them. The default is false.
  final pulumi.Input<bool>? proxyBind;

  /// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  final pulumi.Input<TargetTcpProxyProxyHeaderComputeBeta>? proxyHeader;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// URL to the BackendService resource.
  final pulumi.Input<String>? service;

  /// Creates a new [TargetTcpProxyComputeBetaArgs].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [proxyBind] This field only applies when the forwarding rule that references this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When this field is set to true, Envoy proxies set up inbound traffic interception and bind to the IP address and port specified in the forwarding rule. This is generally useful when using Traffic Director to configure Envoy as a gateway or middle proxy (in other words, not a sidecar proxy). The Envoy proxy listens for inbound requests and handles requests when it receives them. The default is false.
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [service] URL to the BackendService resource.
  TargetTcpProxyComputeBetaArgs({
    String? description,
    String? name,
    String? project,
    bool? proxyBind,
    TargetTcpProxyProxyHeaderComputeBeta? proxyHeader,
    String? requestId,
    String? service,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       proxyBind = pulumi.Input.asOptionalInput<bool>(proxyBind),
       proxyHeader =
           pulumi.Input.asOptionalInput<TargetTcpProxyProxyHeaderComputeBeta>(
             proxyHeader,
           ),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       service = pulumi.Input.asOptionalInput<String>(service);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'proxyBind': ?proxyBind,
      'proxyHeader':
          ?pulumi.Input.mapOptionalInputValue<
            TargetTcpProxyProxyHeaderComputeBeta,
            String
          >(proxyHeader, (value) => value.value),
      'requestId': ?requestId,
      'service': ?service,
    };
  }

  factory TargetTcpProxyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return TargetTcpProxyComputeBetaArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      proxyBind: map['proxyBind'] == null ? null : map['proxyBind'] as bool,
      proxyHeader: map['proxyHeader'] == null
          ? null
          : TargetTcpProxyProxyHeaderComputeBeta.fromValue(
              map['proxyHeader'] as String,
            ),
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
