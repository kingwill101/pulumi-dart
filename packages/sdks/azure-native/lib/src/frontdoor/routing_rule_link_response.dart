// ignore_for_file: unused_element, unnecessary_cast


/// Defines the Resource ID for a Routing Rule.
class RoutingRuleLinkResponse {
  /// Resource ID.
  final String? id;

  /// Creates a new [RoutingRuleLinkResponse].
  /// [id] Resource ID.
  RoutingRuleLinkResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory RoutingRuleLinkResponse.fromMap(Map<String, dynamic> map) {
    return RoutingRuleLinkResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

