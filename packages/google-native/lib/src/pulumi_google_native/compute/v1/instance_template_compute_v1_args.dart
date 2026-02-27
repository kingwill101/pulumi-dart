// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_properties_compute_v1.dart';
import 'source_instance_params_compute_v1.dart';

/// The set of arguments for InstanceTemplate.
class InstanceTemplateComputeV1Args {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The instance properties for this instance template.
  final pulumi.Input<InstancePropertiesComputeV1>? properties;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The source instance used to create the template. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  final pulumi.Input<String>? sourceInstance;

  /// The source instance params to use to create this instance template.
  final pulumi.Input<SourceInstanceParamsComputeV1>? sourceInstanceParams;

  InstanceTemplateComputeV1Args({
    this.description,
    this.name,
    this.project,
    this.properties,
    this.requestId,
    this.sourceInstance,
    this.sourceInstanceParams,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = pulumi.Input.mapOptionalInputValue<
          InstancePropertiesComputeV1,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final sourceInstanceValue = sourceInstance;
    if (sourceInstanceValue != null) {
      map['sourceInstance'] = sourceInstanceValue;
    }
    final sourceInstanceParamsValue = sourceInstanceParams;
    if (sourceInstanceParamsValue != null) {
      map['sourceInstanceParams'] = pulumi.Input.mapOptionalInputValue<
              SourceInstanceParamsComputeV1, Map<String, dynamic>>(
          sourceInstanceParamsValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceTemplateComputeV1Args.fromMap(Map<String, dynamic> map) {
    return InstanceTemplateComputeV1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      properties: pulumi.Input.asOptionalInput<InstancePropertiesComputeV1>(
          map['properties']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      sourceInstance:
          pulumi.Input.asOptionalInput<String>(map['sourceInstance']),
      sourceInstanceParams:
          pulumi.Input.asOptionalInput<SourceInstanceParamsComputeV1>(
              map['sourceInstanceParams']),
    );
  }
}
