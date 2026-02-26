import 'package:pulumi/pulumi.dart';
import 'global_network_endpoint_args.dart';

/// A Global Network endpoint represents a IP address and port combination that exists outside of GCP.
/// **NOTE**: Global network endpoints cannot be created outside of a
/// global network endpoint group.
///
///
/// To get more information about GlobalNetworkEndpoint, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/networkEndpointGroups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/negs/)
///
/// ## Example Usage
///
/// ### Global Network Endpoint
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const neg = new gcp.compute.GlobalNetworkEndpointGroup("neg", {
/// name: "my-lb-neg",
/// defaultPort: 90,
/// networkEndpointType: "INTERNET_FQDN_PORT",
/// });
/// const default_endpoint = new gcp.compute.GlobalNetworkEndpoint("default-endpoint", {
/// globalNetworkEndpointGroup: neg.name,
/// fqdn: "www.example.com",
/// port: 90,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// neg = gcp.compute.GlobalNetworkEndpointGroup("neg",
/// name="my-lb-neg",
/// default_port=90,
/// network_endpoint_type="INTERNET_FQDN_PORT")
/// default_endpoint = gcp.compute.GlobalNetworkEndpoint("default-endpoint",
/// global_network_endpoint_group=neg.name,
/// fqdn="www.example.com",
/// port=90)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var neg = new Gcp.Compute.GlobalNetworkEndpointGroup("neg", new()
/// {
/// Name = "my-lb-neg",
/// DefaultPort = 90,
/// NetworkEndpointType = "INTERNET_FQDN_PORT",
/// });
///
/// var default_endpoint = new Gcp.Compute.GlobalNetworkEndpoint("default-endpoint", new()
/// {
/// GlobalNetworkEndpointGroup = neg.Name,
/// Fqdn = "www.example.com",
/// Port = 90,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// neg, err := compute.NewGlobalNetworkEndpointGroup(ctx, "neg", &compute.GlobalNetworkEndpointGroupArgs{
/// Name:                pulumi.String("my-lb-neg"),
/// DefaultPort:         pulumi.Int(90),
/// NetworkEndpointType: pulumi.String("INTERNET_FQDN_PORT"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewGlobalNetworkEndpoint(ctx, "default-endpoint", &compute.GlobalNetworkEndpointArgs{
/// GlobalNetworkEndpointGroup: neg.Name,
/// Fqdn:                       pulumi.String("www.example.com"),
/// Port:                       pulumi.Int(90),
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
/// import com.pulumi.gcp.compute.GlobalNetworkEndpointGroup;
/// import com.pulumi.gcp.compute.GlobalNetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.GlobalNetworkEndpoint;
/// import com.pulumi.gcp.compute.GlobalNetworkEndpointArgs;
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
/// var neg = new GlobalNetworkEndpointGroup("neg", GlobalNetworkEndpointGroupArgs.builder()
/// .name("my-lb-neg")
/// .defaultPort(90)
/// .networkEndpointType("INTERNET_FQDN_PORT")
/// .build());
///
/// var default_endpoint = new GlobalNetworkEndpoint("default-endpoint", GlobalNetworkEndpointArgs.builder()
/// .globalNetworkEndpointGroup(neg.name())
/// .fqdn("www.example.com")
/// .port(90)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default-endpoint:
/// type: gcp:compute:GlobalNetworkEndpoint
/// properties:
/// globalNetworkEndpointGroup: ${neg.name}
/// fqdn: www.example.com
/// port: 90
/// neg:
/// type: gcp:compute:GlobalNetworkEndpointGroup
/// properties:
/// name: my-lb-neg
/// defaultPort: '90'
/// networkEndpointType: INTERNET_FQDN_PORT
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// GlobalNetworkEndpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/networkEndpointGroups/{{global_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}`
///
/// * `{{project}}/{{global_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}`
///
/// * `{{global_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}`
///
/// When using the `pulumi import` command, GlobalNetworkEndpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/globalNetworkEndpoint:GlobalNetworkEndpoint default projects/{{project}}/global/networkEndpointGroups/{{global_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/globalNetworkEndpoint:GlobalNetworkEndpoint default {{project}}/{{global_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/globalNetworkEndpoint:GlobalNetworkEndpoint default {{global_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}
/// ```
class GlobalNetworkEndpoint extends CustomResource {
  /// Fully qualified domain name of network endpoint.
  /// This can only be specified when<span pulumi-lang-nodejs=" networkEndpointType " pulumi-lang-dotnet=" NetworkEndpointType " pulumi-lang-go=" networkEndpointType " pulumi-lang-python=" network_endpoint_type " pulumi-lang-yaml=" networkEndpointType " pulumi-lang-java=" networkEndpointType "> network_endpoint_type </span>of the NEG is INTERNET_FQDN_PORT.
  late final Output<String?> fqdn;

  /// The global network endpoint group this endpoint is part of.
  late final Output<String> globalNetworkEndpointGroup;

  /// IPv4 address external endpoint.
  late final Output<String?> ipAddress;

  /// Port number of the external endpoint.
  late final Output<int> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  GlobalNetworkEndpoint(
    String name, {
    GlobalNetworkEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/globalNetworkEndpoint:GlobalNetworkEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.fqdn = registerOutput<String?>('fqdn');
    this.globalNetworkEndpointGroup =
        registerOutput<String>('globalNetworkEndpointGroup');
    this.ipAddress = registerOutput<String?>('ipAddress');
    this.port = registerOutput<int>('port');
    this.project = registerOutput<String>('project');
  }
}
