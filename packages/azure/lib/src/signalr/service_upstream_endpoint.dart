// ignore_for_file: unused_element, unnecessary_cast


class ServiceUpstreamEndpoint {
  /// The categories to match on, or `*` for all.
  final List<String> categoryPatterns;
  /// The events to match on, or `*` for all.
  final List<String> eventPatterns;
  /// The hubs to match on, or `*` for all.
  final List<String> hubPatterns;
  /// The upstream URL Template. This can be a url or a template such as `http://host.com/{hub}/api/{category}/{event}`.
  final String urlTemplate;
  /// Specifies the Managed Identity IDs to be assigned to this signalR upstream setting by using resource uuid as both system assigned and user assigned identity is supported.
  final String? userAssignedIdentityId;

  /// Creates a new [ServiceUpstreamEndpoint].
  /// [categoryPatterns] The categories to match on, or `*` for all.
  /// [eventPatterns] The events to match on, or `*` for all.
  /// [hubPatterns] The hubs to match on, or `*` for all.
  /// [urlTemplate] The upstream URL Template. This can be a url or a template such as `http://host.com/{hub}/api/{category}/{event}`.
  /// [userAssignedIdentityId] Specifies the Managed Identity IDs to be assigned to this signalR upstream setting by using resource uuid as both system assigned and user assigned identity is supported.
  ServiceUpstreamEndpoint({
    required this.categoryPatterns,
    required this.eventPatterns,
    required this.hubPatterns,
    required this.urlTemplate,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryPatterns': categoryPatterns,
      'eventPatterns': eventPatterns,
      'hubPatterns': hubPatterns,
      'urlTemplate': urlTemplate,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory ServiceUpstreamEndpoint.fromMap(Map<String, dynamic> map) {
    return ServiceUpstreamEndpoint(
      categoryPatterns: (map['categoryPatterns'] as List).cast<String>(),
      eventPatterns: (map['eventPatterns'] as List).cast<String>(),
      hubPatterns: (map['hubPatterns'] as List).cast<String>(),
      urlTemplate: map['urlTemplate'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : map['userAssignedIdentityId'] as String,
    );
  }
}

