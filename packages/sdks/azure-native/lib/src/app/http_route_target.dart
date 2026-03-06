// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Targets - Container App Names, Revision Names, Labels.
class HttpRouteTarget {
  /// Container App Name to route requests to
  final pulumi.Input<String> containerApp;
  /// Label/Revision to route requests to
  final pulumi.Input<String>? label;
  /// Revision to route requests to
  final pulumi.Input<String>? revision;
  /// Weighted routing
  final pulumi.Input<int>? weight;

  /// Creates a new [HttpRouteTarget].
  /// [containerApp] Container App Name to route requests to
  /// [label] Label/Revision to route requests to
  /// [revision] Revision to route requests to
  /// [weight] Weighted routing
  const HttpRouteTarget({
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
      containerApp: pulumi.Input.fromValue(map['containerApp'] as String),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

