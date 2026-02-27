// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for TargetProject.
class TargetProjectArgs2 {
  /// The target project's description.
  final Input<String>? description;
  final Input<String>? location;

  /// The target project ID (number) or project name.
  final Input<String>? project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Required. The target_project identifier.
  final Input<String> targetProjectId;

  TargetProjectArgs2({
    this.description,
    this.location,
    this.project,
    this.requestId,
    required this.targetProjectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['targetProjectId'] = targetProjectId;
    return map;
  }

  factory TargetProjectArgs2.fromMap(Map<String, dynamic> map) {
    return TargetProjectArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      targetProjectId: Input.asInput<String>(map['targetProjectId']),
    );
  }
}
