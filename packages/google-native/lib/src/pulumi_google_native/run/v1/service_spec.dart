// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'revision_template.dart';
import 'traffic_target.dart';

/// ServiceSpec holds the desired state of the Route (from the client), which is used to manipulate the underlying Route and Configuration(s).
class ServiceSpec {
  /// Holds the latest specification for the Revision to be stamped out.
  final RevisionTemplate? template;

  /// Specifies how to distribute traffic over a collection of Knative Revisions and Configurations to the Service's main URL.
  final List<TrafficTarget>? traffic;

  ServiceSpec({
    this.template,
    this.traffic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final templateValue = template;
    if (templateValue != null) {
      map['template'] = templateValue.toMap();
    }
    final trafficValue = traffic;
    if (trafficValue != null) {
      map['traffic'] =
          pulumi.Input.encodeList<TrafficTarget, Map<String, dynamic>>(
              trafficValue, (value) => value.toMap());
    }
    return map;
  }

  factory ServiceSpec.fromMap(Map<String, dynamic> map) {
    return ServiceSpec(
      template: map['template'] == null
          ? null
          : RevisionTemplate.fromMap(
              (map['template'] as Map).cast<String, dynamic>()),
      traffic: map['traffic'] == null
          ? null
          : pulumi.Input.decodeList<TrafficTarget>(
              map['traffic'],
              (value) => TrafficTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
