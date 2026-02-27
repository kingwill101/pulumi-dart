import 'package:pulumi/pulumi.dart';
import '../instance_access_logging_config/instance_access_logging_config.dart';
import 'instance_args2.dart';

/// An `Instance` is the runtime dataplane in Apigee.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.instances/create)
/// * How-to Guides
/// * [Creating a runtime instance](https://cloud.google.com/apigee/docs/api-platform/get-started/create-instance)
///
/// ## Example Usage
///
/// ### Apigee Instance Basic
///
///
///
/// ### Apigee Instance Cidr Range
///
///
///
/// ### Apigee Instance Ip Range
///
///
///
/// ### Apigee Instance Full
///
///
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `{{org_id}}/instances/{{name}}`
///
/// * `{{org_id}}/{{name}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/instance:Instance default {{org_id}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/instance:Instance default {{org_id}}/{{name}}
/// ```
class Instance2 extends CustomResource {
  /// Access logging configuration enables the access logging feature at the instance.
  /// Apigee customers can enable access logging to ship the access logs to their own project's cloud logging.
  /// Structure is documented below.
  late final Output<InstanceAccessLoggingConfig?> accessLoggingConfig;

  /// Optional. Customer accept list represents the list of projects (id/number) on customer
  /// side that can privately connect to the service attachment. It is an optional field
  /// which the customers can provide during the instance creation. By default, the customer
  /// project associated with the Apigee organization will be included to the list.
  late final Output<List<String>> consumerAcceptLists;

  /// Description of the instance.
  late final Output<String?> description;

  /// Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only.
  /// Use the following format: `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`
  late final Output<String?> diskEncryptionKeyName;

  /// Display name of the instance.
  late final Output<String?> displayName;

  /// Output only. Hostname or IP address of the exposed Apigee endpoint used by clients to connect to the service.
  late final Output<String> host;

  /// IP range represents the customer-provided CIDR block of length 22 that will be used for
  /// the Apigee instance creation. This optional range, if provided, should be freely
  /// available as part of larger named range the customer has allocated to the Service
  /// Networking peering. If this is not provided, Apigee will automatically request for any
  /// available /22 CIDR block from Service Networking. The customer should use this CIDR block
  /// for configuring their firewall needs to allow traffic from Apigee.
  /// Input format: "a.b.c.d/22"
  late final Output<String?> ipRange;

  /// Required. Compute Engine location where the instance resides.
  late final Output<String> location;

  /// Resource ID of the instance.
  late final Output<String> name;

  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  late final Output<String> orgId;

  /// The size of the CIDR block range that will be reserved by the instance. For valid values,
  /// see [CidrRange](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.instances#CidrRange) on the documentation.
  late final Output<String> peeringCidrRange;

  /// Output only. Port number of the exposed Apigee endpoint.
  late final Output<String> port;

  /// Output only. Resource name of the service attachment created for the instance in
  /// the format: projects/*/regions/*/serviceAttachments/* Apigee customers can privately
  /// forward traffic to this service attachment using the PSC endpoints.
  late final Output<String> serviceAttachment;

  Instance2(
    String name, {
    InstanceArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/instance:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessLoggingConfig =
        registerOutput<InstanceAccessLoggingConfig?>('accessLoggingConfig');
    this.consumerAcceptLists =
        registerOutput<List<String>>('consumerAcceptLists');
    this.description = registerOutput<String?>('description');
    this.diskEncryptionKeyName =
        registerOutput<String?>('diskEncryptionKeyName');
    this.displayName = registerOutput<String?>('displayName');
    this.host = registerOutput<String>('host');
    this.ipRange = registerOutput<String?>('ipRange');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.orgId = registerOutput<String>('orgId');
    this.peeringCidrRange = registerOutput<String>('peeringCidrRange');
    this.port = registerOutput<String>('port');
    this.serviceAttachment = registerOutput<String>('serviceAttachment');
  }
}
