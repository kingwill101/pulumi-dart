import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_vpcaccess_v1beta1_args.dart';
import 'subnet_response_vpcaccess_v1beta1.dart';

/// Creates a Serverless VPC Access connector, returns an operation.
class ConnectorVpcaccessV1beta1 extends pulumi.CustomResource {
  /// List of projects using the connector.
  late final pulumi.Output<List<String>> connectedProjects;

  /// Required. The ID to use for this connector.
  late final pulumi.Output<String> connectorId;

  /// The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`.
  late final pulumi.Output<String> ipCidrRange;
  late final pulumi.Output<String> location;

  /// Machine type of VM Instance underlying connector. Default is e2-micro
  late final pulumi.Output<String> machineType;

  /// Maximum value of instances in autoscaling group underlying the connector.
  late final pulumi.Output<int> maxInstances;

  /// Maximum throughput of the connector in Mbps. Default is 300, max is 1000. If both max-throughput and max-instances are provided, max-instances takes precedence over max-throughput.
  late final pulumi.Output<int> maxThroughput;

  /// Minimum value of instances in autoscaling group underlying the connector.
  late final pulumi.Output<int> minInstances;

  /// Minimum throughput of the connector in Mbps. Default and min is 200. If both min-throughput and min-instances are provided, min-instances takes precedence over min-throughput.
  late final pulumi.Output<int> minThroughput;

  /// The resource name in the format `projects/*/locations/*/connectors/*`.
  late final pulumi.Output<String> name;

  /// Name of a VPC network.
  late final pulumi.Output<String> network;
  late final pulumi.Output<String> project;

  /// State of the VPC access connector.
  late final pulumi.Output<String> state;

  /// The subnet in which to house the VPC Access Connector.
  late final pulumi.Output<SubnetResponseVpcaccessV1beta1> subnet;

  ConnectorVpcaccessV1beta1(
    String name, {
    ConnectorVpcaccessV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:vpcaccess/v1beta1:Connector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectedProjects = registerOutput<List<String>>('connectedProjects');
    this.connectorId = registerOutput<String>('connectorId');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.location = registerOutput<String>('location');
    this.machineType = registerOutput<String>('machineType');
    this.maxInstances = registerOutput<int>('maxInstances');
    this.maxThroughput = registerOutput<int>('maxThroughput');
    this.minInstances = registerOutput<int>('minInstances');
    this.minThroughput = registerOutput<int>('minThroughput');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.subnet = registerOutput<SubnetResponseVpcaccessV1beta1>('subnet');
  }
}
