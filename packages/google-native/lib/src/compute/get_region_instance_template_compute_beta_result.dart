// ignore_for_file: unused_element, unnecessary_cast

import 'instance_properties_response_compute_beta.dart';
import 'source_instance_params_response_compute_beta.dart';

/// Result data returned by getRegionInstanceTemplate.
class GetRegionInstanceTemplateComputeBetaResult {
  /// The creation timestamp for this instance template in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// The resource type, which is always compute#instanceTemplate for instance templates.
  final String kind;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// The instance properties for this instance template.
  final InstancePropertiesResponseComputeBeta properties;

  /// URL of the region where the instance template resides. Only applicable for regional resources.
  final String region;

  /// The URL for this instance template. The server defines this URL.
  final String selfLink;

  /// The source instance used to create the template. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  final String sourceInstance;

  /// The source instance params to use to create this instance template.
  final SourceInstanceParamsResponseComputeBeta sourceInstanceParams;

  /// Creates a new [GetRegionInstanceTemplateComputeBetaResult].
  /// [creationTimestamp] The creation timestamp for this instance template in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [kind] The resource type, which is always compute#instanceTemplate for instance templates.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [properties] The instance properties for this instance template.
  /// [region] URL of the region where the instance template resides. Only applicable for regional resources.
  /// [selfLink] The URL for this instance template. The server defines this URL.
  /// [sourceInstance] The source instance used to create the template. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  /// [sourceInstanceParams] The source instance params to use to create this instance template.
  GetRegionInstanceTemplateComputeBetaResult({
    required this.creationTimestamp,
    required this.description,
    required this.kind,
    required this.name,
    required this.properties,
    required this.region,
    required this.selfLink,
    required this.sourceInstance,
    required this.sourceInstanceParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': creationTimestamp,
      'description': description,
      'kind': kind,
      'name': name,
      'properties': properties.toMap(),
      'region': region,
      'selfLink': selfLink,
      'sourceInstance': sourceInstance,
      'sourceInstanceParams': sourceInstanceParams.toMap(),
    };
  }

  factory GetRegionInstanceTemplateComputeBetaResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionInstanceTemplateComputeBetaResult(
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      properties: InstancePropertiesResponseComputeBeta.fromMap(
        (map['properties'] as Map).cast<String, dynamic>(),
      ),
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      sourceInstance: map['sourceInstance'] as String,
      sourceInstanceParams: SourceInstanceParamsResponseComputeBeta.fromMap(
        (map['sourceInstanceParams'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
