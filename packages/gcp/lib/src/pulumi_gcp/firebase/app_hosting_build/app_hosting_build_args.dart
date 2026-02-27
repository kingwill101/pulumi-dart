// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_hosting_build_source/app_hosting_build_source.dart';

/// The set of arguments for AppHostingBuild.
class AppHostingBuildArgs {
  /// Unstructured key value map that may be set by external tools to
  /// store and arbitrary metadata. They are not queryable and should be
  /// preserved when modifying objects.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// The ID of the Backend that this Build applies to
  final pulumi.Input<String> backend;

  /// The user-specified ID of the build being created.
  final pulumi.Input<String> buildId;

  /// Human-readable name. 63 character limit.
  final pulumi.Input<String>? displayName;

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the Backend that this Build applies to
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The source for the build.
  /// Structure is documented below.
  final pulumi.Input<AppHostingBuildSource> source;

  AppHostingBuildArgs({
    this.annotations,
    required this.backend,
    required this.buildId,
    this.displayName,
    this.labels,
    required this.location,
    this.project,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['backend'] = backend;
    map['buildId'] = buildId;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['source'] =
        pulumi.Input.mapInputValue<AppHostingBuildSource, Map<String, dynamic>>(
            source, (value) => value.toMap());
    return map;
  }

  factory AppHostingBuildArgs.fromMap(Map<String, dynamic> map) {
    return AppHostingBuildArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      backend: pulumi.Input.asInput<String>(map['backend']),
      buildId: pulumi.Input.asInput<String>(map['buildId']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      source: pulumi.Input.asInput<AppHostingBuildSource>(map['source']),
    );
  }
}
