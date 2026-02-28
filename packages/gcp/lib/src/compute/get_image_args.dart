// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_image_get_image_args_doc}
/// Arguments for getImage.
/// {@endtemplate}
/// {@macro pulumi_compute_get_image_get_image_args_doc}
class GetImageArgs {
  /// The family name of the image.
  final pulumi.Input<String>? family;
  final pulumi.Input<String>? filter;

  /// A boolean to indicate either to take to most recent image if your filter
  /// returns more than one image.
  final pulumi.Input<bool>? mostRecent;

  /// , `family` or `filter` - (Required) The name of a specific image or a family.
  /// Exactly one of `name`, `family` or `filter` must be specified. If `name` is specified, it will fetch
  /// the corresponding image. If `family` is specified, it will return the latest image
  /// that is part of an image family and is not deprecated. If you specify `filter`, your
  /// filter must return exactly one image unless you use `most_recent`.
  /// Filter syntax can be found [here](https://cloud.google.com/compute/docs/reference/rest/v1/images/list) in the filter section.
  ///
  /// - - -
  final pulumi.Input<String>? name;

  /// The project in which the resource belongs. If it is not
  /// provided, the provider project is used. If you are using a
  /// [public base image][pubimg], be sure to specify the correct Image Project.
  final pulumi.Input<String>? project;

  /// Creates a new [GetImageArgs].
  /// [family] The family name of the image.
  /// [filter] Optional.
  /// [mostRecent] A boolean to indicate either to take to most recent image if your filter
  /// [name] , `family` or `filter` - (Required) The name of a specific image or a family.
  /// [project] The project in which the resource belongs. If it is not
  GetImageArgs({
    String? family,
    String? filter,
    bool? mostRecent,
    String? name,
    String? project,
  })  : family = pulumi.Input.asOptionalInput<String>(family),
        filter = pulumi.Input.asOptionalInput<String>(filter),
        mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final familyValue = family;
    if (familyValue != null) {
      map['family'] = familyValue;
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(
      family: map['family'] == null ? null : map['family'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
