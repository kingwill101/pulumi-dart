// ignore_for_file: unused_element, unnecessary_cast


/// Properties of orchestrator
class SubnetDetails {
  /// subnet arm resource id
  final String? id;

  /// Creates a new [SubnetDetails].
  /// [id] subnet arm resource id
  SubnetDetails({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory SubnetDetails.fromMap(Map<String, dynamic> map) {
    return SubnetDetails(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

