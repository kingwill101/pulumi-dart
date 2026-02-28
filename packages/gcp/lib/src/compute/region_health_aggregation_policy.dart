import 'package:pulumi/pulumi.dart' as pulumi;
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
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const exampleTestHealthAggregationPolicy = new gcp.compute.RegionHealthAggregationPolicy("example_test_health_aggregation_policy", {
///     name: "test-health-aggregation-policy",
///     description: "Example health aggregation policy basic",
///     region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example_test_health_aggregation_policy = gcp.compute.RegionHealthAggregationPolicy("example_test_health_aggregation_policy",
///     name="test-health-aggregation-policy",
///     description="Example health aggregation policy basic",
///     region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var exampleTestHealthAggregationPolicy = new Gcp.Compute.RegionHealthAggregationPolicy("example_test_health_aggregation_policy", new()
///     {
///         Name = "test-health-aggregation-policy",
///         Description = "Example health aggregation policy basic",
///         Region = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionHealthAggregationPolicy(ctx, "example_test_health_aggregation_policy", &compute.RegionHealthAggregationPolicyArgs{
/// 			Name:        pulumi.String("test-health-aggregation-policy"),
/// 			Description: pulumi.String("Example health aggregation policy basic"),
/// 			Region:      pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var exampleTestHealthAggregationPolicy = new RegionHealthAggregationPolicy("exampleTestHealthAggregationPolicy", RegionHealthAggregationPolicyArgs.builder()
///             .name("test-health-aggregation-policy")
///             .description("Example health aggregation policy basic")
///             .region("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleTestHealthAggregationPolicy:
///     type: gcp:compute:RegionHealthAggregationPolicy
///     name: example_test_health_aggregation_policy
///     properties:
///       name: test-health-aggregation-policy
///       description: Example health aggregation policy basic
///       region: us-central1
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
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
class RegionHealthAggregationPolicy extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// An optional description of this resource. Provide this property when you
  /// create the resource.
  late final pulumi.Output<String?> description;
  /// Fingerprint of this resource. A hash of the contents stored in this object.
  /// This field is used in optimistic locking. This field will be ignored when
  /// inserting a `HealthAggregationPolicy`. An up-to-date fingerprint
  /// must be provided in order to patch the RegionHealthAggregationPolicy; Otherwise,
  /// the request will fail with error `412 conditionNotMet`. To see
  /// the latest fingerprint, make a `get()` request to retrieve the
  /// RegionHealthAggregationPolicy.
  late final pulumi.Output<String> fingerprint;
  /// Can only be set if the `policyType` field is
  /// `BACKEND_SERVICE_POLICY`. Specifies the threshold (as a
  /// percentage) of healthy endpoints required in order to consider the
  /// aggregated health result HEALTHY. Defaults to `60`. Must be in
  /// range [0, 100]. Not applicable if the `policyType` field is
  /// `DNB_PUBLIC_IP_POLICY`. Can be mutated. This field is optional,
  /// and will be set to the default if unspecified. Note that both this
  /// threshold and `minHealthyThreshold` must be satisfied in order
  /// for HEALTHY to be the aggregated result. "Endpoints" refers to network
  /// endpoints within a Network Endpoint Group or instances within an Instance
  /// Group.
  late final pulumi.Output<int?> healthyPercentThreshold;
  /// Can only be set if the `policyType` field is
  /// `BACKEND_SERVICE_POLICY`. Specifies the minimum number of
  /// healthy endpoints required in order to consider the aggregated health
  /// result HEALTHY. Defaults to `1`. Must be positive. Not
  /// applicable if the `policyType` field is
  /// `DNB_PUBLIC_IP_POLICY`. Can be mutated. This field is optional,
  /// and will be set to the default if unspecified. Note that both this
  /// threshold and `healthyPercentThreshold` must be satisfied in
  /// order for HEALTHY to be the aggregated result. "Endpoints" refers to
  /// network endpoints within a Network Endpoint Group or instances within an
  /// Instance Group.
  late final pulumi.Output<int?> minHealthyThreshold;
  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit, except the last character, which
  /// cannot be a dash.
  late final pulumi.Output<String> name;
  /// Specifies the type of the healthAggregationPolicy. The only allowed value
  /// for global resources is `DNS_PUBLIC_IP_POLICY`. The only allowed
  /// value for regional resources is `BACKEND_SERVICE_POLICY`. Must
  /// be specified when the healthAggregationPolicy is created, and cannot be
  /// mutated.
  /// Default value is `BACKEND_SERVICE_POLICY`.
  /// Possible values are: `DNS_PUBLIC_IP_POLICY`, `BACKEND_SERVICE_POLICY`.
  late final pulumi.Output<String?> policyType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// URL of the region where the health aggregation policy resides.
  late final pulumi.Output<String> region;
  /// Server-defined URL with id for the resource.
  late final pulumi.Output<String> selfLinkWithId;

  /// Creates a new [RegionHealthAggregationPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionHealthAggregationPolicy]. {@macro pulumi_compute_region_health_aggregation_policy_region_health_aggregation_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionHealthAggregationPolicy(
    String name, {
    RegionHealthAggregationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionHealthAggregationPolicy:RegionHealthAggregationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.healthyPercentThreshold = registerOutput<int?>('healthyPercentThreshold');
    this.minHealthyThreshold = registerOutput<int?>('minHealthyThreshold');
    this.name = registerOutput<String>('name');
    this.policyType = registerOutput<String?>('policyType');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
  }
}
