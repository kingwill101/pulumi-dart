// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listLocalRulestackFirewalls.
class ListLocalRulestackFirewallsResult {
  /// next link
  final String? nextLink;
  /// firewalls list
  final List<String>? value;

  /// Creates a new [ListLocalRulestackFirewallsResult].
  /// [nextLink] next link
  /// [value] firewalls list
  const ListLocalRulestackFirewallsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value,
    };
  }

  factory ListLocalRulestackFirewallsResult.fromMap(Map<String, dynamic> map) {
    return ListLocalRulestackFirewallsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
