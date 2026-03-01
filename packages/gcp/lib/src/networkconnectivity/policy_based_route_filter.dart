// ignore_for_file: unused_element, unnecessary_cast

class PolicyBasedRouteFilter {
  /// The destination IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0".
  final String? destRange;

  /// The IP protocol that this policy-based route applies to. Valid values are 'TCP', 'UDP', and 'ALL'. Default is 'ALL'.
  final String? ipProtocol;

  /// Internet protocol versions this policy-based route applies to.
  /// Possible values are: `IPV4`, `IPV6`.
  final String protocolVersion;

  /// The source IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0".
  final String? srcRange;

  /// Creates a new [PolicyBasedRouteFilter].
  /// [destRange] The destination IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0".
  /// [ipProtocol] The IP protocol that this policy-based route applies to. Valid values are 'TCP', 'UDP', and 'ALL'. Default is 'ALL'.
  /// [protocolVersion] Internet protocol versions this policy-based route applies to.
  /// [srcRange] The source IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0".
  PolicyBasedRouteFilter({
    this.destRange,
    this.ipProtocol,
    required this.protocolVersion,
    this.srcRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destRange': ?destRange,
      'ipProtocol': ?ipProtocol,
      'protocolVersion': protocolVersion,
      'srcRange': ?srcRange,
    };
  }

  factory PolicyBasedRouteFilter.fromMap(Map<String, dynamic> map) {
    return PolicyBasedRouteFilter(
      destRange: map['destRange'] == null ? null : map['destRange'] as String,
      ipProtocol: map['ipProtocol'] == null
          ? null
          : map['ipProtocol'] as String,
      protocolVersion: map['protocolVersion'] as String,
      srcRange: map['srcRange'] == null ? null : map['srcRange'] as String,
    );
  }
}
