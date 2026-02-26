// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// Prometheus workspace alias.
  final String alias;

  /// ARN of the Prometheus workspace.
  final String arn;

  /// Creation date of the Prometheus workspace.
  final String createdDate;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// ARN of the KMS key used to encrypt data in the Prometheus workspace.
  final String kmsKeyArn;

  /// Endpoint of the Prometheus workspace.
  final String prometheusEndpoint;
  final String region;

  /// Status of the Prometheus workspace.
  final String status;

  /// Tags assigned to the resource.
  final Map<String, String> tags;
  final String workspaceId;

  GetWorkspaceResult({
    required this.alias,
    required this.arn,
    required this.createdDate,
    required this.id,
    required this.kmsKeyArn,
    required this.prometheusEndpoint,
    required this.region,
    required this.status,
    required this.tags,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alias'] = alias;
    map['arn'] = arn;
    map['createdDate'] = createdDate;
    map['id'] = id;
    map['kmsKeyArn'] = kmsKeyArn;
    map['prometheusEndpoint'] = prometheusEndpoint;
    map['region'] = region;
    map['status'] = status;
    map['tags'] = tags;
    map['workspaceId'] = workspaceId;
    return map;
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      alias: map['alias'] as String,
      arn: map['arn'] as String,
      createdDate: map['createdDate'] as String,
      id: map['id'] as String,
      kmsKeyArn: map['kmsKeyArn'] as String,
      prometheusEndpoint: map['prometheusEndpoint'] as String,
      region: map['region'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      workspaceId: map['workspaceId'] as String,
    );
  }
}
