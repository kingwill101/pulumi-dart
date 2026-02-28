// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_type_migrationcenter_v1alpha1.dart';

/// {@template pulumi_migrationcenter_v1alpha1_source_migrationcenter_v1alpha1_args_doc}
/// The set of arguments for Source.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1alpha1_source_migrationcenter_v1alpha1_args_doc}
class SourceMigrationcenterV1alpha1Args {
  /// Free-text description.
  final pulumi.Input<String>? description;

  /// User-friendly display name.
  final pulumi.Input<String>? displayName;

  /// If `true`, the source is managed by other service(s).
  final pulumi.Input<bool>? isManaged;
  final pulumi.Input<String>? location;

  /// The information confidence of the source. The higher the value, the higher the confidence.
  final pulumi.Input<int>? priority;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Required. User specified ID for the source. It will become the last component of the source name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
  final pulumi.Input<String> sourceId;

  /// Data source type.
  final pulumi.Input<SourceTypeMigrationcenterV1alpha1>? type;

  /// Creates a new [SourceMigrationcenterV1alpha1Args].
  /// [description] Free-text description.
  /// [displayName] User-friendly display name.
  /// [isManaged] If `true`, the source is managed by other service(s).
  /// [location] Optional.
  /// [priority] The information confidence of the source. The higher the value, the higher the confidence.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [sourceId] Required. User specified ID for the source. It will become the last component of the source name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
  /// [type] Data source type.
  SourceMigrationcenterV1alpha1Args({
    String? description,
    String? displayName,
    bool? isManaged,
    String? location,
    int? priority,
    String? project,
    String? requestId,
    required String sourceId,
    SourceTypeMigrationcenterV1alpha1? type,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        isManaged = pulumi.Input.asOptionalInput<bool>(isManaged),
        location = pulumi.Input.asOptionalInput<String>(location),
        priority = pulumi.Input.asOptionalInput<int>(priority),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        sourceId = pulumi.Input.asInput<String>(sourceId),
        type = pulumi.Input.asOptionalInput<SourceTypeMigrationcenterV1alpha1>(
            type);

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
    final isManagedValue = isManaged;
    if (isManagedValue != null) {
      map['isManaged'] = isManagedValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['sourceId'] = sourceId;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = pulumi.Input.mapOptionalInputValue<
          SourceTypeMigrationcenterV1alpha1,
          String>(typeValue, (value) => value.value);
    }
    return map;
  }

  factory SourceMigrationcenterV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return SourceMigrationcenterV1alpha1Args(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      isManaged: map['isManaged'] == null ? null : map['isManaged'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      sourceId: map['sourceId'] as String,
      type: map['type'] == null
          ? null
          : SourceTypeMigrationcenterV1alpha1.fromValue(map['type'] as String),
    );
  }
}
