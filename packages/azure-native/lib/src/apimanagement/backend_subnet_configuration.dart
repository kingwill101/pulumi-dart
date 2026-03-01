// ignore_for_file: unused_element, unnecessary_cast


/// Information regarding how the subnet to which the gateway should be injected.
class BackendSubnetConfiguration {
  /// The ARM ID of the subnet in which the backend systems are hosted.
  final String? id;

  /// Creates a new [BackendSubnetConfiguration].
  /// [id] The ARM ID of the subnet in which the backend systems are hosted.
  BackendSubnetConfiguration({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory BackendSubnetConfiguration.fromMap(Map<String, dynamic> map) {
    return BackendSubnetConfiguration(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

