import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_args.dart';

/// Cloud IDS is an intrusion detection service that provides threat detection for intrusions, malware, spyware, and command-and-control attacks on your network.
///
///
/// To get more information about Endpoint, see:
///
/// * [API documentation](https://cloud.google.com/intrusion-detection-system/docs/configuring-ids)
///
/// ## Example Usage
///
/// ### Cloudids Endpoint
///
///
///
///
/// ## Import
///
/// Endpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/endpoints/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Endpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudids/endpoint:Endpoint default projects/{{project}}/locations/{{location}}/endpoints/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudids/endpoint:Endpoint default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudids/endpoint:Endpoint default {{location}}/{{name}}
/// ```
class Endpoint extends pulumi.CustomResource {
  /// Creation timestamp in RFC 3339 text format.
  late final pulumi.Output<String> createTime;

  /// An optional description of the endpoint.
  late final pulumi.Output<String?> description;

  /// URL of the endpoint's network address to which traffic is to be sent by Packet Mirroring.
  late final pulumi.Output<String> endpointForwardingRule;

  /// Internal IP address of the endpoint's network entry point.
  late final pulumi.Output<String> endpointIp;

  /// The location for the endpoint.
  late final pulumi.Output<String> location;

  /// Name of the endpoint in the format projects/{project_id}/locations/{locationId}/endpoints/{endpointId}.
  late final pulumi.Output<String> name;

  /// Name of the VPC network that is connected to the IDS endpoint. This can either contain the VPC network name itself (like "src-net") or the full URL to the network (like "projects/{project_id}/global/networks/src-net").
  late final pulumi.Output<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The minimum alert severity level that is reported by the endpoint.
  /// Possible values are: `INFORMATIONAL`, `LOW`, `MEDIUM`, `HIGH`, `CRITICAL`.
  late final pulumi.Output<String> severity;

  /// Configuration for threat IDs excluded from generating alerts. Limit: 99 IDs.
  late final pulumi.Output<List<String>?> threatExceptions;

  /// Last update timestamp in RFC 3339 text format.
  late final pulumi.Output<String> updateTime;

  Endpoint(
    String name, {
    EndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudids/endpoint:Endpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.endpointForwardingRule =
        registerOutput<String>('endpointForwardingRule');
    this.endpointIp = registerOutput<String>('endpointIp');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.severity = registerOutput<String>('severity');
    this.threatExceptions = registerOutput<List<String>?>('threatExceptions');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
