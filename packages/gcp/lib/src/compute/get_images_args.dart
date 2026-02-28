// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_images_get_images_args_doc}
/// Arguments for getImages.
/// {@endtemplate}
/// {@macro pulumi_compute_get_images_get_images_args_doc}
class GetImagesArgs {
  /// Filter for the images to be returned by the data source. Syntax can be found [here](https://cloud.google.com/compute/docs/reference/rest/v1/images/list) in the filter section.
  ///
  /// - - -
  final pulumi.Input<String>? filter;

  /// The project in which the resource belongs. If it is not
  /// provided, the provider project is used. If you are using a
  /// [public base image][pubimg], be sure to specify the correct Image Project.
  final pulumi.Input<String>? project;

  /// Creates a new [GetImagesArgs].
  /// [filter] Filter for the images to be returned by the data source. Syntax can be found [here](https://cloud.google.com/compute/docs/reference/rest/v1/images/list) in the filter section.
  /// [project] The project in which the resource belongs. If it is not
  GetImagesArgs({
    String? filter,
    String? project,
  })  : filter = pulumi.Input.asOptionalInput<String>(filter),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetImagesArgs(
      filter: map['filter'] == null ? null : map['filter'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
