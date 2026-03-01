// ignore_for_file: unused_element, unnecessary_cast


/// MoboBroker resource.
class MoboBrokerResourceResponse {
  /// Resource Id of MoboBrokerResource
  final String id;

  /// Creates a new [MoboBrokerResourceResponse].
  /// [id] Resource Id of MoboBrokerResource
  MoboBrokerResourceResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory MoboBrokerResourceResponse.fromMap(Map<String, dynamic> map) {
    return MoboBrokerResourceResponse(
      id: map['id'] as String,
    );
  }
}

