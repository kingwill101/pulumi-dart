import 'package:pulumi/pulumi.dart';
import 'region_composite_health_check_args.dart';

/// A composite health check resource specifies the health source resources and
/// the health destination resource to which the aggregated health result from
/// the health source resources is delivered.
///
/// To get more information about RegionCompositeHealthCheck, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionCompositeHealthChecks)
/// * How-to Guides
/// * [Health checks overview](https://cloud.google.com/load-balancing/docs/health-check-concepts)
///
/// ## Example Usage
///
/// ### Compute Region Composite Health Check Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const hap = new gcp.compute.RegionHealthAggregationPolicy("hap", {
/// name: "test-composite-health-check-hap",
/// description: "health aggregation policy for health source",
/// region: "us-central1",
/// });
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
/// name: "test-composite-health-check-hc",
/// httpHealthCheck: {
/// port: 80,
/// },
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
/// name: "test-composite-health-check-bs",
/// region: "us-central1",
/// healthChecks: defaultHealthCheck.id,
/// loadBalancingScheme: "INTERNAL",
/// });
/// const _default = new gcp.compute.RegionHealthSource("default", {
/// name: "test-composite-health-check-hs",
/// region: "us-central1",
/// sourceType: "BACKEND_SERVICE",
/// sources: defaultRegionBackendService.id,
/// healthAggregationPolicy: hap.id,
/// });
/// const defaultNetwork = new gcp.compute.Network("default", {
/// name: "test-composite-health-check-net",
/// autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
/// name: "test-composite-health-check-sub",
/// ipCidrRange: "10.2.0.0/16",
/// region: "us-central1",
/// network: defaultNetwork.id,
/// });
/// const defaultForwardingRule = new gcp.compute.ForwardingRule("default", {
/// name: "test-composite-health-check-fr",
/// region: "us-central1",
/// loadBalancingScheme: "INTERNAL",
/// backendService: defaultRegionBackendService.id,
/// network: defaultNetwork.id,
/// subnetwork: defaultSubnetwork.id,
/// ipProtocol: "TCP",
/// allPorts: true,
/// });
/// const exampleTestCompositeHealthCheck = new gcp.compute.RegionCompositeHealthCheck("example_test_composite_health_check", {
/// name: "test-composite-health-check",
/// description: "test regional composite health check resource",
/// region: "us-central1",
/// healthSources: [_default.id],
/// healthDestination: defaultForwardingRule.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// hap = gcp.compute.RegionHealthAggregationPolicy("hap",
/// name="test-composite-health-check-hap",
/// description="health aggregation policy for health source",
/// region="us-central1")
/// default_health_check = gcp.compute.HealthCheck("default",
/// name="test-composite-health-check-hc",
/// http_health_check={
/// "port": 80,
/// })
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
/// name="test-composite-health-check-bs",
/// region="us-central1",
/// health_checks=default_health_check.id,
/// load_balancing_scheme="INTERNAL")
/// default = gcp.compute.RegionHealthSource("default",
/// name="test-composite-health-check-hs",
/// region="us-central1",
/// source_type="BACKEND_SERVICE",
/// sources=default_region_backend_service.id,
/// health_aggregation_policy=hap.id)
/// default_network = gcp.compute.Network("default",
/// name="test-composite-health-check-net",
/// auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
/// name="test-composite-health-check-sub",
/// ip_cidr_range="10.2.0.0/16",
/// region="us-central1",
/// network=default_network.id)
/// default_forwarding_rule = gcp.compute.ForwardingRule("default",
/// name="test-composite-health-check-fr",
/// region="us-central1",
/// load_balancing_scheme="INTERNAL",
/// backend_service=default_region_backend_service.id,
/// network=default_network.id,
/// subnetwork=default_subnetwork.id,
/// ip_protocol="TCP",
/// all_ports=True)
/// example_test_composite_health_check = gcp.compute.RegionCompositeHealthCheck("example_test_composite_health_check",
/// name="test-composite-health-check",
/// description="test regional composite health check resource",
/// region="us-central1",
/// health_sources=[default.id],
/// health_destination=default_forwarding_rule.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var hap = new Gcp.Compute.RegionHealthAggregationPolicy("hap", new()
/// {
/// Name = "test-composite-health-check-hap",
/// Description = "health aggregation policy for health source",
/// Region = "us-central1",
/// });
///
/// var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
/// {
/// Name = "test-composite-health-check-hc",
/// HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
/// {
/// Port = 80,
/// },
/// });
///
/// var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
/// {
/// Name = "test-composite-health-check-bs",
/// Region = "us-central1",
/// HealthChecks = defaultHealthCheck.Id,
/// LoadBalancingScheme = "INTERNAL",
/// });
///
/// var @default = new Gcp.Compute.RegionHealthSource("default", new()
/// {
/// Name = "test-composite-health-check-hs",
/// Region = "us-central1",
/// SourceType = "BACKEND_SERVICE",
/// Sources = defaultRegionBackendService.Id,
/// HealthAggregationPolicy = hap.Id,
/// });
///
/// var defaultNetwork = new Gcp.Compute.Network("default", new()
/// {
/// Name = "test-composite-health-check-net",
/// AutoCreateSubnetworks = false,
/// });
///
/// var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
/// {
/// Name = "test-composite-health-check-sub",
/// IpCidrRange = "10.2.0.0/16",
/// Region = "us-central1",
/// Network = defaultNetwork.Id,
/// });
///
/// var defaultForwardingRule = new Gcp.Compute.ForwardingRule("default", new()
/// {
/// Name = "test-composite-health-check-fr",
/// Region = "us-central1",
/// LoadBalancingScheme = "INTERNAL",
/// BackendService = defaultRegionBackendService.Id,
/// Network = defaultNetwork.Id,
/// Subnetwork = defaultSubnetwork.Id,
/// IpProtocol = "TCP",
/// AllPorts = true,
/// });
///
/// var exampleTestCompositeHealthCheck = new Gcp.Compute.RegionCompositeHealthCheck("example_test_composite_health_check", new()
/// {
/// Name = "test-composite-health-check",
/// Description = "test regional composite health check resource",
/// Region = "us-central1",
/// HealthSources = new[]
/// {
/// @default.Id,
/// },
/// HealthDestination = defaultForwardingRule.Id,
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
/// hap, err := compute.NewRegionHealthAggregationPolicy(ctx, "hap", &compute.RegionHealthAggregationPolicyArgs{
/// Name:        pulumi.String("test-composite-health-check-hap"),
/// Description: pulumi.String("health aggregation policy for health source"),
/// Region:      pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// Name: pulumi.String("test-composite-health-check-hc"),
/// HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// Port: pulumi.Int(80),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// defaultRegionBackendService, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// Name:                pulumi.String("test-composite-health-check-bs"),
/// Region:              pulumi.String("us-central1"),
/// HealthChecks:        defaultHealthCheck.ID(),
/// LoadBalancingScheme: pulumi.String("INTERNAL"),
/// })
/// if err != nil {
/// return err
/// }
/// _default, err := compute.NewRegionHealthSource(ctx, "default", &compute.RegionHealthSourceArgs{
/// Name:                    pulumi.String("test-composite-health-check-hs"),
/// Region:                  pulumi.String("us-central1"),
/// SourceType:              pulumi.String("BACKEND_SERVICE"),
/// Sources:                 defaultRegionBackendService.ID(),
/// HealthAggregationPolicy: hap.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name:                  pulumi.String("test-composite-health-check-net"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// Name:        pulumi.String("test-composite-health-check-sub"),
/// IpCidrRange: pulumi.String("10.2.0.0/16"),
/// Region:      pulumi.String("us-central1"),
/// Network:     defaultNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultForwardingRule, err := compute.NewForwardingRule(ctx, "default", &compute.ForwardingRuleArgs{
/// Name:                pulumi.String("test-composite-health-check-fr"),
/// Region:              pulumi.String("us-central1"),
/// LoadBalancingScheme: pulumi.String("INTERNAL"),
/// BackendService:      defaultRegionBackendService.ID(),
/// Network:             defaultNetwork.ID(),
/// Subnetwork:          defaultSubnetwork.ID(),
/// IpProtocol:          pulumi.String("TCP"),
/// AllPorts:            pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewRegionCompositeHealthCheck(ctx, "example_test_composite_health_check", &compute.RegionCompositeHealthCheckArgs{
/// Name:        pulumi.String("test-composite-health-check"),
/// Description: pulumi.String("test regional composite health check resource"),
/// Region:      pulumi.String("us-central1"),
/// HealthSources: pulumi.StringArray{
/// _default.ID(),
/// },
/// HealthDestination: defaultForwardingRule.ID(),
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
/// import com.pulumi.gcp.compute.RegionHealthAggregationPolicy;
/// import com.pulumi.gcp.compute.RegionHealthAggregationPolicyArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionHealthSource;
/// import com.pulumi.gcp.compute.RegionHealthSourceArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.compute.RegionCompositeHealthCheck;
/// import com.pulumi.gcp.compute.RegionCompositeHealthCheckArgs;
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
/// var hap = new RegionHealthAggregationPolicy("hap", RegionHealthAggregationPolicyArgs.builder()
/// .name("test-composite-health-check-hap")
/// .description("health aggregation policy for health source")
/// .region("us-central1")
/// .build());
///
/// var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
/// .name("test-composite-health-check-hc")
/// .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
/// .port(80)
/// .build())
/// .build());
///
/// var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
/// .name("test-composite-health-check-bs")
/// .region("us-central1")
/// .healthChecks(defaultHealthCheck.id())
/// .loadBalancingScheme("INTERNAL")
/// .build());
///
/// var default_ = new RegionHealthSource("default", RegionHealthSourceArgs.builder()
/// .name("test-composite-health-check-hs")
/// .region("us-central1")
/// .sourceType("BACKEND_SERVICE")
/// .sources(defaultRegionBackendService.id())
/// .healthAggregationPolicy(hap.id())
/// .build());
///
/// var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
/// .name("test-composite-health-check-net")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
/// .name("test-composite-health-check-sub")
/// .ipCidrRange("10.2.0.0/16")
/// .region("us-central1")
/// .network(defaultNetwork.id())
/// .build());
///
/// var defaultForwardingRule = new ForwardingRule("defaultForwardingRule", ForwardingRuleArgs.builder()
/// .name("test-composite-health-check-fr")
/// .region("us-central1")
/// .loadBalancingScheme("INTERNAL")
/// .backendService(defaultRegionBackendService.id())
/// .network(defaultNetwork.id())
/// .subnetwork(defaultSubnetwork.id())
/// .ipProtocol("TCP")
/// .allPorts(true)
/// .build());
///
/// var exampleTestCompositeHealthCheck = new RegionCompositeHealthCheck("exampleTestCompositeHealthCheck", RegionCompositeHealthCheckArgs.builder()
/// .name("test-composite-health-check")
/// .description("test regional composite health check resource")
/// .region("us-central1")
/// .healthSources(default_.id())
/// .healthDestination(defaultForwardingRule.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleTestCompositeHealthCheck:
/// type: gcp:compute:RegionCompositeHealthCheck
/// name: example_test_composite_health_check
/// properties:
/// name: test-composite-health-check
/// description: test regional composite health check resource
/// region: us-central1
/// healthSources:
/// - ${default.id}
/// healthDestination: ${defaultForwardingRule.id}
/// default:
/// type: gcp:compute:RegionHealthSource
/// properties:
/// name: test-composite-health-check-hs
/// region: us-central1
/// sourceType: BACKEND_SERVICE
/// sources: ${defaultRegionBackendService.id}
/// healthAggregationPolicy: ${hap.id}
/// hap:
/// type: gcp:compute:RegionHealthAggregationPolicy
/// properties:
/// name: test-composite-health-check-hap
/// description: health aggregation policy for health source
/// region: us-central1
/// defaultHealthCheck:
/// type: gcp:compute:HealthCheck
/// name: default
/// properties:
/// name: test-composite-health-check-hc
/// httpHealthCheck:
/// port: 80
/// defaultRegionBackendService:
/// type: gcp:compute:RegionBackendService
/// name: default
/// properties:
/// name: test-composite-health-check-bs
/// region: us-central1
/// healthChecks: ${defaultHealthCheck.id}
/// loadBalancingScheme: INTERNAL
/// defaultForwardingRule:
/// type: gcp:compute:ForwardingRule
/// name: default
/// properties:
/// name: test-composite-health-check-fr
/// region: us-central1
/// loadBalancingScheme: INTERNAL
/// backendService: ${defaultRegionBackendService.id}
/// network: ${defaultNetwork.id}
/// subnetwork: ${defaultSubnetwork.id}
/// ipProtocol: TCP
/// allPorts: true
/// defaultNetwork:
/// type: gcp:compute:Network
/// name: default
/// properties:
/// name: test-composite-health-check-net
/// autoCreateSubnetworks: false
/// defaultSubnetwork:
/// type: gcp:compute:Subnetwork
/// name: default
/// properties:
/// name: test-composite-health-check-sub
/// ipCidrRange: 10.2.0.0/16
/// region: us-central1
/// network: ${defaultNetwork.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// RegionCompositeHealthCheck can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/compositeHealthChecks/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionCompositeHealthCheck can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionCompositeHealthCheck:RegionCompositeHealthCheck default projects/{{project}}/regions/{{region}}/compositeHealthChecks/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionCompositeHealthCheck:RegionCompositeHealthCheck default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionCompositeHealthCheck:RegionCompositeHealthCheck default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionCompositeHealthCheck:RegionCompositeHealthCheck default {{name}}
/// ```
class RegionCompositeHealthCheck extends CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you
  /// create the resource.
  late final Output<String?> description;

  /// Fingerprint of this resource. A hash of the contents stored in this object.
  /// This field is used in optimistic locking. This field will be ignored when
  /// inserting a `CompositeHealthCheck`. An up-to-date fingerprint
  /// must be provided in order to patch the CompositeHealthCheck; Otherwise,
  /// the request will fail with error `412 conditionNotMet`. To see
  /// the latest fingerprint, make a `get()` request to retrieve the
  /// CompositeHealthCheck.
  late final Output<String> fingerprint;

  /// URL to the destination resource. Must be set. Must be a
  /// ForwardingRule. The ForwardingRule must have
  /// load balancing scheme INTERNAL or
  /// INTERNAL_MANAGED and must be regional and in the same region
  /// as the CompositeHealthCheck (cross-region deployment for
  /// INTERNAL_MANAGED is not supported). Can be mutated.
  late final Output<String> healthDestination;

  /// URLs to the HealthSource resources whose results are AND'ed.
  /// I.e. he aggregated result is is HEALTHY only if all sources
  /// are HEALTHY. Must have at least 1. Must not have more than 10.
  /// Must be regional and in the same region as the
  /// CompositeHealthCheck. Can be mutated.
  late final Output<List<String>?> healthSources;

  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit, except the last character, which
  /// cannot be a dash.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// URL of the region where the composite health check resides.
  late final Output<String> region;

  /// Server-defined URL with id for the resource.
  late final Output<String> selfLinkWithId;

  RegionCompositeHealthCheck(
    String name, {
    RegionCompositeHealthCheckArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionCompositeHealthCheck:RegionCompositeHealthCheck',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.fingerprint = Output.createUnknown<String>();
    this.healthDestination = Output.createUnknown<String>();
    this.healthSources = Output.createUnknown<List<String>?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.selfLinkWithId = Output.createUnknown<String>();
  }
}
