// ignore_for_file: unused_element, unnecessary_cast


/// Information about a domain controller in the AD domain.
class ActiveDirectoryDomainController {
  /// Fully-qualified domain name of a domain controller in the AD domain.
  final String hostname;

  /// Creates a new [ActiveDirectoryDomainController].
  /// [hostname] Fully-qualified domain name of a domain controller in the AD domain.
  ActiveDirectoryDomainController({
    required this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
    };
  }

  factory ActiveDirectoryDomainController.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryDomainController(
      hostname: map['hostname'] as String,
    );
  }
}

