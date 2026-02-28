// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_properties_compute_beta.dart';
import 'source_instance_params_compute_beta.dart';

/// {@template pulumi_compute_beta_region_instance_template_compute_beta_args_doc}
/// The set of arguments for RegionInstanceTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_region_instance_template_compute_beta_args_doc}
class RegionInstanceTemplateComputeBetaArgs {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The instance properties for this instance template.
  final pulumi.Input<InstancePropertiesComputeBeta>? properties;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The source instance used to create the template. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  final pulumi.Input<String>? sourceInstance;
  /// The source instance params to use to create this instance template.
  final pulumi.Input<SourceInstanceParamsComputeBeta>? sourceInstanceParams;

  /// Creates a new [RegionInstanceTemplateComputeBetaArgs].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [properties] The instance properties for this instance template.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [sourceInstance] The source instance used to create the template. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  /// [sourceInstanceParams] The source instance params to use to create this instance template.
  RegionInstanceTemplateComputeBetaArgs({
    String? description,
    String? name,
    String? project,
    InstancePropertiesComputeBeta? properties,
    required String region,
    String? requestId,
    String? sourceInstance,
    SourceInstanceParamsComputeBeta? sourceInstanceParams,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      properties = pulumi.Input.asOptionalInput<InstancePropertiesComputeBeta>(properties),
      region = pulumi.Input.asInput<String>(region),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      sourceInstance = pulumi.Input.asOptionalInput<String>(sourceInstance),
      sourceInstanceParams = pulumi.Input.asOptionalInput<SourceInstanceParamsComputeBeta>(sourceInstanceParams);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'properties': ?pulumi.Input.mapOptionalInputValue<InstancePropertiesComputeBeta, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'region': region,
      'requestId': ?requestId,
      'sourceInstance': ?sourceInstance,
      'sourceInstanceParams': ?pulumi.Input.mapOptionalInputValue<SourceInstanceParamsComputeBeta, Map<String, dynamic>>(sourceInstanceParams, (value) => value.toMap()),
    };
  }

  factory RegionInstanceTemplateComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateComputeBetaArgs(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      properties: map['properties'] == null ? null : InstancePropertiesComputeBeta.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      region: map['region'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      sourceInstance: map['sourceInstance'] == null ? null : map['sourceInstance'] as String,
      sourceInstanceParams: map['sourceInstanceParams'] == null ? null : SourceInstanceParamsComputeBeta.fromMap((map['sourceInstanceParams'] as Map).cast<String, dynamic>()),
    );
  }
}

