// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServer.
class GetServerResult {
  /// ARN of Transfer Server.
  final String? arn;
  /// ARN of any certificate.
  final String? certificate;
  /// Domain of the storage system that is used for file transfers.
  final String? domain;
  /// Endpoint of the Transfer Server (e.g., `s-12345678.server.transfer.REGION.amazonaws.com`).
  final String? endpoint;
  /// Type of endpoint that the server is connected to.
  final String? endpointType;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Mode of authentication enabled for this service.
  final String? identityProviderType;
  /// ARN of the IAM role used to authenticate the user account with an `identityProviderType` of `API_GATEWAY`.
  final String? invocationRole;
  /// Type of IP addresses for the AWS Transfer Family endpoint.
  final String? ipAddressType;
  /// ARN of an IAM role that allows the service to write your SFTP users’ activity to your Amazon CloudWatch logs for monitoring and auditing purposes.
  final String? loggingRole;
  /// File transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint.
  final List<String>? protocols;
  final String? region;
  /// Name of the security policy that is attached to the server.
  final String? securityPolicyName;
  final String? serverId;
  /// Set of ARNs of destinations that will receive structured logs from the transfer server such as CloudWatch Log Group ARNs.
  final List<String>? structuredLogDestinations;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;
  /// URL of the service endpoint used to authenticate users with an `identityProviderType` of `API_GATEWAY`.
  final String? url;

  /// Creates a new [GetServerResult].
  /// [arn] ARN of Transfer Server.
  /// [certificate] ARN of any certificate.
  /// [domain] Domain of the storage system that is used for file transfers.
  /// [endpoint] Endpoint of the Transfer Server (e.g., `s-12345678.server.transfer.REGION.amazonaws.com`).
  /// [endpointType] Type of endpoint that the server is connected to.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityProviderType] Mode of authentication enabled for this service.
  /// [invocationRole] ARN of the IAM role used to authenticate the user account with an `identityProviderType` of `API_GATEWAY`.
  /// [ipAddressType] Type of IP addresses for the AWS Transfer Family endpoint.
  /// [loggingRole] ARN of an IAM role that allows the service to write your SFTP users’ activity to your Amazon CloudWatch logs for monitoring and auditing purposes.
  /// [protocols] File transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint.
  /// [region] Optional.
  /// [securityPolicyName] Name of the security policy that is attached to the server.
  /// [serverId] Optional.
  /// [structuredLogDestinations] Set of ARNs of destinations that will receive structured logs from the transfer server such as CloudWatch Log Group ARNs.
  /// [tags] Map of tags assigned to the resource.
  /// [url] URL of the service endpoint used to authenticate users with an `identityProviderType` of `API_GATEWAY`.
  const GetServerResult({
    this.arn,
    this.certificate,
    this.domain,
    this.endpoint,
    this.endpointType,
    this.id,
    this.identityProviderType,
    this.invocationRole,
    this.ipAddressType,
    this.loggingRole,
    this.protocols,
    this.region,
    this.securityPolicyName,
    this.serverId,
    this.structuredLogDestinations,
    this.tags,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'certificate': ?certificate,
      'domain': ?domain,
      'endpoint': ?endpoint,
      'endpointType': ?endpointType,
      'id': ?id,
      'identityProviderType': ?identityProviderType,
      'invocationRole': ?invocationRole,
      'ipAddressType': ?ipAddressType,
      'loggingRole': ?loggingRole,
      'protocols': ?protocols,
      'region': ?region,
      'securityPolicyName': ?securityPolicyName,
      'serverId': ?serverId,
      'structuredLogDestinations': ?structuredLogDestinations,
      'tags': ?tags,
      'url': ?url,
    };
  }

  factory GetServerResult.fromMap(Map<String, dynamic> map) {
    return GetServerResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointType: (() { final guardedValue = map['endpointType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityProviderType: (() { final guardedValue = map['identityProviderType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      invocationRole: (() { final guardedValue = map['invocationRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loggingRole: (() { final guardedValue = map['loggingRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityPolicyName: (() { final guardedValue = map['securityPolicyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      structuredLogDestinations: (() { final guardedValue = map['structuredLogDestinations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
