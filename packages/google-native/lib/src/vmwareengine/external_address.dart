import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_address_args.dart';

/// Creates a new `ExternalAddress` resource in a given private cloud. The network policy that corresponds to the private cloud must have the external IP address network service enabled (`NetworkPolicy.external_ip`).
/// Auto-naming is currently not supported for this resource.
class ExternalAddress extends pulumi.CustomResource {
  /// Creation time of this resource.
  late final pulumi.Output<String> createTime;

  /// User-provided description for this resource.
  late final pulumi.Output<String> description;

  /// Required. The user-provided identifier of the `ExternalAddress` to be created. This identifier must be unique among `ExternalAddress` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  late final pulumi.Output<String> externalAddressId;

  /// The external IP address of a workload VM.
  late final pulumi.Output<String> externalIp;

  /// The internal IP address of a workload VM.
  late final pulumi.Output<String> internalIp;
  late final pulumi.Output<String> location;

  /// The resource name of this external IP address. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/externalAddresses/my-address`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> privateCloudId;
  late final pulumi.Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if the original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// The state of the resource.
  late final pulumi.Output<String> state;

  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;

  /// Last update time of this resource.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ExternalAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExternalAddress]. {@macro pulumi_vmwareengine_v1_external_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExternalAddress(
    String name, {
    ExternalAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:vmwareengine/v1:ExternalAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.externalAddressId = registerOutput<String>('externalAddressId');
    this.externalIp = registerOutput<String>('externalIp');
    this.internalIp = registerOutput<String>('internalIp');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateCloudId = registerOutput<String>('privateCloudId');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
