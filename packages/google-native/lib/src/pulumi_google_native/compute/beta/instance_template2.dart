import 'package:pulumi/pulumi.dart' hide Config;
import 'instance_properties_response2.dart';
import 'instance_template_args2.dart';
import 'source_instance_params_response2.dart';

/// Creates an instance template in the specified project using the data that is included in the request. If you are creating a new template to update an existing instance group, your new instance template must use the same network or, if applicable, the same subnetwork as the original template.
class InstanceTemplate2 extends CustomResource {
  /// The creation timestamp for this instance template in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// The resource type, which is always compute#instanceTemplate for instance templates.
  late final Output<String> kind;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;
  late final Output<String> project;

  /// The instance properties for this instance template.
  late final Output<InstancePropertiesResponse2> properties;

  /// URL of the region where the instance template resides. Only applicable for regional resources.
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The URL for this instance template. The server defines this URL.
  late final Output<String> selfLink;

  /// The source instance used to create the template. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  late final Output<String> sourceInstance;

  /// The source instance params to use to create this instance template.
  late final Output<SourceInstanceParamsResponse2> sourceInstanceParams;

  InstanceTemplate2(
    String name, {
    InstanceTemplateArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/beta:InstanceTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.properties = registerOutput<InstancePropertiesResponse2>('properties');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
    this.sourceInstance = registerOutput<String>('sourceInstance');
    this.sourceInstanceParams =
        registerOutput<SourceInstanceParamsResponse2>('sourceInstanceParams');
  }
}
