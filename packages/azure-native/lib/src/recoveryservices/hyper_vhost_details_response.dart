// ignore_for_file: unused_element, unnecessary_cast


/// Hyper-V host details.
class HyperVHostDetailsResponse {
  /// The Hyper-V host Id.
  final String id;
  /// The Mars agent version.
  final String marsAgentVersion;
  /// The Hyper-V host name.
  final String name;

  /// Creates a new [HyperVHostDetailsResponse].
  /// [id] The Hyper-V host Id.
  /// [marsAgentVersion] The Mars agent version.
  /// [name] The Hyper-V host name.
  HyperVHostDetailsResponse({
    required this.id,
    required this.marsAgentVersion,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'marsAgentVersion': marsAgentVersion,
      'name': name,
    };
  }

  factory HyperVHostDetailsResponse.fromMap(Map<String, dynamic> map) {
    return HyperVHostDetailsResponse(
      id: map['id'] as String,
      marsAgentVersion: map['marsAgentVersion'] as String,
      name: map['name'] as String,
    );
  }
}

