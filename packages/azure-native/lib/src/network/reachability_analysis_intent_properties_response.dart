// ignore_for_file: unused_element, unnecessary_cast

import 'iptraffic_response.dart';

/// Represents the Reachability Analysis Intent properties.
class ReachabilityAnalysisIntentPropertiesResponse {
  final String? description;
  /// Destination resource id to verify the reachability path of.
  final String destinationResourceId;
  /// IP traffic information.
  final IPTrafficResponse ipTraffic;
  /// Provisioning states of a resource.
  final String provisioningState;
  /// Source resource id to verify the reachability path of.
  final String sourceResourceId;

  /// Creates a new [ReachabilityAnalysisIntentPropertiesResponse].
  /// [description] Optional.
  /// [destinationResourceId] Destination resource id to verify the reachability path of.
  /// [ipTraffic] IP traffic information.
  /// [provisioningState] Provisioning states of a resource.
  /// [sourceResourceId] Source resource id to verify the reachability path of.
  ReachabilityAnalysisIntentPropertiesResponse({
    this.description,
    required this.destinationResourceId,
    required this.ipTraffic,
    required this.provisioningState,
    required this.sourceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationResourceId': destinationResourceId,
      'ipTraffic': ipTraffic.toMap(),
      'provisioningState': provisioningState,
      'sourceResourceId': sourceResourceId,
    };
  }

  factory ReachabilityAnalysisIntentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ReachabilityAnalysisIntentPropertiesResponse(
      description: map['description'] == null ? null : map['description'] as String,
      destinationResourceId: map['destinationResourceId'] as String,
      ipTraffic: IPTrafficResponse.fromMap((map['ipTraffic'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      sourceResourceId: map['sourceResourceId'] as String,
    );
  }
}

