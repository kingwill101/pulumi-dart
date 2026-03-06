// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServiceNetwork.
class GetServiceNetworkResult {
  /// ARN of the Service Network.
  final String arn;
  /// Authentication type for the service network. Either `NONE` or `AWS_IAM`.
  final String authType;
  /// Date and time the service network was created.
  final String createdAt;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Date and time the service network was last updated.
  final String lastUpdatedAt;
  /// Name of the service network.
  final String name;
  /// Number of services associated with this service network.
  final int numberOfAssociatedServices;
  /// Number of VPCs associated with this service network.
  final int numberOfAssociatedVpcs;
  final String region;
  final String serviceNetworkIdentifier;
  final Map<String, String> tags;

  /// Creates a new [GetServiceNetworkResult].
  /// [arn] ARN of the Service Network.
  /// [authType] Authentication type for the service network. Either `NONE` or `AWS_IAM`.
  /// [createdAt] Date and time the service network was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastUpdatedAt] Date and time the service network was last updated.
  /// [name] Name of the service network.
  /// [numberOfAssociatedServices] Number of services associated with this service network.
  /// [numberOfAssociatedVpcs] Number of VPCs associated with this service network.
  /// [region] Required.
  /// [serviceNetworkIdentifier] Required.
  /// [tags] Required.
  const GetServiceNetworkResult({
    required this.arn,
    required this.authType,
    required this.createdAt,
    required this.id,
    required this.lastUpdatedAt,
    required this.name,
    required this.numberOfAssociatedServices,
    required this.numberOfAssociatedVpcs,
    required this.region,
    required this.serviceNetworkIdentifier,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'authType': authType,
      'createdAt': createdAt,
      'id': id,
      'lastUpdatedAt': lastUpdatedAt,
      'name': name,
      'numberOfAssociatedServices': numberOfAssociatedServices,
      'numberOfAssociatedVpcs': numberOfAssociatedVpcs,
      'region': region,
      'serviceNetworkIdentifier': serviceNetworkIdentifier,
      'tags': tags,
    };
  }

  factory GetServiceNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetServiceNetworkResult(
      arn: map['arn'] as String,
      authType: map['authType'] as String,
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      lastUpdatedAt: map['lastUpdatedAt'] as String,
      name: map['name'] as String,
      numberOfAssociatedServices: map['numberOfAssociatedServices'] as int,
      numberOfAssociatedVpcs: map['numberOfAssociatedVpcs'] as int,
      region: map['region'] as String,
      serviceNetworkIdentifier: map['serviceNetworkIdentifier'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

