// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_hosting_build_source/app_hosting_build_source.dart';

/// The set of arguments for AppHostingBuild.
class AppHostingBuildArgs {
  /// Unstructured key value map that may be set by external tools to
  /// store and arbitrary metadata. They are not queryable and should be
  /// preserved when modifying objects.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// The ID of the Backend that this Build applies to
  final Input<String> backend;

  /// The user-specified ID of the build being created.
  final Input<String> buildId;

  /// Human-readable name. 63 character limit.
  final Input<String>? displayName;

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location of the Backend that this Build applies to
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The source for the build.
  /// Structure is documented below.
  final Input<AppHostingBuildSource> source;

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
        Input.mapInputValue<AppHostingBuildSource, Map<String, dynamic>>(
            source, (value) => value.toMap());
    return map;
  }

  factory AppHostingBuildArgs.fromMap(Map<String, dynamic> map) {
    return AppHostingBuildArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      backend: Input.asInput<String>(map['backend']),
      buildId: Input.asInput<String>(map['buildId']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      source: Input.asInput<AppHostingBuildSource>(map['source']),
    );
  }
}
