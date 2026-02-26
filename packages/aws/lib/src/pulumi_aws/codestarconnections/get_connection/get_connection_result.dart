// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getConnection.
class GetConnectionResult {
  final String arn;

  /// CodeStar Connection status. Possible values are `PENDING`, `AVAILABLE` and `ERROR`.
  final String connectionStatus;

  /// ARN of the host associated with the connection.
  final String hostArn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of the CodeStar Connection. The name is unique in the calling AWS account.
  final String name;

  /// Name of the external provider where your third-party code repository is configured. Possible values are `Bitbucket`, `GitHub` and `GitLab`. For connections to GitHub Enterprise Server or GitLab Self-Managed instances, you must create an<span pulumi-lang-nodejs=" aws.codestarconnections.Host " pulumi-lang-dotnet=" aws.codestarconnections.Host " pulumi-lang-go=" codestarconnections.Host " pulumi-lang-python=" codestarconnections.Host " pulumi-lang-yaml=" aws.codestarconnections.Host " pulumi-lang-java=" aws.codestarconnections.Host "> aws.codestarconnections.Host </span>resource and use <span pulumi-lang-nodejs="`hostArn`" pulumi-lang-dotnet="`HostArn`" pulumi-lang-go="`hostArn`" pulumi-lang-python="`host_arn`" pulumi-lang-yaml="`hostArn`" pulumi-lang-java="`hostArn`">`host_arn`</span> instead.
  final String providerType;
  final String region;

  /// Map of key-value resource tags to associate with the resource.
  final Map<String, String> tags;

  GetConnectionResult({
    required this.arn,
    required this.connectionStatus,
    required this.hostArn,
    required this.id,
    required this.name,
    required this.providerType,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['connectionStatus'] = connectionStatus;
    map['hostArn'] = hostArn;
    map['id'] = id;
    map['name'] = name;
    map['providerType'] = providerType;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionResult(
      arn: map['arn'] as String,
      connectionStatus: map['connectionStatus'] as String,
      hostArn: map['hostArn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      providerType: map['providerType'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
