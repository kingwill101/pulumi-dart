// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UrlList.
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

  UrlListArgs({
    this.description,
    required this.location,
    this.name,
    this.project,
    required this.values,
  });

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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      values: pulumi.Input.asInput<List<String>>(map['values']),
    );
  }
}
