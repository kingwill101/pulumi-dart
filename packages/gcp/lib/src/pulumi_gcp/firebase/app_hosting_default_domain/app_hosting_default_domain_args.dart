// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AppHostingDefaultDomain.
class AppHostingDefaultDomainArgs {
  /// The ID of the Backend that this Domain is associated with
  final pulumi.Input<String> backend;

  /// Whether the domain is disabled. Defaults to false.
  final pulumi.Input<bool>? disabled;

  /// Id of the domain. For default domain, it should be {{backend}}--{{project_id}}.{{location}}.hosted.app
  final pulumi.Input<String> domainId;

  /// The location of the Backend that this Domain is associated with
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  AppHostingDefaultDomainArgs({
    required this.backend,
    this.disabled,
    required this.domainId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backend'] = backend;
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['domainId'] = domainId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory AppHostingDefaultDomainArgs.fromMap(Map<String, dynamic> map) {
    return AppHostingDefaultDomainArgs(
      backend: pulumi.Input.asInput<String>(map['backend']),
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      domainId: pulumi.Input.asInput<String>(map['domainId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
