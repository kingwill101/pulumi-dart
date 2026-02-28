// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_url_list_args_doc}
/// The set of arguments for UrlList.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_url_list_args_doc}
class UrlListArgs {
  /// Optional. Free-text description of the resource.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? location;
  /// Name of the resource provided by the user. Name is of the form projects/{project}/locations/{location}/urlLists/{url_list} url_list should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Required. Short name of the UrlList resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "url_list".
  final pulumi.Input<String> urlListId;
  /// FQDNs and URLs.
  final pulumi.Input<List<String>> values;

  /// Creates a new [UrlListArgs].
  /// [description] Optional. Free-text description of the resource.
  /// [location] Optional.
  /// [name] Name of the resource provided by the user. Name is of the form projects/{project}/locations/{location}/urlLists/{url_list} url_list should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  /// [project] Optional.
  /// [urlListId] Required. Short name of the UrlList resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "url_list".
  /// [values] FQDNs and URLs.
  UrlListArgs({
    String? description,
    String? location,
    String? name,
    String? project,
    required String urlListId,
    required List<String> values,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      urlListId = pulumi.Input.asInput<String>(urlListId),
      values = pulumi.Input.asInput<List<String>>(values);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'urlListId': urlListId,
      'values': values,
    };
  }

  factory UrlListArgs.fromMap(Map<String, dynamic> map) {
    return UrlListArgs(
      description: map['description'] == null ? null : map['description'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      urlListId: map['urlListId'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

