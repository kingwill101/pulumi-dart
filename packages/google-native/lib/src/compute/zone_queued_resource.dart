import 'package:pulumi/pulumi.dart' as pulumi;
import 'bulk_insert_instance_resource_response.dart';
import 'queued_resource_status_response.dart';
import 'queuing_policy_response.dart';
import 'zone_queued_resource_args.dart';

/// Creates a QueuedResource.
class ZoneQueuedResource extends pulumi.CustomResource {
  /// Specification of VM instances to create.
  late final pulumi.Output<BulkInsertInstanceResourceResponse>
  bulkInsertInstanceResource;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;

  /// Type of the resource. Always compute#queuedResource for QueuedResources.
  late final pulumi.Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Queuing parameters for the requested capacity.
  late final pulumi.Output<QueuingPolicyResponse> queuingPolicy;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// [Output only] Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;

  /// [Output only] High-level status of the request.
  late final pulumi.Output<String> state;

  /// [Output only] Result of queuing and provisioning based on deferred capacity.
  late final pulumi.Output<QueuedResourceStatusResponse> status;
  late final pulumi.Output<String> zone;

  /// Creates a new [ZoneQueuedResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZoneQueuedResource]. {@macro pulumi_compute_alpha_zone_queued_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZoneQueuedResource(
    String name, {
    ZoneQueuedResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:compute/alpha:ZoneQueuedResource',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.bulkInsertInstanceResource =
        registerOutput<BulkInsertInstanceResourceResponse>(
          'bulkInsertInstanceResource',
        );
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.queuingPolicy = registerOutput<QueuingPolicyResponse>('queuingPolicy');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.state = registerOutput<String>('state');
    this.status = registerOutput<QueuedResourceStatusResponse>('status');
    this.zone = registerOutput<String>('zone');
  }
}
