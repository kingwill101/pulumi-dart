// ignore_for_file: unused_element, unnecessary_cast


/// Properties of orchestrator
class SubnetDetailsResponse {
  /// subnet arm resource id
  final String? id;

  /// Creates a new [SubnetDetailsResponse].
  /// [id] subnet arm resource id
  SubnetDetailsResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory SubnetDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SubnetDetailsResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

