// ignore_for_file: unused_element, unnecessary_cast


/// A network authorization rule that filters traffic based on IP address.
class IpRuleResponse {
  /// IP mask.
  final String ipMask;
  /// List of access rights.
  final List<String> rights;

  /// Creates a new [IpRuleResponse].
  /// [ipMask] IP mask.
  /// [rights] List of access rights.
  IpRuleResponse({
    required this.ipMask,
    required this.rights,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipMask': ipMask,
      'rights': rights,
    };
  }

  factory IpRuleResponse.fromMap(Map<String, dynamic> map) {
    return IpRuleResponse(
      ipMask: map['ipMask'] as String,
      rights: (map['rights'] as List).cast<String>(),
    );
  }
}

