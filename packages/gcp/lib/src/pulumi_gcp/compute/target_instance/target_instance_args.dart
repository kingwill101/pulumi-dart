// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TargetInstance.
class TargetInstanceArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// The Compute instance VM handling traffic for this target instance.
  /// Accepts the instance self-link, relative path
  /// (e.g. `projects/project/zones/zone/instances/instance`) or name. If
  /// name is given, the zone will default to the given zone or
  /// the provider-default zone and the project will default to the
  /// provider-level project.
  final pulumi.Input<String> instance;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// NAT option controlling how IPs are NAT'ed to the instance.
  /// Currently only NO_NAT (default value) is supported.
  /// Default value is `NO_NAT`.
  /// Possible values are: `NO_NAT`.
  final pulumi.Input<String>? natPolicy;

  /// The URL of the network this target instance uses to forward traffic. If not specified, the traffic will be forwarded to the network that the default network interface belongs to.
  final pulumi.Input<String>? network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The resource URL for the security policy associated with this target instance.
  final pulumi.Input<String>? securityPolicy;

  /// URL of the zone where the target instance resides.
  final pulumi.Input<String>? zone;

  TargetInstanceArgs({
    this.description,
    required this.instance,
    this.name,
    this.natPolicy,
    this.network,
    this.project,
    this.securityPolicy,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['instance'] = instance;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final natPolicyValue = natPolicy;
    if (natPolicyValue != null) {
      map['natPolicy'] = natPolicyValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final securityPolicyValue = securityPolicy;
    if (securityPolicyValue != null) {
      map['securityPolicy'] = securityPolicyValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory TargetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return TargetInstanceArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      natPolicy: pulumi.Input.asOptionalInput<String>(map['natPolicy']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      securityPolicy:
          pulumi.Input.asOptionalInput<String>(map['securityPolicy']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
