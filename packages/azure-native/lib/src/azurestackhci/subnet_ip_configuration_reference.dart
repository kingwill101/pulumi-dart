// ignore_for_file: unused_element, unnecessary_cast


/// The Azure Resource ID for a Network Interface.
class SubnetIpConfigurationReference {
  /// The Azure Resource ID for a Network Interface.
  final String? id;

  /// Creates a new [SubnetIpConfigurationReference].
  /// [id] The Azure Resource ID for a Network Interface.
  SubnetIpConfigurationReference({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory SubnetIpConfigurationReference.fromMap(Map<String, dynamic> map) {
    return SubnetIpConfigurationReference(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

