import 'package:pulumi/pulumi.dart';
import 'organization_address_group_args.dart';

/// Creates a new address group in a given project and location.
/// Auto-naming is currently not supported for this resource.
class OrganizationAddressGroup extends CustomResource {
  /// Required. Short name of the AddressGroup resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "authz_policy".
  late final Output<String> addressGroupId;

  /// Capacity of the Address Group
  late final Output<int> capacity;

  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// Optional. Free-text description of the resource.
  late final Output<String> description;

  /// Optional. List of items.
  late final Output<List<String>> items;

  /// Optional. Set of label tags associated with the AddressGroup resource.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Name of the AddressGroup resource. It matches pattern `projects/*/locations/{location}/addressGroups/`.
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Server-defined fully-qualified URL for this resource.
  late final Output<String> selfLink;

  /// The type of the Address Group. Possible values are "IPv4" or "IPV6".
  late final Output<String> type;

  /// The timestamp when the resource was updated.
  late final Output<String> updateTime;

  OrganizationAddressGroup(
    String name, {
    OrganizationAddressGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networksecurity/v1:OrganizationAddressGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.addressGroupId = Output.createUnknown<String>();
    this.capacity = Output.createUnknown<int>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.items = Output.createUnknown<List<String>>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.selfLink = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
