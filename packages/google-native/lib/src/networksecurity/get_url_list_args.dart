// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_get_url_list_args_doc}
/// Arguments for getUrlList.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_get_url_list_args_doc}
class GetUrlListArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> urlListId;

  /// Creates a new [GetUrlListArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [urlListId] Required.
  GetUrlListArgs({
    required String location,
    String? project,
    required String urlListId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        urlListId = pulumi.Input.asInput<String>(urlListId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['urlListId'] = urlListId;
    return map;
  }

  factory GetUrlListArgs.fromMap(Map<String, dynamic> map) {
    return GetUrlListArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      urlListId: map['urlListId'] as String,
    );
  }
}
