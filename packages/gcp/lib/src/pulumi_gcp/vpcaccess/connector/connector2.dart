import 'package:pulumi/pulumi.dart';
import '../connector_subnet/connector_subnet.dart';
import 'connector_args2.dart';

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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const connector = new gcp.vpcaccess.Connector("connector", {
/// name: "vpc-con",
/// ipCidrRange: "10.8.0.0/28",
/// network: "default",
/// minInstances: 2,
/// maxInstances: 3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// connector = gcp.vpcaccess.Connector("connector",
/// name="vpc-con",
/// ip_cidr_range="10.8.0.0/28",
/// network="default",
/// min_instances=2,
/// max_instances=3)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var connector = new Gcp.VpcAccess.Connector("connector", new()
/// {
/// Name = "vpc-con",
/// IpCidrRange = "10.8.0.0/28",
/// Network = "default",
/// MinInstances = 2,
/// MaxInstances = 3,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vpcaccess"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vpcaccess.NewConnector(ctx, "connector", &vpcaccess.ConnectorArgs{
/// Name:         pulumi.String("vpc-con"),
/// IpCidrRange:  pulumi.String("10.8.0.0/28"),
/// Network:      pulumi.String("default"),
/// MinInstances: pulumi.Int(2),
/// MaxInstances: pulumi.Int(3),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vpcaccess.Connector;
/// import com.pulumi.gcp.vpcaccess.ConnectorArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var connector = new Connector("connector", ConnectorArgs.builder()
/// .name("vpc-con")
/// .ipCidrRange("10.8.0.0/28")
/// .network("default")
/// .minInstances(2)
/// .maxInstances(3)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// connector:
/// type: gcp:vpcaccess:Connector
/// properties:
/// name: vpc-con
/// ipCidrRange: 10.8.0.0/28
/// network: default
/// minInstances: 2
/// maxInstances: 3
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Vpc Access Connector Shared Vpc
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const customTest = new gcp.compute.Subnetwork("custom_test", {
/// name: "vpc-con",
/// ipCidrRange: "10.2.0.0/28",
/// region: "us-central1",
/// network: "default",
/// });
/// const connector = new gcp.vpcaccess.Connector("connector", {
/// name: "vpc-con",
/// subnet: {
/// name: customTest.name,
/// },
/// machineType: "e2-standard-4",
/// minInstances: 2,
/// maxInstances: 3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test = gcp.compute.Subnetwork("custom_test",
/// name="vpc-con",
/// ip_cidr_range="10.2.0.0/28",
/// region="us-central1",
/// network="default")
/// connector = gcp.vpcaccess.Connector("connector",
/// name="vpc-con",
/// subnet={
/// "name": custom_test.name,
/// },
/// machine_type="e2-standard-4",
/// min_instances=2,
/// max_instances=3)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var customTest = new Gcp.Compute.Subnetwork("custom_test", new()
/// {
/// Name = "vpc-con",
/// IpCidrRange = "10.2.0.0/28",
/// Region = "us-central1",
/// Network = "default",
/// });
///
/// var connector = new Gcp.VpcAccess.Connector("connector", new()
/// {
/// Name = "vpc-con",
/// Subnet = new Gcp.VpcAccess.Inputs.ConnectorSubnetArgs
/// {
/// Name = customTest.Name,
/// },
/// MachineType = "e2-standard-4",
/// MinInstances = 2,
/// MaxInstances = 3,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vpcaccess"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// customTest, err := compute.NewSubnetwork(ctx, "custom_test", &compute.SubnetworkArgs{
/// Name:        pulumi.String("vpc-con"),
/// IpCidrRange: pulumi.String("10.2.0.0/28"),
/// Region:      pulumi.String("us-central1"),
/// Network:     pulumi.String("default"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = vpcaccess.NewConnector(ctx, "connector", &vpcaccess.ConnectorArgs{
/// Name: pulumi.String("vpc-con"),
/// Subnet: &vpcaccess.ConnectorSubnetArgs{
/// Name: customTest.Name,
/// },
/// MachineType:  pulumi.String("e2-standard-4"),
/// MinInstances: pulumi.Int(2),
/// MaxInstances: pulumi.Int(3),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.vpcaccess.Connector;
/// import com.pulumi.gcp.vpcaccess.ConnectorArgs;
/// import com.pulumi.gcp.vpcaccess.inputs.ConnectorSubnetArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var customTest = new Subnetwork("customTest", SubnetworkArgs.builder()
/// .name("vpc-con")
/// .ipCidrRange("10.2.0.0/28")
/// .region("us-central1")
/// .network("default")
/// .build());
///
/// var connector = new Connector("connector", ConnectorArgs.builder()
/// .name("vpc-con")
/// .subnet(ConnectorSubnetArgs.builder()
/// .name(customTest.name())
/// .build())
/// .machineType("e2-standard-4")
/// .minInstances(2)
/// .maxInstances(3)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// connector:
/// type: gcp:vpcaccess:Connector
/// properties:
/// name: vpc-con
/// subnet:
/// name: ${customTest.name}
/// machineType: e2-standard-4
/// minInstances: 2
/// maxInstances: 3
/// customTest:
/// type: gcp:compute:Subnetwork
/// name: custom_test
/// properties:
/// name: vpc-con
/// ipCidrRange: 10.2.0.0/28
/// region: us-central1
/// network: default
/// ```
/// <!--End PulumiCodeChooser -->
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
class Connector2 extends CustomResource {
  /// List of projects using the connector.
  late final Output<List<String>> connectedProjects;

  /// The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`.
  late final Output<String?> ipCidrRange;

  /// Machine type of VM Instance underlying connector. Default is e2-micro
  late final Output<String?> machineType;

  /// Maximum value of instances in autoscaling group underlying the connector. Value must be between 3 and 10, inclusive. Must be
  /// higher than the value specified by min_instances. Required alongside <span pulumi-lang-nodejs="`minInstances`" pulumi-lang-dotnet="`MinInstances`" pulumi-lang-go="`minInstances`" pulumi-lang-python="`min_instances`" pulumi-lang-yaml="`minInstances`" pulumi-lang-java="`minInstances`">`min_instances`</span> if not using <span pulumi-lang-nodejs="`minThroughput`" pulumi-lang-dotnet="`MinThroughput`" pulumi-lang-go="`minThroughput`" pulumi-lang-python="`min_throughput`" pulumi-lang-yaml="`minThroughput`" pulumi-lang-java="`minThroughput`">`min_throughput`</span>/<span pulumi-lang-nodejs="`maxThroughput`" pulumi-lang-dotnet="`MaxThroughput`" pulumi-lang-go="`maxThroughput`" pulumi-lang-python="`max_throughput`" pulumi-lang-yaml="`maxThroughput`" pulumi-lang-java="`maxThroughput`">`max_throughput`</span>.
  late final Output<int> maxInstances;

  /// Maximum throughput of the connector in Mbps, must be greater than <span pulumi-lang-nodejs="`minThroughput`" pulumi-lang-dotnet="`MinThroughput`" pulumi-lang-go="`minThroughput`" pulumi-lang-python="`min_throughput`" pulumi-lang-yaml="`minThroughput`" pulumi-lang-java="`minThroughput`">`min_throughput`</span>. Default is 300. Refers to the expected throughput
  /// when using an e2-micro machine type. Value must be a multiple of 100 from 300 through 1000. Must be higher than the value specified by
  /// min_throughput. Only one of <span pulumi-lang-nodejs="`maxThroughput`" pulumi-lang-dotnet="`MaxThroughput`" pulumi-lang-go="`maxThroughput`" pulumi-lang-python="`max_throughput`" pulumi-lang-yaml="`maxThroughput`" pulumi-lang-java="`maxThroughput`">`max_throughput`</span> and <span pulumi-lang-nodejs="`maxInstances`" pulumi-lang-dotnet="`MaxInstances`" pulumi-lang-go="`maxInstances`" pulumi-lang-python="`max_instances`" pulumi-lang-yaml="`maxInstances`" pulumi-lang-java="`maxInstances`">`max_instances`</span> can be specified. The use of<span pulumi-lang-nodejs=" maxThroughput " pulumi-lang-dotnet=" MaxThroughput " pulumi-lang-go=" maxThroughput " pulumi-lang-python=" max_throughput " pulumi-lang-yaml=" maxThroughput " pulumi-lang-java=" maxThroughput "> max_throughput </span>is discouraged in favor of max_instances.
  late final Output<int> maxThroughput;

  /// Minimum value of instances in autoscaling group underlying the connector. Value must be between 2 and 9, inclusive. Must be
  /// lower than the value specified by max_instances. Required alongside <span pulumi-lang-nodejs="`maxInstances`" pulumi-lang-dotnet="`MaxInstances`" pulumi-lang-go="`maxInstances`" pulumi-lang-python="`max_instances`" pulumi-lang-yaml="`maxInstances`" pulumi-lang-java="`maxInstances`">`max_instances`</span> if not using <span pulumi-lang-nodejs="`minThroughput`" pulumi-lang-dotnet="`MinThroughput`" pulumi-lang-go="`minThroughput`" pulumi-lang-python="`min_throughput`" pulumi-lang-yaml="`minThroughput`" pulumi-lang-java="`minThroughput`">`min_throughput`</span>/<span pulumi-lang-nodejs="`maxThroughput`" pulumi-lang-dotnet="`MaxThroughput`" pulumi-lang-go="`maxThroughput`" pulumi-lang-python="`max_throughput`" pulumi-lang-yaml="`maxThroughput`" pulumi-lang-java="`maxThroughput`">`max_throughput`</span>.
  late final Output<int> minInstances;

  /// Minimum throughput of the connector in Mbps. Default and min is 200. Refers to the expected throughput when using an e2-micro machine type.
  /// Value must be a multiple of 100 from 200 through 900. Must be lower than the value specified by max_throughput.
  /// Only one of <span pulumi-lang-nodejs="`minThroughput`" pulumi-lang-dotnet="`MinThroughput`" pulumi-lang-go="`minThroughput`" pulumi-lang-python="`min_throughput`" pulumi-lang-yaml="`minThroughput`" pulumi-lang-java="`minThroughput`">`min_throughput`</span> and <span pulumi-lang-nodejs="`minInstances`" pulumi-lang-dotnet="`MinInstances`" pulumi-lang-go="`minInstances`" pulumi-lang-python="`min_instances`" pulumi-lang-yaml="`minInstances`" pulumi-lang-java="`minInstances`">`min_instances`</span> can be specified. The use of<span pulumi-lang-nodejs=" minThroughput " pulumi-lang-dotnet=" MinThroughput " pulumi-lang-go=" minThroughput " pulumi-lang-python=" min_throughput " pulumi-lang-yaml=" minThroughput " pulumi-lang-java=" minThroughput "> min_throughput </span>is discouraged in favor of min_instances.
  late final Output<int> minThroughput;

  /// The name of the resource (Max 25 characters).
  late final Output<String> name;

  /// Name or<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>of the VPC network. Required if <span pulumi-lang-nodejs="`ipCidrRange`" pulumi-lang-dotnet="`IpCidrRange`" pulumi-lang-go="`ipCidrRange`" pulumi-lang-python="`ip_cidr_range`" pulumi-lang-yaml="`ipCidrRange`" pulumi-lang-java="`ipCidrRange`">`ip_cidr_range`</span> is set.
  late final Output<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Region where the VPC Access connector resides. If it is not provided, the provider region is used.
  late final Output<String> region;

  /// The fully qualified name of this VPC connector
  late final Output<String> selfLink;

  /// State of the VPC access connector.
  late final Output<String> state;

  /// The subnet in which to house the connector
  /// Structure is documented below.
  late final Output<ConnectorSubnet?> subnet;

  Connector2(
    String name, {
    ConnectorArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vpcaccess/connector:Connector',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
