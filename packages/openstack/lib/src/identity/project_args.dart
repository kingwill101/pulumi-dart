// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_project_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_identity_project_project_args_doc}
class ProjectArgs {
  /// A description of the project.
  final pulumi.Input<String>? description;
  /// The domain this project belongs to.
  final pulumi.Input<String>? domainId;
  /// Whether the project is enabled or disabled. Valid
  /// values are `true` and `false`. Default is `true`.
  final pulumi.Input<bool>? enabled;
  /// Whether this project is a domain. Valid values
  /// are `true` and `false`. Default is `false`. Changing this creates a new
  /// project/domain.
  final pulumi.Input<bool>? isDomain;
  /// The name of the project.
  final pulumi.Input<String>? name;
  /// The parent of this project. Changing this creates
  /// a new project.
  final pulumi.Input<String>? parentId;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new project.
  final pulumi.Input<String>? region;
  /// Tags for the project. Changing this updates the existing
  /// project.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [ProjectArgs].
  /// [description] A description of the project.
  /// [domainId] The domain this project belongs to.
  /// [enabled] Whether the project is enabled or disabled. Valid
  /// [isDomain] Whether this project is a domain. Valid values
  /// [name] The name of the project.
  /// [parentId] The parent of this project. Changing this creates
  /// [region] The region in which to obtain the V3 Keystone client.
  /// [tags] Tags for the project. Changing this updates the existing
  ProjectArgs({
    String? description,
    String? domainId,
    bool? enabled,
    bool? isDomain,
    String? name,
    String? parentId,
    String? region,
    List<String>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      isDomain = pulumi.Input.asOptionalInput<bool>(isDomain),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentId = pulumi.Input.asOptionalInput<String>(parentId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'domainId': ?domainId,
      'enabled': ?enabled,
      'isDomain': ?isDomain,
      'name': ?name,
      'parentId': ?parentId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      description: map['description'] == null ? null : map['description'] as String,
      domainId: map['domainId'] == null ? null : map['domainId'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      isDomain: map['isDomain'] == null ? null : map['isDomain'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      parentId: map['parentId'] == null ? null : map['parentId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}

