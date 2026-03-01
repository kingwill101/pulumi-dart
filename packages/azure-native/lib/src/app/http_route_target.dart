// ignore_for_file: unused_element, unnecessary_cast


/// Targets - Container App Names, Revision Names, Labels.
class HttpRouteTarget {
  /// Container App Name to route requests to
  final String containerApp;
  /// Label/Revision to route requests to
  final String? label;
  /// Revision to route requests to
  final String? revision;
  /// Weighted routing
  final int? weight;

  /// Creates a new [HttpRouteTarget].
  /// [containerApp] Container App Name to route requests to
  /// [label] Label/Revision to route requests to
  /// [revision] Revision to route requests to
  /// [weight] Weighted routing
  HttpRouteTarget({
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

  factory HttpRouteTarget.fromMap(Map<String, dynamic> map) {
    return HttpRouteTarget(
      containerApp: map['containerApp'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      revision: map['revision'] == null ? null : map['revision'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

