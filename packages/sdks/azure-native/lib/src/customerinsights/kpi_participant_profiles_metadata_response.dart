// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The KPI participant profile metadata.
class KpiParticipantProfilesMetadataResponse {
  /// Name of the type.
  final pulumi.Input<String> typeName;

  /// Creates a new [KpiParticipantProfilesMetadataResponse].
  /// [typeName] Name of the type.
  const KpiParticipantProfilesMetadataResponse({
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'typeName': typeName,
    };
  }

  factory KpiParticipantProfilesMetadataResponse.fromMap(Map<String, dynamic> map) {
    return KpiParticipantProfilesMetadataResponse(
      typeName: pulumi.Input.fromValue(map['typeName'] as String),
    );
  }
}
