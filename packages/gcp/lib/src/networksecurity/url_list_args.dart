// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_url_list_url_list_args_doc}
/// The set of arguments for UrlList.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_url_list_url_list_args_doc}
class UrlListArgs {
  /// Free-text description of the resource.
  final pulumi.Input<String>? description;

  /// The location of the url lists.
  final pulumi.Input<String> location;

  /// Short name of the UrlList resource to be created.
  /// This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. 'urlList'.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// FQDNs and URLs.
  final pulumi.Input<List<String>> values;

  /// Creates a new [UrlListArgs].
  /// [description] Free-text description of the resource.
  /// [location] The location of the url lists.
  /// [name] Short name of the UrlList resource to be created.
  /// [project] The ID of the project in which the resource belongs.
  /// [values] FQDNs and URLs.
  UrlListArgs({
    String? description,
    required String location,
    String? name,
    String? project,
    required List<String> values,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        location = pulumi.Input.asInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        values = pulumi.Input.asInput<List<String>>(values);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['values'] = values;
    return map;
  }

  factory UrlListArgs.fromMap(Map<String, dynamic> map) {
    return UrlListArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
