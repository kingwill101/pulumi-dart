// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for CloneJob.
class CloneJobVmmigrationV1alpha1Args {
  /// Required. The clone job identifier.
  final pulumi.Input<String> cloneJobId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> migratingVmId;
  final pulumi.Input<String>? project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  final pulumi.Input<String> sourceId;

  CloneJobVmmigrationV1alpha1Args({
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

  factory CloneJobVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return CloneJobVmmigrationV1alpha1Args(
      cloneJobId: pulumi.Input.asInput<String>(map['cloneJobId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      migratingVmId: pulumi.Input.asInput<String>(map['migratingVmId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      sourceId: pulumi.Input.asInput<String>(map['sourceId']),
    );
  }
}
