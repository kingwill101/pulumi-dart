// ignore_for_file: unused_element, unnecessary_cast


/// Represents an accepted audience trusted by the cluster.
class AcceptedAudiencesResponse {
  /// GUID or valid URL representing an accepted audience.
  final String? value;

  /// Creates a new [AcceptedAudiencesResponse].
  /// [value] GUID or valid URL representing an accepted audience.
  AcceptedAudiencesResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AcceptedAudiencesResponse.fromMap(Map<String, dynamic> map) {
    return AcceptedAudiencesResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

