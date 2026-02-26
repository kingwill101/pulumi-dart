// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNetworkEndpointGroup.
class GetNetworkEndpointGroupArgs {
  /// The Network Endpoint Group name.
  /// Provide either this or a <span pulumi-lang-nodejs="`selfLink`" pulumi-lang-dotnet="`SelfLink`" pulumi-lang-go="`selfLink`" pulumi-lang-python="`self_link`" pulumi-lang-yaml="`selfLink`" pulumi-lang-java="`selfLink`">`self_link`</span>.
  final Input<String>? name;

  /// The ID of the project to list versions in.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The Network Endpoint Group self_link.
  final Input<String>? selfLink;

  /// The Network Endpoint Group availability zone.
  final Input<String>? zone;

  GetNetworkEndpointGroupArgs({
    this.name,
    this.project,
    this.selfLink,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetNetworkEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkEndpointGroupArgs(
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      selfLink: Input.asOptionalInput<String>(map['selfLink']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
