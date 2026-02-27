// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for CloneJob.
class CloneJobArgs2 {
  /// Required. The clone job identifier.
  final Input<String> cloneJobId;
  final Input<String>? location;
  final Input<String> migratingVmId;
  final Input<String>? project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;
  final Input<String> sourceId;

  CloneJobArgs2({
    required this.cloneJobId,
    this.location,
    required this.migratingVmId,
    this.project,
    this.requestId,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloneJobId'] = cloneJobId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['migratingVmId'] = migratingVmId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['sourceId'] = sourceId;
    return map;
  }

  factory CloneJobArgs2.fromMap(Map<String, dynamic> map) {
    return CloneJobArgs2(
      cloneJobId: Input.asInput<String>(map['cloneJobId']),
      location: Input.asOptionalInput<String>(map['location']),
      migratingVmId: Input.asInput<String>(map['migratingVmId']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      sourceId: Input.asInput<String>(map['sourceId']),
    );
  }
}
