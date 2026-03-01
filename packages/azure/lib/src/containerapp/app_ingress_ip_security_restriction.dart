// ignore_for_file: unused_element, unnecessary_cast


class AppIngressIpSecurityRestriction {
  /// The IP-filter action. `Allow` or `Deny`.
  ///
  /// > **Note:** The `action` types in an all `ip_security_restriction` blocks must be the same for the `ingress`, mixing `Allow` and `Deny` rules is not currently supported by the service.
  final String action;
  /// Describe the IP restriction rule that is being sent to the container-app.
  final String? description;
  /// The incoming IP address or range of IP addresses (in CIDR notation).
  final String ipAddressRange;
  /// Name for the IP restriction rule.
  final String name;

  /// Creates a new [AppIngressIpSecurityRestriction].
  /// [action] The IP-filter action. `Allow` or `Deny`.
  /// [description] Describe the IP restriction rule that is being sent to the container-app.
  /// [ipAddressRange] The incoming IP address or range of IP addresses (in CIDR notation).
  /// [name] Name for the IP restriction rule.
  AppIngressIpSecurityRestriction({
    required this.action,
    this.description,
    required this.ipAddressRange,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'ipAddressRange': ipAddressRange,
      'name': name,
    };
  }

  factory AppIngressIpSecurityRestriction.fromMap(Map<String, dynamic> map) {
    return AppIngressIpSecurityRestriction(
      action: map['action'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      ipAddressRange: map['ipAddressRange'] as String,
      name: map['name'] as String,
    );
  }
}

