// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_target_tcpproxy_target_tcpproxy_args_doc}
/// The set of arguments for TargetTCPProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_target_tcpproxy_target_tcpproxy_args_doc}
class TargetTCPProxyArgs {
  /// A reference to the BackendService resource.
  final pulumi.Input<String> backendService;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// This field only applies when the forwarding rule that references
  /// this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<bool>? proxyBind;

  /// Specifies the type of proxy header to append before sending data to
  /// the backend.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `PROXY_V1`.
  final pulumi.Input<String>? proxyHeader;

  /// Creates a new [TargetTCPProxyArgs].
  /// [backendService] A reference to the BackendService resource.
  /// [description] An optional description of this resource.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [proxyBind] This field only applies when the forwarding rule that references
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to
  TargetTCPProxyArgs({
    required String backendService,
    String? description,
    String? name,
    String? project,
    bool? proxyBind,
    String? proxyHeader,
  })  : backendService = pulumi.Input.asInput<String>(backendService),
        description = pulumi.Input.asOptionalInput<String>(description),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        proxyBind = pulumi.Input.asOptionalInput<bool>(proxyBind),
        proxyHeader = pulumi.Input.asOptionalInput<String>(proxyHeader);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendService'] = backendService;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final proxyBindValue = proxyBind;
    if (proxyBindValue != null) {
      map['proxyBind'] = proxyBindValue;
    }
    final proxyHeaderValue = proxyHeader;
    if (proxyHeaderValue != null) {
      map['proxyHeader'] = proxyHeaderValue;
    }
    return map;
  }

  factory TargetTCPProxyArgs.fromMap(Map<String, dynamic> map) {
    return TargetTCPProxyArgs(
      backendService: map['backendService'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      proxyBind: map['proxyBind'] == null ? null : map['proxyBind'] as bool,
      proxyHeader:
          map['proxyHeader'] == null ? null : map['proxyHeader'] as String,
    );
  }
}
