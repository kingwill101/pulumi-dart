// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'composite_type_label_entry_response.dart';
import 'operation_response2.dart';
import 'template_contents_response.dart';

/// Result data returned by getCompositeType.
class GetCompositeTypeResult {
  /// An optional textual description of the resource; provided by the client when the resource is created.
  final String description;

  /// Creation timestamp in RFC3339 text format.
  final String insertTime;

  /// Map of labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  final List<CompositeTypeLabelEntryResponse> labels;

  /// Name of the composite type, must follow the expression: `[a-z]([-a-z0-9_.]{0,61}[a-z0-9])?`.
  final String name;

  /// The Operation that most recently ran, or is currently running, on this composite type.
  final OperationResponse2 operation;

  /// Server defined URL for the resource.
  final String selfLink;
  final String status;

  /// Files for the template type.
  final TemplateContentsResponse templateContents;

  GetCompositeTypeResult({
    required this.description,
    required this.insertTime,
    required this.labels,
    required this.name,
    required this.operation,
    required this.selfLink,
    required this.status,
    required this.templateContents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['insertTime'] = insertTime;
    map['labels'] =
        Input.encodeList<CompositeTypeLabelEntryResponse, Map<String, dynamic>>(
            labels, (value) => value.toMap());
    map['name'] = name;
    map['operation'] = operation.toMap();
    map['selfLink'] = selfLink;
    map['status'] = status;
    map['templateContents'] = templateContents.toMap();
    return map;
  }

  factory GetCompositeTypeResult.fromMap(Map<String, dynamic> map) {
    return GetCompositeTypeResult(
      description: map['description'] as String,
      insertTime: map['insertTime'] as String,
      labels: Input.decodeList<CompositeTypeLabelEntryResponse>(
          map['labels'],
          (value) => CompositeTypeLabelEntryResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      operation: OperationResponse2.fromMap(
          (map['operation'] as Map).cast<String, dynamic>()),
      selfLink: map['selfLink'] as String,
      status: map['status'] as String,
      templateContents: TemplateContentsResponse.fromMap(
          (map['templateContents'] as Map).cast<String, dynamic>()),
    );
  }
}
