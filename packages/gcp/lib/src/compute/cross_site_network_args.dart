// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_cross_site_network_cross_site_network_args_doc}
/// The set of arguments for CrossSiteNetwork.
/// {@endtemplate}
/// {@macro pulumi_compute_cross_site_network_cross_site_network_args_doc}
class CrossSiteNetworkArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [CrossSiteNetworkArgs].
  /// [description] An optional description of this resource.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be
  /// [project] The ID of the project in which the resource belongs.
  CrossSiteNetworkArgs({String? description, String? name, String? project})
    : description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'project': ?project,
    };
  }

  factory CrossSiteNetworkArgs.fromMap(Map<String, dynamic> map) {
    return CrossSiteNetworkArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
