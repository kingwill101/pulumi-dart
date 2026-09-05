// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServiceNetwork.
class GetServiceNetworkResult {
  /// ARN of the Service Network.
  final String? arn;
  /// Authentication type for the service network. Either `NONE` or `AWS_IAM`.
  final String? authType;
  /// Date and time the service network was created.
  final String? createdAt;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Date and time the service network was last updated.
  final String? lastUpdatedAt;
  /// Name of the service network.
  final String? name;
  /// Number of services associated with this service network.
  final int? numberOfAssociatedServices;
  /// Number of VPCs associated with this service network.
  final int? numberOfAssociatedVpcs;
  final String? region;
  final String? serviceNetworkIdentifier;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetServiceNetworkResult].
  /// [arn] ARN of the Service Network.
  /// [authType] Authentication type for the service network. Either `NONE` or `AWS_IAM`.
  /// [createdAt] Date and time the service network was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastUpdatedAt] Date and time the service network was last updated.
  /// [name] Name of the service network.
  /// [numberOfAssociatedServices] Number of services associated with this service network.
  /// [numberOfAssociatedVpcs] Number of VPCs associated with this service network.
  /// [region] Optional.
  /// [serviceNetworkIdentifier] Optional.
  /// [tags] Map of tags assigned to the resource.
  const GetServiceNetworkResult({
    this.arn,
    this.authType,
    this.createdAt,
    this.id,
    this.lastUpdatedAt,
    this.name,
    this.numberOfAssociatedServices,
    this.numberOfAssociatedVpcs,
    this.region,
    this.serviceNetworkIdentifier,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authType': ?authType,
      'createdAt': ?createdAt,
      'id': ?id,
      'lastUpdatedAt': ?lastUpdatedAt,
      'name': ?name,
      'numberOfAssociatedServices': ?numberOfAssociatedServices,
      'numberOfAssociatedVpcs': ?numberOfAssociatedVpcs,
      'region': ?region,
      'serviceNetworkIdentifier': ?serviceNetworkIdentifier,
      'tags': ?tags,
    };
  }

  factory GetServiceNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetServiceNetworkResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdatedAt: (() { final guardedValue = map['lastUpdatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numberOfAssociatedServices: (() { final guardedValue = map['numberOfAssociatedServices']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      numberOfAssociatedVpcs: (() { final guardedValue = map['numberOfAssociatedVpcs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceNetworkIdentifier: (() { final guardedValue = map['serviceNetworkIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
