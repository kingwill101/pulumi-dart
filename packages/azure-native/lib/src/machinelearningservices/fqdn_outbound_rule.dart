// ignore_for_file: unused_element, unnecessary_cast


/// FQDN Outbound Rule for the managed network of a machine learning workspace.
class FqdnOutboundRule {
  /// Category of a managed network Outbound Rule of a machine learning workspace.
  final String? category;
  final String? destination;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  final String? status;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  /// Expected value is 'FQDN'.
  final String type;

  /// Creates a new [FqdnOutboundRule].
  /// [category] Category of a managed network Outbound Rule of a machine learning workspace.
  /// [destination] Optional.
  /// [status] Type of a managed network Outbound Rule of a machine learning workspace.
  /// [type] Type of a managed network Outbound Rule of a machine learning workspace.
  FqdnOutboundRule({
    this.category,
    this.destination,
    this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'destination': ?destination,
      'status': ?status,
      'type': type,
    };
  }

  factory FqdnOutboundRule.fromMap(Map<String, dynamic> map) {
    return FqdnOutboundRule(
      category: map['category'] == null ? null : map['category'] as String,
      destination: map['destination'] == null ? null : map['destination'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] as String,
    );
  }
}

