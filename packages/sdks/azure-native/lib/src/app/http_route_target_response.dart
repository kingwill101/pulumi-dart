// ignore_for_file: unused_element, unnecessary_cast


/// Targets - Container App Names, Revision Names, Labels.
class HttpRouteTargetResponse {
  /// Container App Name to route requests to
  final String containerApp;
  /// Label/Revision to route requests to
  final String? label;
  /// Revision to route requests to
  final String? revision;
  /// Weighted routing
  final int? weight;

  /// Creates a new [HttpRouteTargetResponse].
  /// [containerApp] Container App Name to route requests to
  /// [label] Label/Revision to route requests to
  /// [revision] Revision to route requests to
  /// [weight] Weighted routing
  HttpRouteTargetResponse({
    required this.containerApp,
    this.label,
    this.revision,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerApp': containerApp,
      'label': ?label,
      'revision': ?revision,
      'weight': ?weight,
    };
  }

  factory HttpRouteTargetResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteTargetResponse(
      containerApp: map['containerApp'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      revision: map['revision'] == null ? null : map['revision'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

