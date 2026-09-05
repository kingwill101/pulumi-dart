// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConnection.
class GetConnectionResult {
  final String? arn;
  /// CodeStar Connection status. Possible values are `PENDING`, `AVAILABLE` and `ERROR`.
  final String? connectionStatus;
  /// ARN of the host associated with the connection.
  final String? hostArn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Name of the CodeStar Connection. The name is unique in the calling AWS account.
  final String? name;
  /// Name of the external provider where your third-party code repository is configured. Possible values are `Bitbucket`, `GitHub` and `GitLab`. For connections to GitHub Enterprise Server or GitLab Self-Managed instances, you must create an aws.codestarconnections.Host resource and use `hostArn` instead.
  final String? providerType;
  final String? region;
  /// Map of key-value resource tags to associate with the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetConnectionResult].
  /// [arn] Optional.
  /// [connectionStatus] CodeStar Connection status. Possible values are `PENDING`, `AVAILABLE` and `ERROR`.
  /// [hostArn] ARN of the host associated with the connection.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the CodeStar Connection. The name is unique in the calling AWS account.
  /// [providerType] Name of the external provider where your third-party code repository is configured. Possible values are `Bitbucket`, `GitHub` and `GitLab`. For connections to GitHub Enterprise Server or GitLab Self-Managed instances, you must create an aws.codestarconnections.Host resource and use `hostArn` instead.
  /// [region] Optional.
  /// [tags] Map of key-value resource tags to associate with the resource.
  const GetConnectionResult({
    this.arn,
    this.connectionStatus,
    this.hostArn,
    this.id,
    this.name,
    this.providerType,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'connectionStatus': ?connectionStatus,
      'hostArn': ?hostArn,
      'id': ?id,
      'name': ?name,
      'providerType': ?providerType,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionStatus: (() { final guardedValue = map['connectionStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostArn: (() { final guardedValue = map['hostArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      providerType: (() { final guardedValue = map['providerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
