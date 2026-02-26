// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'instance_properties2.dart';
import 'source_instance_params2.dart';

/// The set of arguments for RegionInstanceTemplate.
class RegionInstanceTemplateArgs2 {
  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;
  final Input<String>? project;

  /// The instance properties for this instance template.
  final Input<InstanceProperties2>? properties;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// The source instance used to create the template. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  final Input<String>? sourceInstance;

  /// The source instance params to use to create this instance template.
  final Input<SourceInstanceParams2>? sourceInstanceParams;

  RegionInstanceTemplateArgs2({
    this.description,
    this.name,
    this.project,
    this.properties,
    required this.region,
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
      map['properties'] = Input.mapOptionalInputValue<InstanceProperties2,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    map['region'] = region;
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
      map['sourceInstanceParams'] = Input.mapOptionalInputValue<
              SourceInstanceParams2, Map<String, dynamic>>(
          sourceInstanceParamsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RegionInstanceTemplateArgs2.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      properties: Input.asOptionalInput<InstanceProperties2>(map['properties']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      sourceInstance: Input.asOptionalInput<String>(map['sourceInstance']),
      sourceInstanceParams: Input.asOptionalInput<SourceInstanceParams2>(
          map['sourceInstanceParams']),
    );
  }
}
