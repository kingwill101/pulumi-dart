// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workload_attributes/workload_attributes.dart';

/// The set of arguments for Workload.
class WorkloadArgs {
  /// Part of <span pulumi-lang-nodejs="`parent`" pulumi-lang-dotnet="`Parent`" pulumi-lang-go="`parent`" pulumi-lang-python="`parent`" pulumi-lang-yaml="`parent`" pulumi-lang-java="`parent`">`parent`</span>.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final Input<String> applicationId;

  /// Consumer provided attributes.
  /// Structure is documented below.
  final Input<WorkloadAttributes>? attributes;

  /// User-defined description of a Workload.
  final Input<String>? description;

  /// Immutable. The resource name of the original discovered workload.
  final Input<String> discoveredWorkload;

  /// User-defined name for the Workload.
  final Input<String>? displayName;

  /// Part of <span pulumi-lang-nodejs="`parent`" pulumi-lang-dotnet="`Parent`" pulumi-lang-go="`parent`" pulumi-lang-python="`parent`" pulumi-lang-yaml="`parent`" pulumi-lang-java="`parent`">`parent`</span>.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The Workload identifier.
  final Input<String> workloadId;

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
      map['attributes'] =
          Input.mapOptionalInputValue<WorkloadAttributes, Map<String, dynamic>>(
              attributesValue, (value) => value.toMap());
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
      applicationId: Input.asInput<String>(map['applicationId']),
      attributes: Input.asOptionalInput<WorkloadAttributes>(map['attributes']),
      description: Input.asOptionalInput<String>(map['description']),
      discoveredWorkload: Input.asInput<String>(map['discoveredWorkload']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      workloadId: Input.asInput<String>(map['workloadId']),
    );
  }
}
