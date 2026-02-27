// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'serving_config.dart';

/// The set of arguments for Version.
class VersionArgs8 {
  /// The configuration for the behavior of the site. This configuration exists in the [`firebase.json`](https://firebase.google.com/docs/cli/#the_firebasejson_file) file.
  final Input<ServingConfig>? config;

  /// The labels used for extra metadata and/or filtering.
  final Input<Map<String, String>>? labels;

  /// The fully-qualified resource name for the version, in the format: sites/ SITE_ID/versions/VERSION_ID This name is provided in the response body when you call [`CreateVersion`](sites.versions/create).
  final Input<String>? name;
  final Input<String>? project;
  final Input<String> siteId;

  /// The self-reported size of the version. This value is used for a pre-emptive quota check for legacy version uploads.
  final Input<String>? sizeBytes;

  /// A unique id for the new version. This is was only specified for legacy version creations, and should be blank.
  final Input<String>? versionId;

  VersionArgs8({
    this.config,
    this.labels,
    this.name,
    this.project,
    required this.siteId,
    this.sizeBytes,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configValue = config;
    if (configValue != null) {
      map['config'] =
          Input.mapOptionalInputValue<ServingConfig, Map<String, dynamic>>(
              configValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['siteId'] = siteId;
    final sizeBytesValue = sizeBytes;
    if (sizeBytesValue != null) {
      map['sizeBytes'] = sizeBytesValue;
    }
    final versionIdValue = versionId;
    if (versionIdValue != null) {
      map['versionId'] = versionIdValue;
    }
    return map;
  }

  factory VersionArgs8.fromMap(Map<String, dynamic> map) {
    return VersionArgs8(
      config: Input.asOptionalInput<ServingConfig>(map['config']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      siteId: Input.asInput<String>(map['siteId']),
      sizeBytes: Input.asOptionalInput<String>(map['sizeBytes']),
      versionId: Input.asOptionalInput<String>(map['versionId']),
    );
  }
}
