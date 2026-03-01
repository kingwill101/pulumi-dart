// ignore_for_file: unused_element, unnecessary_cast


class EciScalingConfigurationHostAlias {
  /// Adds a host name.
  final List<String>? hostnames;
  /// Adds an IP address.
  final String? ip;

  /// Creates a new [EciScalingConfigurationHostAlias].
  /// [hostnames] Adds a host name.
  /// [ip] Adds an IP address.
  EciScalingConfigurationHostAlias({
    this.hostnames,
    this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': ?hostnames,
      'ip': ?ip,
    };
  }

  factory EciScalingConfigurationHostAlias.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationHostAlias(
      hostnames: map['hostnames'] == null ? null : (map['hostnames'] as List).cast<String>(),
      ip: map['ip'] == null ? null : map['ip'] as String,
    );
  }
}

