// ignore_for_file: unused_element, unnecessary_cast


/// Isolation Domain Properties.
class IsolationDomainPropertiesResponse {
  /// Type of encapsulation.
  final String? encapsulation;
  /// List of Neighbor Group IDs.
  final List<String>? neighborGroupIds;

  /// Creates a new [IsolationDomainPropertiesResponse].
  /// [encapsulation] Type of encapsulation.
  /// [neighborGroupIds] List of Neighbor Group IDs.
  IsolationDomainPropertiesResponse({
    this.encapsulation,
    this.neighborGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encapsulation': ?encapsulation,
      'neighborGroupIds': ?neighborGroupIds,
    };
  }

  factory IsolationDomainPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IsolationDomainPropertiesResponse(
      encapsulation: map['encapsulation'] == null ? null : map['encapsulation'] as String,
      neighborGroupIds: map['neighborGroupIds'] == null ? null : (map['neighborGroupIds'] as List).cast<String>(),
    );
  }
}

