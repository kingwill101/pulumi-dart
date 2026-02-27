// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for UrlList.
class UrlListArgs2 {
  /// Optional. Free-text description of the resource.
  final Input<String>? description;
  final Input<String>? location;

  /// Name of the resource provided by the user. Name is of the form projects/{project}/locations/{location}/urlLists/{url_list} url_list should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  final Input<String>? name;
  final Input<String>? project;

  /// Required. Short name of the UrlList resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "url_list".
  final Input<String> urlListId;

  /// FQDNs and URLs.
  final Input<List<String>> values;

  UrlListArgs2({
    this.description,
    this.location,
    this.name,
    this.project,
    required this.urlListId,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['urlListId'] = urlListId;
    map['values'] = values;
    return map;
  }

  factory UrlListArgs2.fromMap(Map<String, dynamic> map) {
    return UrlListArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      urlListId: Input.asInput<String>(map['urlListId']),
      values: Input.asInput<List<String>>(map['values']),
    );
  }
}
