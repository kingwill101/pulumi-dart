// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'revision_template_response.dart';
import 'traffic_target_response.dart';

/// ServiceSpec holds the desired state of the Route (from the client), which is used to manipulate the underlying Route and Configuration(s).
class ServiceSpecResponse {
  /// Holds the latest specification for the Revision to be stamped out.
  final RevisionTemplateResponse template;

  /// Specifies how to distribute traffic over a collection of Knative Revisions and Configurations to the Service's main URL.
  final List<TrafficTargetResponse> traffic;

  ServiceSpecResponse({
    required this.template,
    required this.traffic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['template'] = template.toMap();
    map['traffic'] =
        pulumi.Input.encodeList<TrafficTargetResponse, Map<String, dynamic>>(
            traffic, (value) => value.toMap());
    return map;
  }

  factory ServiceSpecResponse.fromMap(Map<String, dynamic> map) {
    return ServiceSpecResponse(
      template: RevisionTemplateResponse.fromMap(
          (map['template'] as Map).cast<String, dynamic>()),
      traffic: pulumi.Input.decodeList<TrafficTargetResponse>(
          map['traffic'],
          (value) => TrafficTargetResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
