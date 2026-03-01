// ignore_for_file: unused_element, unnecessary_cast

import 'iptraffic_response.dart';

/// Intent information.
class IntentContentResponse {
  final String? description;
  /// Destination resource id of the intent.
  final String destinationResourceId;
  /// IP traffic information.
  final IPTrafficResponse ipTraffic;
  /// Source resource id of the intent.
  final String sourceResourceId;

  /// Creates a new [IntentContentResponse].
  /// [description] Optional.
  /// [destinationResourceId] Destination resource id of the intent.
  /// [ipTraffic] IP traffic information.
  /// [sourceResourceId] Source resource id of the intent.
  IntentContentResponse({
    this.description,
    required this.destinationResourceId,
    required this.ipTraffic,
    required this.sourceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationResourceId': destinationResourceId,
      'ipTraffic': ipTraffic.toMap(),
      'sourceResourceId': sourceResourceId,
    };
  }

  factory IntentContentResponse.fromMap(Map<String, dynamic> map) {
    return IntentContentResponse(
      description: map['description'] == null ? null : map['description'] as String,
      destinationResourceId: map['destinationResourceId'] as String,
      ipTraffic: IPTrafficResponse.fromMap((map['ipTraffic'] as Map).cast<String, dynamic>()),
      sourceResourceId: map['sourceResourceId'] as String,
    );
  }
}

