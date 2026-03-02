// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyNetRedirectPolicy {
  /// Whether to manually configure the transparent proxy.
  final pulumi.Input<String>? customProxy;
  /// The transparent proxy IP address. The format is IPv4 address.
  final pulumi.Input<String>? hostAddr;
  /// Whether to enable network redirection.
  final pulumi.Input<String>? netRedirect;
  /// Transparent proxy port. The Port value range is 1\~ 65535.
  final pulumi.Input<String>? port;
  /// The proxy password. The length range is 1\~ 256. Chinese characters and white space characters are not allowed.
  final pulumi.Input<String>? proxyPassword;
  /// Agent protocol type.
  final pulumi.Input<String>? proxyType;
  /// The proxy user name. The length range is 1\~ 256. Chinese characters and white space characters are not allowed.
  final pulumi.Input<String>? proxyUserName;

  /// Creates a new [PolicyNetRedirectPolicy].
  /// [customProxy] Whether to manually configure the transparent proxy.
  /// [hostAddr] The transparent proxy IP address. The format is IPv4 address.
  /// [netRedirect] Whether to enable network redirection.
  /// [port] Transparent proxy port. The Port value range is 1\~ 65535.
  /// [proxyPassword] The proxy password. The length range is 1\~ 256. Chinese characters and white space characters are not allowed.
  /// [proxyType] Agent protocol type.
  /// [proxyUserName] The proxy user name. The length range is 1\~ 256. Chinese characters and white space characters are not allowed.
  PolicyNetRedirectPolicy({
    this.customProxy,
    this.hostAddr,
    this.netRedirect,
    this.port,
    this.proxyPassword,
    this.proxyType,
    this.proxyUserName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProxy': ?customProxy,
      'hostAddr': ?hostAddr,
      'netRedirect': ?netRedirect,
      'port': ?port,
      'proxyPassword': ?proxyPassword,
      'proxyType': ?proxyType,
      'proxyUserName': ?proxyUserName,
    };
  }

  factory PolicyNetRedirectPolicy.fromMap(Map<String, dynamic> map) {
    return PolicyNetRedirectPolicy(
      customProxy: map['customProxy'] == null ? null : (map['customProxy']! as String).input(),
      hostAddr: map['hostAddr'] == null ? null : (map['hostAddr']! as String).input(),
      netRedirect: map['netRedirect'] == null ? null : (map['netRedirect']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      proxyPassword: map['proxyPassword'] == null ? null : (map['proxyPassword']! as String).input(),
      proxyType: map['proxyType'] == null ? null : (map['proxyType']! as String).input(),
      proxyUserName: map['proxyUserName'] == null ? null : (map['proxyUserName']! as String).input(),
    );
  }
}

