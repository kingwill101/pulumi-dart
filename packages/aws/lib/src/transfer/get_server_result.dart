// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getServer.
class GetServerResult {
  /// ARN of Transfer Server.
  final String arn;

  /// ARN of any certificate.
  final String certificate;

  /// The domain of the storage system that is used for file transfers.
  final String domain;

  /// Endpoint of the Transfer Server (e.g., `s-12345678.server.transfer.REGION.amazonaws.com`).
  final String endpoint;

  /// Type of endpoint that the server is connected to.
  final String endpointType;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The mode of authentication enabled for this service. The default value is `SERVICE_MANAGED`, which allows you to store and access SFTP user credentials within the service. `API_GATEWAY` indicates that user authentication requires a call to an API Gateway endpoint URL provided by you to integrate an identity provider of your choice.
  final String identityProviderType;

  /// ARN of the IAM role used to authenticate the user account with an `identity_provider_type` of `API_GATEWAY`.
  final String invocationRole;

  /// ARN of an IAM role that allows the service to write your SFTP users’ activity to your Amazon CloudWatch logs for monitoring and auditing purposes.
  final String loggingRole;

  /// File transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint.
  final List<String> protocols;
  final String region;

  /// The name of the security policy that is attached to the server.
  final String securityPolicyName;
  final String serverId;

  /// A set of ARNs of destinations that will receive structured logs from the transfer server such as CloudWatch Log Group ARNs.
  final List<String> structuredLogDestinations;

  /// Map of tags assigned to the resource.
  final Map<String, String> tags;

  /// URL of the service endpoint used to authenticate users with an `identity_provider_type` of `API_GATEWAY`.
  final String url;

  /// Creates a new [GetServerResult].
  /// [arn] ARN of Transfer Server.
  /// [certificate] ARN of any certificate.
  /// [domain] The domain of the storage system that is used for file transfers.
  /// [endpoint] Endpoint of the Transfer Server (e.g., `s-12345678.server.transfer.REGION.amazonaws.com`).
  /// [endpointType] Type of endpoint that the server is connected to.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityProviderType] The mode of authentication enabled for this service. The default value is `SERVICE_MANAGED`, which allows you to store and access SFTP user credentials within the service. `API_GATEWAY` indicates that user authentication requires a call to an API Gateway endpoint URL provided by you to integrate an identity provider of your choice.
  /// [invocationRole] ARN of the IAM role used to authenticate the user account with an `identity_provider_type` of `API_GATEWAY`.
  /// [loggingRole] ARN of an IAM role that allows the service to write your SFTP users’ activity to your Amazon CloudWatch logs for monitoring and auditing purposes.
  /// [protocols] File transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint.
  /// [region] Required.
  /// [securityPolicyName] The name of the security policy that is attached to the server.
  /// [serverId] Required.
  /// [structuredLogDestinations] A set of ARNs of destinations that will receive structured logs from the transfer server such as CloudWatch Log Group ARNs.
  /// [tags] Map of tags assigned to the resource.
  /// [url] URL of the service endpoint used to authenticate users with an `identity_provider_type` of `API_GATEWAY`.
  GetServerResult({
    required this.arn,
    required this.certificate,
    required this.domain,
    required this.endpoint,
    required this.endpointType,
    required this.id,
    required this.identityProviderType,
    required this.invocationRole,
    required this.loggingRole,
    required this.protocols,
    required this.region,
    required this.securityPolicyName,
    required this.serverId,
    required this.structuredLogDestinations,
    required this.tags,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'certificate': certificate,
      'domain': domain,
      'endpoint': endpoint,
      'endpointType': endpointType,
      'id': id,
      'identityProviderType': identityProviderType,
      'invocationRole': invocationRole,
      'loggingRole': loggingRole,
      'protocols': protocols,
      'region': region,
      'securityPolicyName': securityPolicyName,
      'serverId': serverId,
      'structuredLogDestinations': structuredLogDestinations,
      'tags': tags,
      'url': url,
    };
  }

  factory GetServerResult.fromMap(Map<String, dynamic> map) {
    return GetServerResult(
      arn: map['arn'] as String,
      certificate: map['certificate'] as String,
      domain: map['domain'] as String,
      endpoint: map['endpoint'] as String,
      endpointType: map['endpointType'] as String,
      id: map['id'] as String,
      identityProviderType: map['identityProviderType'] as String,
      invocationRole: map['invocationRole'] as String,
      loggingRole: map['loggingRole'] as String,
      protocols: (map['protocols'] as List).cast<String>(),
      region: map['region'] as String,
      securityPolicyName: map['securityPolicyName'] as String,
      serverId: map['serverId'] as String,
      structuredLogDestinations: (map['structuredLogDestinations'] as List)
          .cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      url: map['url'] as String,
    );
  }
}
