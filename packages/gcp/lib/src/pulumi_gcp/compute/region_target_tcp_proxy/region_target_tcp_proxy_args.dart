// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RegionTargetTcpProxy.
class RegionTargetTcpProxyArgs {
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

  /// The Region in which the created target TCP proxy should reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;

  RegionTargetTcpProxyArgs({
    required this.backendService,
    this.description,
    this.name,
    this.project,
    this.proxyBind,
    this.proxyHeader,
    this.region,
  });

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
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory RegionTargetTcpProxyArgs.fromMap(Map<String, dynamic> map) {
    return RegionTargetTcpProxyArgs(
      backendService: pulumi.Input.asInput<String>(map['backendService']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      proxyBind: pulumi.Input.asOptionalInput<bool>(map['proxyBind']),
      proxyHeader: pulumi.Input.asOptionalInput<String>(map['proxyHeader']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
