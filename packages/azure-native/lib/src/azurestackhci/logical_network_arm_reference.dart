// ignore_for_file: unused_element, unnecessary_cast


/// The Azure Resource ID for a Logical Network.
class LogicalNetworkArmReference {
  /// The Azure Resource ID for a Logical Network.
  final String? id;

  /// Creates a new [LogicalNetworkArmReference].
  /// [id] The Azure Resource ID for a Logical Network.
  LogicalNetworkArmReference({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory LogicalNetworkArmReference.fromMap(Map<String, dynamic> map) {
    return LogicalNetworkArmReference(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

