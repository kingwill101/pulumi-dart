// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listGlobalRulestackFirewalls.
class ListGlobalRulestackFirewallsResult {
  /// next link
  final String? nextLink;
  /// firewalls list
  final List<String> value;

  /// Creates a new [ListGlobalRulestackFirewallsResult].
  /// [nextLink] next link
  /// [value] firewalls list
  const ListGlobalRulestackFirewallsResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': value,
    };
  }

  factory ListGlobalRulestackFirewallsResult.fromMap(Map<String, dynamic> map) {
    return ListGlobalRulestackFirewallsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (map['value'] as List).cast<String>(),
    );
  }
}

