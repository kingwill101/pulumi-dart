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

  /// Creates a new [GetWorkspaceResult].
  /// [alias] Prometheus workspace alias.
  /// [arn] ARN of the Prometheus workspace.
  /// [createdDate] Creation date of the Prometheus workspace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt data in the Prometheus workspace.
  /// [prometheusEndpoint] Endpoint of the Prometheus workspace.
  /// [region] Required.
  /// [status] Status of the Prometheus workspace.
  /// [tags] Tags assigned to the resource.
  /// [workspaceId] Required.
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
    return <String, dynamic>{
      'alias': alias,
      'arn': arn,
      'createdDate': createdDate,
      'id': id,
      'kmsKeyArn': kmsKeyArn,
      'prometheusEndpoint': prometheusEndpoint,
      'region': region,
      'status': status,
      'tags': tags,
      'workspaceId': workspaceId,
    };
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

