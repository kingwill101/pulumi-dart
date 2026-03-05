// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Traffic weight assigned to a revision
class TrafficWeight {
  /// Associates a traffic label with a revision
  final pulumi.Input<String>? label;
  /// Indicates that the traffic weight belongs to a latest stable revision
  final pulumi.Input<bool>? latestRevision;
  /// Name of a revision
  final pulumi.Input<String>? revisionName;
  /// Traffic weight assigned to a revision
  final pulumi.Input<int>? weight;

  /// Creates a new [TrafficWeight].
  /// [label] Associates a traffic label with a revision
  /// [latestRevision] Indicates that the traffic weight belongs to a latest stable revision
  /// [revisionName] Name of a revision
  /// [weight] Traffic weight assigned to a revision
  TrafficWeight({
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

  factory TrafficWeight.fromMap(Map<String, dynamic> map) {
    return TrafficWeight(
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latestRevision: (() { final guardedValue = map['latestRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      revisionName: (() { final guardedValue = map['revisionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

