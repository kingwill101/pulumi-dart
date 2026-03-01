// ignore_for_file: unused_element, unnecessary_cast


/// Describes the disallowed disk types.
class DisallowedResponse {
  /// A list of disk types.
  final List<String>? diskTypes;

  /// Creates a new [DisallowedResponse].
  /// [diskTypes] A list of disk types.
  DisallowedResponse({
    this.diskTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskTypes': ?diskTypes,
    };
  }

  factory DisallowedResponse.fromMap(Map<String, dynamic> map) {
    return DisallowedResponse(
      diskTypes: map['diskTypes'] == null ? null : (map['diskTypes'] as List).cast<String>(),
    );
  }
}

