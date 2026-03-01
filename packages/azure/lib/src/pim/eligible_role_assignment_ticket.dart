// ignore_for_file: unused_element, unnecessary_cast


class EligibleRoleAssignmentTicket {
  /// User-supplied ticket number to be included with the request. Changing this forces a new resource to be created.
  final String? number;
  /// User-supplied ticket system name to be included with the request. Changing this forces a new resource to be created.
  final String? system;

  /// Creates a new [EligibleRoleAssignmentTicket].
  /// [number] User-supplied ticket number to be included with the request. Changing this forces a new resource to be created.
  /// [system] User-supplied ticket system name to be included with the request. Changing this forces a new resource to be created.
  EligibleRoleAssignmentTicket({
    this.number,
    this.system,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': ?number,
      'system': ?system,
    };
  }

  factory EligibleRoleAssignmentTicket.fromMap(Map<String, dynamic> map) {
    return EligibleRoleAssignmentTicket(
      number: map['number'] == null ? null : map['number'] as String,
      system: map['system'] == null ? null : map['system'] as String,
    );
  }
}

