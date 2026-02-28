import 'package:pulumi/pulumi.dart' as pulumi;
import 'internal_range_args.dart';

/// Creates a new internal range in a given project and location.
class InternalRange extends pulumi.CustomResource {
  /// Time when the internal range was created.
  late final pulumi.Output<String> createTime;

  /// A description of this resource.
  late final pulumi.Output<String> description;

  /// Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/internalRanges/foo') See https://google.aip.dev/122#resource-id-segments Unique per location.
  late final pulumi.Output<String?> internalRangeId;

  /// The IP range that this internal range defines.
  late final pulumi.Output<String> ipCidrRange;

  /// User-defined labels.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Immutable. The name of an internal range. Format: projects/{project}/locations/{location}/internalRanges/{internal_range} See: https://google.aip.dev/122#fields-representing-resource-names
  late final pulumi.Output<String> name;

  /// The URL or resource ID of the network in which to reserve the internal range. The network cannot be deleted if there are any reserved internal ranges referring to it. Legacy networks are not supported. This can only be specified for a global internal address. Example: - URL: /compute/v1/projects/{project}/global/networks/{resourceId} - ID: network123
  late final pulumi.Output<String> network;

  /// Optional. Types of resources that are allowed to overlap with the current internal range.
  late final pulumi.Output<List<String>> overlaps;

  /// The type of peering set for this internal range.
  late final pulumi.Output<String> peering;

  /// An alternate to ip_cidr_range. Can be set when trying to create a reservation that automatically finds a free range of the given size. If both ip_cidr_range and prefix_length are set, there is an error if the range sizes do not match. Can also be used during updates to change the range size.
  late final pulumi.Output<int> prefixLength;
  late final pulumi.Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Optional. Can be set to narrow down or pick a different address space while searching for a free range. If not set, defaults to the "10.0.0.0/8" address space. This can be used to search in other rfc-1918 address spaces like "172.16.0.0/12" and "192.168.0.0/16" or non-rfc-1918 address spaces used in the VPC.
  late final pulumi.Output<List<String>> targetCidrRange;

  /// Time when the internal range was updated.
  late final pulumi.Output<String> updateTime;

  /// The type of usage set for this InternalRange.
  late final pulumi.Output<String> usage;

  /// The list of resources that refer to this internal range. Resources that use the internal range for their range allocation are referred to as users of the range. Other resources mark themselves as users while doing so by creating a reference to this internal range. Having a user, based on this reference, prevents deletion of the internal range referred to. Can be empty.
  late final pulumi.Output<List<String>> users;

  /// Creates a new [InternalRange].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InternalRange]. {@macro pulumi_networkconnectivity_v1_internal_range_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InternalRange(
    String name, {
    InternalRangeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:networkconnectivity/v1:InternalRange',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.internalRangeId = registerOutput<String?>('internalRangeId');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.overlaps = registerOutput<List<String>>('overlaps');
    this.peering = registerOutput<String>('peering');
    this.prefixLength = registerOutput<int>('prefixLength');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.targetCidrRange = registerOutput<List<String>>('targetCidrRange');
    this.updateTime = registerOutput<String>('updateTime');
    this.usage = registerOutput<String>('usage');
    this.users = registerOutput<List<String>>('users');
  }
}
