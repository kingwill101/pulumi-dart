import 'package:pulumi/pulumi.dart';
import 'region_health_aggregation_policy_args.dart';

/// The Health Aggregation Policy specifies how to aggregate the service's constituent source health status to determine an aggregated health status result for the service.  For example, you can specify a criteria such as “Consider the Health Source as `Healthy` if there are at least 5 healthy backend endpoints”. Or, you can specify a criteria like “Consider the Health Source as `Healthy` if minimum 60% of endpoints in the Backend are healthy”. The Health Aggregation Policy is applied to each Health Source (e.g. Backend Service) individually.
///
/// To get more information about RegionHealthAggregationPolicy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/healthAggregationPolicies)
/// * How-to Guides
/// * [Health checks overview](https://cloud.google.com/load-balancing/docs/health-check-concepts)
///
/// ## Example Usage
///
/// ### Compute Region Health Aggregation Policy Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const exampleTestHealthAggregationPolicy = new gcp.compute.RegionHealthAggregationPolicy("example_test_health_aggregation_policy", {
/// name: "test-health-aggregation-policy",
/// description: "Example health aggregation policy basic",
/// region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example_test_health_aggregation_policy = gcp.compute.RegionHealthAggregationPolicy("example_test_health_aggregation_policy",
/// name="test-health-aggregation-policy",
/// description="Example health aggregation policy basic",
/// region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var exampleTestHealthAggregationPolicy = new Gcp.Compute.RegionHealthAggregationPolicy("example_test_health_aggregation_policy", new()
/// {
/// Name = "test-health-aggregation-policy",
/// Description = "Example health aggregation policy basic",
/// Region = "us-central1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewRegionHealthAggregationPolicy(ctx, "example_test_health_aggregation_policy", &compute.RegionHealthAggregationPolicyArgs{
/// Name:        pulumi.String("test-health-aggregation-policy"),
/// Description: pulumi.String("Example health aggregation policy basic"),
/// Region:      pulumi.String("us-central1"),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.compute.RegionHealthAggregationPolicy;
/// import com.pulumi.gcp.compute.RegionHealthAggregationPolicyArgs;
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
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var exampleTestHealthAggregationPolicy = new RegionHealthAggregationPolicy("exampleTestHealthAggregationPolicy", RegionHealthAggregationPolicyArgs.builder()
/// .name("test-health-aggregation-policy")
/// .description("Example health aggregation policy basic")
/// .region("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleTestHealthAggregationPolicy:
/// type: gcp:compute:RegionHealthAggregationPolicy
/// name: example_test_health_aggregation_policy
/// properties:
/// name: test-health-aggregation-policy
/// description: Example health aggregation policy basic
/// region: us-central1
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// RegionHealthAggregationPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/healthAggregationPolicies/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionHealthAggregationPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionHealthAggregationPolicy:RegionHealthAggregationPolicy default projects/{{project}}/regions/{{region}}/healthAggregationPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionHealthAggregationPolicy:RegionHealthAggregationPolicy default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionHealthAggregationPolicy:RegionHealthAggregationPolicy default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionHealthAggregationPolicy:RegionHealthAggregationPolicy default {{name}}
/// ```
class RegionHealthAggregationPolicy extends CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you
  /// create the resource.
  late final Output<String?> description;

  /// Fingerprint of this resource. A hash of the contents stored in this object.
  /// This field is used in optimistic locking. This field will be ignored when
  /// inserting a `HealthAggregationPolicy`. An up-to-date fingerprint
  /// must be provided in order to patch the RegionHealthAggregationPolicy; Otherwise,
  /// the request will fail with error `412 conditionNotMet`. To see
  /// the latest fingerprint, make a `get()` request to retrieve the
  /// RegionHealthAggregationPolicy.
  late final Output<String> fingerprint;

  /// Can only be set if the `policyType` field is
  /// `BACKEND_SERVICE_POLICY`. Specifies the threshold (as a
  /// percentage) of healthy endpoints required in order to consider the
  /// aggregated health result HEALTHY. Defaults to <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span>. Must be in
  /// range [0, 100]. Not applicable if the `policyType` field is
  /// `DNB_PUBLIC_IP_POLICY`. Can be mutated. This field is optional,
  /// and will be set to the default if unspecified. Note that both this
  /// threshold and `minHealthyThreshold` must be satisfied in order
  /// for HEALTHY to be the aggregated result. "Endpoints" refers to network
  /// endpoints within a Network Endpoint Group or instances within an Instance
  /// Group.
  late final Output<int?> healthyPercentThreshold;

  /// Can only be set if the `policyType` field is
  /// `BACKEND_SERVICE_POLICY`. Specifies the minimum number of
  /// healthy endpoints required in order to consider the aggregated health
  /// result HEALTHY. Defaults to <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. Must be positive. Not
  /// applicable if the `policyType` field is
  /// `DNB_PUBLIC_IP_POLICY`. Can be mutated. This field is optional,
  /// and will be set to the default if unspecified. Note that both this
  /// threshold and `healthyPercentThreshold` must be satisfied in
  /// order for HEALTHY to be the aggregated result. "Endpoints" refers to
  /// network endpoints within a Network Endpoint Group or instances within an
  /// Instance Group.
  late final Output<int?> minHealthyThreshold;

  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit, except the last character, which
  /// cannot be a dash.
  late final Output<String> name;

  /// Specifies the type of the healthAggregationPolicy. The only allowed value
  /// for global resources is `DNS_PUBLIC_IP_POLICY`. The only allowed
  /// value for regional resources is `BACKEND_SERVICE_POLICY`. Must
  /// be specified when the healthAggregationPolicy is created, and cannot be
  /// mutated.
  /// Default value is `BACKEND_SERVICE_POLICY`.
  /// Possible values are: `DNS_PUBLIC_IP_POLICY`, `BACKEND_SERVICE_POLICY`.
  late final Output<String?> policyType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// URL of the region where the health aggregation policy resides.
  late final Output<String> region;

  /// Server-defined URL with id for the resource.
  late final Output<String> selfLinkWithId;

  RegionHealthAggregationPolicy(
    String name, {
    RegionHealthAggregationPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionHealthAggregationPolicy:RegionHealthAggregationPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.fingerprint = Output.createUnknown<String>();
    this.healthyPercentThreshold = Output.createUnknown<int?>();
    this.minHealthyThreshold = Output.createUnknown<int?>();
    this.name = Output.createUnknown<String>();
    this.policyType = Output.createUnknown<String?>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.selfLinkWithId = Output.createUnknown<String>();
  }
}
