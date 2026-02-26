import 'package:pulumi/pulumi.dart';
import 'connector_args3.dart';
import 'subnet_response2.dart';

/// Creates a Serverless VPC Access connector, returns an operation.
class Connector3 extends CustomResource {
  /// List of projects using the connector.
  late final Output<List<String>> connectedProjects;

  /// Required. The ID to use for this connector.
  late final Output<String> connectorId;

  /// The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`.
  late final Output<String> ipCidrRange;
  late final Output<String> location;

  /// Machine type of VM Instance underlying connector. Default is e2-micro
  late final Output<String> machineType;

  /// Maximum value of instances in autoscaling group underlying the connector.
  late final Output<int> maxInstances;

  /// Maximum throughput of the connector in Mbps. Default is 300, max is 1000. If both max-throughput and max-instances are provided, max-instances takes precedence over max-throughput.
  late final Output<int> maxThroughput;

  /// Minimum value of instances in autoscaling group underlying the connector.
  late final Output<int> minInstances;

  /// Minimum throughput of the connector in Mbps. Default and min is 200. If both min-throughput and min-instances are provided, min-instances takes precedence over min-throughput.
  late final Output<int> minThroughput;

  /// The resource name in the format `projects/*/locations/*/connectors/*`.
  late final Output<String> name;

  /// Name of a VPC network.
  late final Output<String> network;
  late final Output<String> project;

  /// State of the VPC access connector.
  late final Output<String> state;

  /// The subnet in which to house the VPC Access Connector.
  late final Output<SubnetResponse2> subnet;

  Connector3(
    String name, {
    ConnectorArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vpcaccess/v1beta1:Connector',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.connectedProjects = Output.createUnknown<List<String>>();
    this.connectorId = Output.createUnknown<String>();
    this.ipCidrRange = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.machineType = Output.createUnknown<String>();
    this.maxInstances = Output.createUnknown<int>();
    this.maxThroughput = Output.createUnknown<int>();
    this.minInstances = Output.createUnknown<int>();
    this.minThroughput = Output.createUnknown<int>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.subnet = Output.createUnknown<SubnetResponse2>();
  }
}
