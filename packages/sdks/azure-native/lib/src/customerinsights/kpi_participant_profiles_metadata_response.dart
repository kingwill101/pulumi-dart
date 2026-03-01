// ignore_for_file: unused_element, unnecessary_cast


/// The KPI participant profile metadata.
class KpiParticipantProfilesMetadataResponse {
  /// Name of the type.
  final String typeName;

  /// Creates a new [KpiParticipantProfilesMetadataResponse].
  /// [typeName] Name of the type.
  KpiParticipantProfilesMetadataResponse({
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'typeName': typeName,
    };
  }

  factory KpiParticipantProfilesMetadataResponse.fromMap(Map<String, dynamic> map) {
    return KpiParticipantProfilesMetadataResponse(
      typeName: map['typeName'] as String,
    );
  }
}

