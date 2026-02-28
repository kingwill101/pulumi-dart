// ignore_for_file: unused_element, unnecessary_cast


/// TrafficTarget holds a single entry of the routing table for a Route.
class TrafficTarget {
  /// [Deprecated] Not supported in Cloud Run. It must be empty.
  final String? configurationName;
  /// Uses the "status.latestReadyRevisionName" of the Service to determine the traffic target. When it changes, traffic will automatically migrate from the prior "latest ready" revision to the new one. This field must be false if RevisionName is set. This field defaults to true otherwise. If the field is set to true on Status, this means that the Revision was resolved from the Service's latest ready revision.
  final bool? latestRevision;
  /// Percent specifies percent of the traffic to this Revision or Configuration. This defaults to zero if unspecified.
  final int? percent;
  /// Points this traffic target to a specific Revision. This field is mutually exclusive with latest_revision.
  final String? revisionName;
  /// Tag is used to expose a dedicated url for referencing this target exclusively.
  final String? tag;

  /// Creates a new [TrafficTarget].
  /// [configurationName] [Deprecated] Not supported in Cloud Run. It must be empty.
  /// [latestRevision] Uses the "status.latestReadyRevisionName" of the Service to determine the traffic target. When it changes, traffic will automatically migrate from the prior "latest ready" revision to the new one. This field must be false if RevisionName is set. This field defaults to true otherwise. If the field is set to true on Status, this means that the Revision was resolved from the Service's latest ready revision.
  /// [percent] Percent specifies percent of the traffic to this Revision or Configuration. This defaults to zero if unspecified.
  /// [revisionName] Points this traffic target to a specific Revision. This field is mutually exclusive with latest_revision.
  /// [tag] Tag is used to expose a dedicated url for referencing this target exclusively.
  TrafficTarget({
    this.configurationName,
    this.latestRevision,
    this.percent,
    this.revisionName,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': ?configurationName,
      'latestRevision': ?latestRevision,
      'percent': ?percent,
      'revisionName': ?revisionName,
      'tag': ?tag,
    };
  }

  factory TrafficTarget.fromMap(Map<String, dynamic> map) {
    return TrafficTarget(
      configurationName: map['configurationName'] == null ? null : map['configurationName'] as String,
      latestRevision: map['latestRevision'] == null ? null : map['latestRevision'] as bool,
      percent: map['percent'] == null ? null : map['percent'] as int,
      revisionName: map['revisionName'] == null ? null : map['revisionName'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
    );
  }
}

