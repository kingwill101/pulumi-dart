// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// Prometheus workspace alias.
  final String? alias;
  /// ARN of the Prometheus workspace.
  final String? arn;
  /// Creation date of the Prometheus workspace.
  final String? createdDate;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// ARN of the KMS key used to encrypt data in the Prometheus workspace.
  final String? kmsKeyArn;
  /// Endpoint of the Prometheus workspace.
  final String? prometheusEndpoint;
  final String? region;
  /// Status of the Prometheus workspace.
  final String? status;
  /// Tags assigned to the resource.
  final Map<String, String>? tags;
  final String? workspaceId;

  /// Creates a new [GetWorkspaceResult].
  /// [alias] Prometheus workspace alias.
  /// [arn] ARN of the Prometheus workspace.
  /// [createdDate] Creation date of the Prometheus workspace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt data in the Prometheus workspace.
  /// [prometheusEndpoint] Endpoint of the Prometheus workspace.
  /// [region] Optional.
  /// [status] Status of the Prometheus workspace.
  /// [tags] Tags assigned to the resource.
  /// [workspaceId] Optional.
  const GetWorkspaceResult({
    this.alias,
    this.arn,
    this.createdDate,
    this.id,
    this.kmsKeyArn,
    this.prometheusEndpoint,
    this.region,
    this.status,
    this.tags,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'arn': ?arn,
      'createdDate': ?createdDate,
      'id': ?id,
      'kmsKeyArn': ?kmsKeyArn,
      'prometheusEndpoint': ?prometheusEndpoint,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'workspaceId': ?workspaceId,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prometheusEndpoint: (() { final guardedValue = map['prometheusEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
