// ignore_for_file: unused_element, unnecessary_cast


/// Information about a domain controller in the AD domain.
class ActiveDirectoryDomainControllerResponse {
  /// Fully-qualified domain name of a domain controller in the AD domain.
  final String hostname;

  /// Creates a new [ActiveDirectoryDomainControllerResponse].
  /// [hostname] Fully-qualified domain name of a domain controller in the AD domain.
  ActiveDirectoryDomainControllerResponse({
    required this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
    };
  }

  factory ActiveDirectoryDomainControllerResponse.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryDomainControllerResponse(
      hostname: map['hostname'] as String,
    );
  }
}

