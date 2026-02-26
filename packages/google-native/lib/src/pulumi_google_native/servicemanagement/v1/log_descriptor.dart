// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'label_descriptor3.dart';

/// A description of a log type. Example in YAML format: - name: library.googleapis.com/activity_history description: The history of borrowing and returning library items. display_name: Activity labels: - key: /customer_id description: Identifier of a library customer
class LogDescriptor {
  /// A human-readable description of this log. This information appears in the documentation and can contain details.
  final String? description;

  /// The human-readable name for this log. This information appears on the user interface and should be concise.
  final String? displayName;

  /// The set of labels that are available to describe a specific log entry. Runtime requests that contain labels not specified here are considered invalid.
  final List<LabelDescriptor3>? labels;

  /// The name of the log. It must be less than 512 characters long and can include the following characters: upper- and lower-case alphanumeric characters [A-Za-z0-9], and punctuation characters including slash, underscore, hyphen, period [/_-.].
  final String? name;

  LogDescriptor({
    this.description,
    this.displayName,
    this.labels,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = Input.encodeList<LabelDescriptor3, Map<String, dynamic>>(
          labelsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory LogDescriptor.fromMap(Map<String, dynamic> map) {
    return LogDescriptor(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : Input.decodeList<LabelDescriptor3>(
              map['labels'],
              (value) => LabelDescriptor3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
