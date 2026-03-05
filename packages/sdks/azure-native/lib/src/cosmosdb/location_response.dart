// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A region in which the Azure Cosmos DB database account is deployed.
class LocationResponse {
  /// The connection endpoint for the specific region. Example: https://&lt;accountName&gt;-&lt;locationName&gt;.documents.azure.com:443/
  final pulumi.Input<String> documentEndpoint;
  /// The failover priority of the region. A failover priority of 0 indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists.
  final pulumi.Input<int>? failoverPriority;
  /// The unique identifier of the region within the database account. Example: &lt;accountName&gt;-&lt;locationName&gt;.
  final pulumi.Input<String> id;
  /// Flag to indicate whether or not this region is an AvailabilityZone region
  final pulumi.Input<bool>? isZoneRedundant;
  /// The name of the region.
  final pulumi.Input<String>? locationName;
  /// The status of the Cosmos DB account at the time the operation was called. The status can be one of following. 'Creating' – the Cosmos DB account is being created. When an account is in Creating state, only properties that are specified as input for the Create Cosmos DB account operation are returned. 'Succeeded' – the Cosmos DB account is active for use. 'Updating' – the Cosmos DB account is being updated. 'Deleting' – the Cosmos DB account is being deleted. 'Failed' – the Cosmos DB account failed creation. 'DeletionFailed' – the Cosmos DB account deletion failed.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [LocationResponse].
  /// [documentEndpoint] The connection endpoint for the specific region. Example: https://&lt;accountName&gt;-&lt;locationName&gt;.documents.azure.com:443/
  /// [failoverPriority] The failover priority of the region. A failover priority of 0 indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists.
  /// [id] The unique identifier of the region within the database account. Example: &lt;accountName&gt;-&lt;locationName&gt;.
  /// [isZoneRedundant] Flag to indicate whether or not this region is an AvailabilityZone region
  /// [locationName] The name of the region.
  /// [provisioningState] The status of the Cosmos DB account at the time the operation was called. The status can be one of following. 'Creating' – the Cosmos DB account is being created. When an account is in Creating state, only properties that are specified as input for the Create Cosmos DB account operation are returned. 'Succeeded' – the Cosmos DB account is active for use. 'Updating' – the Cosmos DB account is being updated. 'Deleting' – the Cosmos DB account is being deleted. 'Failed' – the Cosmos DB account failed creation. 'DeletionFailed' – the Cosmos DB account deletion failed.
  LocationResponse({
    required this.documentEndpoint,
    this.failoverPriority,
    required this.id,
    this.isZoneRedundant,
    this.locationName,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentEndpoint': documentEndpoint,
      'failoverPriority': ?failoverPriority,
      'id': id,
      'isZoneRedundant': ?isZoneRedundant,
      'locationName': ?locationName,
      'provisioningState': provisioningState,
    };
  }

  factory LocationResponse.fromMap(Map<String, dynamic> map) {
    return LocationResponse(
      documentEndpoint: pulumi.Input.fromValue(map['documentEndpoint'] as String),
      failoverPriority: (() { final guardedValue = map['failoverPriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      isZoneRedundant: (() { final guardedValue = map['isZoneRedundant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      locationName: (() { final guardedValue = map['locationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

