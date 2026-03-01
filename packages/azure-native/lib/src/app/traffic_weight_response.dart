// ignore_for_file: unused_element, unnecessary_cast


/// Traffic weight assigned to a revision
class TrafficWeightResponse {
  /// Associates a traffic label with a revision
  final String? label;
  /// Indicates that the traffic weight belongs to a latest stable revision
  final bool? latestRevision;
  /// Name of a revision
  final String? revisionName;
  /// Traffic weight assigned to a revision
  final int? weight;

  /// Creates a new [TrafficWeightResponse].
  /// [label] Associates a traffic label with a revision
  /// [latestRevision] Indicates that the traffic weight belongs to a latest stable revision
  /// [revisionName] Name of a revision
  /// [weight] Traffic weight assigned to a revision
  TrafficWeightResponse({
    this.label,
    this.latestRevision,
    this.revisionName,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': ?label,
      'latestRevision': ?latestRevision,
      'revisionName': ?revisionName,
      'weight': ?weight,
    };
  }

  factory TrafficWeightResponse.fromMap(Map<String, dynamic> map) {
    return TrafficWeightResponse(
      label: map['label'] == null ? null : map['label'] as String,
      latestRevision: map['latestRevision'] == null ? null : map['latestRevision'] as bool,
      revisionName: map['revisionName'] == null ? null : map['revisionName'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

