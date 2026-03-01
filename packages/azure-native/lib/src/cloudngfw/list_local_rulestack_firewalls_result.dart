// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listLocalRulestackFirewalls.
class ListLocalRulestackFirewallsResult {
  /// next link
  final String? nextLink;
  /// firewalls list
  final List<String> value;

  /// Creates a new [ListLocalRulestackFirewallsResult].
  /// [nextLink] next link
  /// [value] firewalls list
  ListLocalRulestackFirewallsResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': value,
    };
  }

  factory ListLocalRulestackFirewallsResult.fromMap(Map<String, dynamic> map) {
    return ListLocalRulestackFirewallsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: (map['value'] as List).cast<String>(),
    );
  }
}

