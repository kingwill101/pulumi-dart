// ignore_for_file: unused_element, unnecessary_cast


/// Target service's firewall rules. to allow connections from source service.
class FirewallRules {
  /// Allow Azure services to access the target service if true.
  final String? azureServices;
  /// Allow caller client IP to access the target service if true. the property is used when connecting local application to target service.
  final String? callerClientIP;
  /// This value specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IPs for a given database account.
  final List<String>? ipRanges;

  /// Creates a new [FirewallRules].
  /// [azureServices] Allow Azure services to access the target service if true.
  /// [callerClientIP] Allow caller client IP to access the target service if true. the property is used when connecting local application to target service.
  /// [ipRanges] This value specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IPs for a given database account.
  FirewallRules({
    this.azureServices,
    this.callerClientIP,
    this.ipRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureServices': ?azureServices,
      'callerClientIP': ?callerClientIP,
      'ipRanges': ?ipRanges,
    };
  }

  factory FirewallRules.fromMap(Map<String, dynamic> map) {
    return FirewallRules(
      azureServices: map['azureServices'] == null ? null : map['azureServices'] as String,
      callerClientIP: map['callerClientIP'] == null ? null : map['callerClientIP'] as String,
      ipRanges: map['ipRanges'] == null ? null : (map['ipRanges'] as List).cast<String>(),
    );
  }
}

