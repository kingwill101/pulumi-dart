// ignore_for_file: unused_element, unnecessary_cast


/// FQDN Outbound Rule for the managed network of a cognitive services account.
class FqdnOutboundRuleResponse {
  /// Category of a managed network Outbound Rule of a cognitive services account.
  final String? category;
  final String? destination;
  /// Error information about an outbound rule of a cognitive services account if RuleStatus is failed.
  final String errorInformation;
  final List<String> parentRuleNames;
  /// Type of a managed network Outbound Rule of a cognitive services account.
  final String? status;
  /// Type of a managed network Outbound Rule of a cognitive services account.
  /// Expected value is 'FQDN'.
  final String type;

  /// Creates a new [FqdnOutboundRuleResponse].
  /// [category] Category of a managed network Outbound Rule of a cognitive services account.
  /// [destination] Optional.
  /// [errorInformation] Error information about an outbound rule of a cognitive services account if RuleStatus is failed.
  /// [parentRuleNames] Required.
  /// [status] Type of a managed network Outbound Rule of a cognitive services account.
  /// [type] Type of a managed network Outbound Rule of a cognitive services account.
  FqdnOutboundRuleResponse({
    this.category,
    this.destination,
    required this.errorInformation,
    required this.parentRuleNames,
    this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'destination': ?destination,
      'errorInformation': errorInformation,
      'parentRuleNames': parentRuleNames,
      'status': ?status,
      'type': type,
    };
  }

  factory FqdnOutboundRuleResponse.fromMap(Map<String, dynamic> map) {
    return FqdnOutboundRuleResponse(
      category: map['category'] == null ? null : map['category'] as String,
      destination: map['destination'] == null ? null : map['destination'] as String,
      errorInformation: map['errorInformation'] as String,
      parentRuleNames: (map['parentRuleNames'] as List).cast<String>(),
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] as String,
    );
  }
}

