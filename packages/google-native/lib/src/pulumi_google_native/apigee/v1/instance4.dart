import 'package:pulumi/pulumi.dart';
import 'instance_args4.dart';

/// Creates an Apigee runtime instance. The instance is accessible from the authorized network configured on the organization. **Note:** Not supported for Apigee hybrid.
class Instance4 extends CustomResource {
  /// Optional. Customer accept list represents the list of projects (id/number) on customer side that can privately connect to the service attachment. It is an optional field which the customers can provide during the instance creation. By default, the customer project associated with the Apigee organization will be included to the list.
  late final Output<List<String>> consumerAcceptList;

  /// Time the instance was created in milliseconds since epoch.
  late final Output<String> createdAt;

  /// Optional. Description of the instance.
  late final Output<String> description;

  /// Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only. Use the following format: `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`
  late final Output<String> diskEncryptionKeyName;

  /// Optional. Display name for the instance.
  late final Output<String> displayName;

  /// Internal hostname or IP address of the Apigee endpoint used by clients to connect to the service.
  late final Output<String> host;

  /// Optional. Comma-separated list of CIDR blocks of length 22 and/or 28 used to create the Apigee instance. Providing CIDR ranges is optional. You can provide just /22 or /28 or both (or neither). Ranges you provide should be freely available as part of a larger named range you have allocated to the Service Networking peering. If this parameter is not provided, Apigee automatically requests an available /22 and /28 CIDR block from Service Networking. Use the /22 CIDR block for configuring your firewall needs to allow traffic from Apigee. Input formats: `a.b.c.d/22` or `e.f.g.h/28` or `a.b.c.d/22,e.f.g.h/28`
  late final Output<String> ipRange;

  /// Time the instance was last modified in milliseconds since epoch.
  late final Output<String> lastModifiedAt;

  /// Compute Engine location where the instance resides.
  late final Output<String> location;

  /// Resource ID of the instance. Values must match the regular expression `^a-z{0,30}[a-z\d]$`.
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Optional. Size of the CIDR block range that will be reserved by the instance. PAID organizations support `SLASH_16` to `SLASH_20` and defaults to `SLASH_16`. Evaluation organizations support only `SLASH_23`.
  late final Output<String> peeringCidrRange;

  /// Port number of the exposed Apigee endpoint.
  late final Output<String> port;

  /// Version of the runtime system running in the instance. The runtime system is the set of components that serve the API Proxy traffic in your Environments.
  late final Output<String> runtimeVersion;

  /// Resource name of the service attachment created for the instance in the format: `projects/*/regions/*/serviceAttachments/*` Apigee customers can privately forward traffic to this service attachment using the PSC endpoints.
  late final Output<String> serviceAttachment;

  /// State of the instance. Values other than `ACTIVE` means the resource is not ready to use.
  late final Output<String> state;

  Instance4(
    String name, {
    InstanceArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.consumerAcceptList = Output.createUnknown<List<String>>();
    this.createdAt = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.diskEncryptionKeyName = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.host = Output.createUnknown<String>();
    this.ipRange = Output.createUnknown<String>();
    this.lastModifiedAt = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.peeringCidrRange = Output.createUnknown<String>();
    this.port = Output.createUnknown<String>();
    this.runtimeVersion = Output.createUnknown<String>();
    this.serviceAttachment = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
  }
}
