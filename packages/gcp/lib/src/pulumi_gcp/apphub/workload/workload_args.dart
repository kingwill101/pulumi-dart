// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../workload_attributes/workload_attributes.dart';

/// The set of arguments for Workload.
class WorkloadArgs {
  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final pulumi.Input<String> applicationId;

  /// Consumer provided attributes.
  /// Structure is documented below.
  final pulumi.Input<WorkloadAttributes>? attributes;

  /// User-defined description of a Workload.
  final pulumi.Input<String>? description;

  /// Immutable. The resource name of the original discovered workload.
  final pulumi.Input<String> discoveredWorkload;

  /// User-defined name for the Workload.
  final pulumi.Input<String>? displayName;

  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The Workload identifier.
  final pulumi.Input<String> workloadId;

  WorkloadArgs({
    required this.applicationId,
    this.attributes,
    this.description,
    required this.discoveredWorkload,
    this.displayName,
    required this.location,
    this.project,
    required this.workloadId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = pulumi.Input.mapOptionalInputValue<WorkloadAttributes,
          Map<String, dynamic>>(attributesValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['discoveredWorkload'] = discoveredWorkload;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workloadId'] = workloadId;
    return map;
  }

  factory WorkloadArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadArgs(
      applicationId: pulumi.Input.asInput<String>(map['applicationId']),
      attributes:
          pulumi.Input.asOptionalInput<WorkloadAttributes>(map['attributes']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      discoveredWorkload:
          pulumi.Input.asInput<String>(map['discoveredWorkload']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workloadId: pulumi.Input.asInput<String>(map['workloadId']),
    );
  }
}
