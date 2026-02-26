import 'package:pulumi/pulumi.dart';
import 'bulk_insert_instance_resource_response.dart';
import 'queued_resource_status_response.dart';
import 'queuing_policy_response.dart';
import 'zone_queued_resource_args.dart';

/// Creates a QueuedResource.
class ZoneQueuedResource extends CustomResource {
  /// Specification of VM instances to create.
  late final Output<BulkInsertInstanceResourceResponse>
      bulkInsertInstanceResource;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// Type of the resource. Always compute#queuedResource for QueuedResources.
  late final Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;
  late final Output<String> project;

  /// Queuing parameters for the requested capacity.
  late final Output<QueuingPolicyResponse> queuingPolicy;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// [Output only] Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  /// [Output only] High-level status of the request.
  late final Output<String> state;

  /// [Output only] Result of queuing and provisioning based on deferred capacity.
  late final Output<QueuedResourceStatusResponse> status;
  late final Output<String> zone;

  ZoneQueuedResource(
    String name, {
    ZoneQueuedResourceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/alpha:ZoneQueuedResource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bulkInsertInstanceResource =
        Output.createUnknown<BulkInsertInstanceResourceResponse>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.kind = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.queuingPolicy = Output.createUnknown<QueuingPolicyResponse>();
    this.requestId = Output.createUnknown<String?>();
    this.selfLink = Output.createUnknown<String>();
    this.selfLinkWithId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.status = Output.createUnknown<QueuedResourceStatusResponse>();
    this.zone = Output.createUnknown<String>();
  }
}
