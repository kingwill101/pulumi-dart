// ignore_for_file: unused_element, unnecessary_cast

class PolicyBasedRouteInterconnectAttachment {
  /// Cloud region to install this policy-based route on for Interconnect attachments. Use <span pulumi-lang-nodejs="`all`" pulumi-lang-dotnet="`All`" pulumi-lang-go="`all`" pulumi-lang-python="`all`" pulumi-lang-yaml="`all`" pulumi-lang-java="`all`">`all`</span> to install it on all Interconnect attachments.
  final String region;

  PolicyBasedRouteInterconnectAttachment({
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['region'] = region;
    return map;
  }

  factory PolicyBasedRouteInterconnectAttachment.fromMap(
      Map<String, dynamic> map) {
    return PolicyBasedRouteInterconnectAttachment(
      region: map['region'] as String,
    );
  }
}
