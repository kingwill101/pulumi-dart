// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInstance.
class GetInstanceResult {
  /// Optional. Customer accept list represents the list of projects (id/number) on customer side that can privately connect to the service attachment. It is an optional field which the customers can provide during the instance creation. By default, the customer project associated with the Apigee organization will be included to the list.
  final List<String> consumerAcceptList;
  /// Time the instance was created in milliseconds since epoch.
  final String createdAt;
  /// Optional. Description of the instance.
  final String description;
  /// Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only. Use the following format: `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`
  final String diskEncryptionKeyName;
  /// Optional. Display name for the instance.
  final String displayName;
  /// Internal hostname or IP address of the Apigee endpoint used by clients to connect to the service.
  final String host;
  /// Optional. Comma-separated list of CIDR blocks of length 22 and/or 28 used to create the Apigee instance. Providing CIDR ranges is optional. You can provide just /22 or /28 or both (or neither). Ranges you provide should be freely available as part of a larger named range you have allocated to the Service Networking peering. If this parameter is not provided, Apigee automatically requests an available /22 and /28 CIDR block from Service Networking. Use the /22 CIDR block for configuring your firewall needs to allow traffic from Apigee. Input formats: `a.b.c.d/22` or `e.f.g.h/28` or `a.b.c.d/22,e.f.g.h/28`
  final String ipRange;
  /// Time the instance was last modified in milliseconds since epoch.
  final String lastModifiedAt;
  /// Compute Engine location where the instance resides.
  final String location;
  /// Resource ID of the instance. Values must match the regular expression `^a-z{0,30}[a-z\d]$`.
  final String name;
  /// Optional. Size of the CIDR block range that will be reserved by the instance. PAID organizations support `SLASH_16` to `SLASH_20` and defaults to `SLASH_16`. Evaluation organizations support only `SLASH_23`.
  final String peeringCidrRange;
  /// Port number of the exposed Apigee endpoint.
  final String port;
  /// Version of the runtime system running in the instance. The runtime system is the set of components that serve the API Proxy traffic in your Environments.
  final String runtimeVersion;
  /// Resource name of the service attachment created for the instance in the format: `projects/*/regions/*/serviceAttachments/*` Apigee customers can privately forward traffic to this service attachment using the PSC endpoints.
  final String serviceAttachment;
  /// State of the instance. Values other than `ACTIVE` means the resource is not ready to use.
  final String state;

  /// Creates a new [GetInstanceResult].
  /// [consumerAcceptList] Optional. Customer accept list represents the list of projects (id/number) on customer side that can privately connect to the service attachment. It is an optional field which the customers can provide during the instance creation. By default, the customer project associated with the Apigee organization will be included to the list.
  /// [createdAt] Time the instance was created in milliseconds since epoch.
  /// [description] Optional. Description of the instance.
  /// [diskEncryptionKeyName] Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only. Use the following format: `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`
  /// [displayName] Optional. Display name for the instance.
  /// [host] Internal hostname or IP address of the Apigee endpoint used by clients to connect to the service.
  /// [ipRange] Optional. Comma-separated list of CIDR blocks of length 22 and/or 28 used to create the Apigee instance. Providing CIDR ranges is optional. You can provide just /22 or /28 or both (or neither). Ranges you provide should be freely available as part of a larger named range you have allocated to the Service Networking peering. If this parameter is not provided, Apigee automatically requests an available /22 and /28 CIDR block from Service Networking. Use the /22 CIDR block for configuring your firewall needs to allow traffic from Apigee. Input formats: `a.b.c.d/22` or `e.f.g.h/28` or `a.b.c.d/22,e.f.g.h/28`
  /// [lastModifiedAt] Time the instance was last modified in milliseconds since epoch.
  /// [location] Compute Engine location where the instance resides.
  /// [name] Resource ID of the instance. Values must match the regular expression `^a-z{0,30}[a-z\d]$`.
  /// [peeringCidrRange] Optional. Size of the CIDR block range that will be reserved by the instance. PAID organizations support `SLASH_16` to `SLASH_20` and defaults to `SLASH_16`. Evaluation organizations support only `SLASH_23`.
  /// [port] Port number of the exposed Apigee endpoint.
  /// [runtimeVersion] Version of the runtime system running in the instance. The runtime system is the set of components that serve the API Proxy traffic in your Environments.
  /// [serviceAttachment] Resource name of the service attachment created for the instance in the format: `projects/*/regions/*/serviceAttachments/*` Apigee customers can privately forward traffic to this service attachment using the PSC endpoints.
  /// [state] State of the instance. Values other than `ACTIVE` means the resource is not ready to use.
  GetInstanceResult({
    required this.consumerAcceptList,
    required this.createdAt,
    required this.description,
    required this.diskEncryptionKeyName,
    required this.displayName,
    required this.host,
    required this.ipRange,
    required this.lastModifiedAt,
    required this.location,
    required this.name,
    required this.peeringCidrRange,
    required this.port,
    required this.runtimeVersion,
    required this.serviceAttachment,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerAcceptList': consumerAcceptList,
      'createdAt': createdAt,
      'description': description,
      'diskEncryptionKeyName': diskEncryptionKeyName,
      'displayName': displayName,
      'host': host,
      'ipRange': ipRange,
      'lastModifiedAt': lastModifiedAt,
      'location': location,
      'name': name,
      'peeringCidrRange': peeringCidrRange,
      'port': port,
      'runtimeVersion': runtimeVersion,
      'serviceAttachment': serviceAttachment,
      'state': state,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      consumerAcceptList: (map['consumerAcceptList'] as List).cast<String>(),
      createdAt: map['createdAt'] as String,
      description: map['description'] as String,
      diskEncryptionKeyName: map['diskEncryptionKeyName'] as String,
      displayName: map['displayName'] as String,
      host: map['host'] as String,
      ipRange: map['ipRange'] as String,
      lastModifiedAt: map['lastModifiedAt'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      peeringCidrRange: map['peeringCidrRange'] as String,
      port: map['port'] as String,
      runtimeVersion: map['runtimeVersion'] as String,
      serviceAttachment: map['serviceAttachment'] as String,
      state: map['state'] as String,
    );
  }
}

