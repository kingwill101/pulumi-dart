import 'package:pulumi/pulumi.dart' as pulumi;
import '../connector_subnet/connector_subnet.dart';
import 'connector_vpcaccess_args.dart';

/// Serverless VPC Access connector resource.
///
///
/// To get more information about Connector, see:
///
/// * [API documentation](https://cloud.google.com/vpc/docs/reference/vpcaccess/rest/v1/projects.locations.connectors)
/// * How-to Guides
/// * [Configuring Serverless VPC Access](https://cloud.google.com/vpc/docs/configure-serverless-vpc-access)
///
/// ## Example Usage
///
/// ### Vpc Access Connector
///
///
///
/// ### Vpc Access Connector Shared Vpc
///
///
///
///
/// ## Import
///
/// Connector can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/connectors/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Connector can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vpcaccess/connector:Connector default projects/{{project}}/locations/{{region}}/connectors/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vpcaccess/connector:Connector default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vpcaccess/connector:Connector default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vpcaccess/connector:Connector default {{name}}
/// ```
class ConnectorVpcaccess extends pulumi.CustomResource {
  /// List of projects using the connector.
  late final pulumi.Output<List<String>> connectedProjects;

  /// The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`.
  late final pulumi.Output<String?> ipCidrRange;

  /// Machine type of VM Instance underlying connector. Default is e2-micro
  late final pulumi.Output<String?> machineType;

  /// Maximum value of instances in autoscaling group underlying the connector. Value must be between 3 and 10, inclusive. Must be
  /// higher than the value specified by min_instances. Required alongside `min_instances` if not using `min_throughput`/`max_throughput`.
  late final pulumi.Output<int> maxInstances;

  /// Maximum throughput of the connector in Mbps, must be greater than `min_throughput`. Default is 300. Refers to the expected throughput
  /// when using an e2-micro machine type. Value must be a multiple of 100 from 300 through 1000. Must be higher than the value specified by
  /// min_throughput. Only one of `max_throughput` and `max_instances` can be specified. The use of max_throughput is discouraged in favor of max_instances.
  late final pulumi.Output<int> maxThroughput;

  /// Minimum value of instances in autoscaling group underlying the connector. Value must be between 2 and 9, inclusive. Must be
  /// lower than the value specified by max_instances. Required alongside `max_instances` if not using `min_throughput`/`max_throughput`.
  late final pulumi.Output<int> minInstances;

  /// Minimum throughput of the connector in Mbps. Default and min is 200. Refers to the expected throughput when using an e2-micro machine type.
  /// Value must be a multiple of 100 from 200 through 900. Must be lower than the value specified by max_throughput.
  /// Only one of `min_throughput` and `min_instances` can be specified. The use of min_throughput is discouraged in favor of min_instances.
  late final pulumi.Output<int> minThroughput;

  /// The name of the resource (Max 25 characters).
  late final pulumi.Output<String> name;

  /// Name or self_link of the VPC network. Required if `ip_cidr_range` is set.
  late final pulumi.Output<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Region where the VPC Access connector resides. If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;

  /// The fully qualified name of this VPC connector
  late final pulumi.Output<String> selfLink;

  /// State of the VPC access connector.
  late final pulumi.Output<String> state;

  /// The subnet in which to house the connector
  /// Structure is documented below.
  late final pulumi.Output<ConnectorSubnet?> subnet;

  ConnectorVpcaccess(
    String name, {
    ConnectorVpcaccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vpcaccess/connector:Connector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectedProjects = registerOutput<List<String>>('connectedProjects');
    this.ipCidrRange = registerOutput<String?>('ipCidrRange');
    this.machineType = registerOutput<String?>('machineType');
    this.maxInstances = registerOutput<int>('maxInstances');
    this.maxThroughput = registerOutput<int>('maxThroughput');
    this.minInstances = registerOutput<int>('minInstances');
    this.minThroughput = registerOutput<int>('minThroughput');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.state = registerOutput<String>('state');
    this.subnet = registerOutput<ConnectorSubnet?>('subnet');
  }
}
