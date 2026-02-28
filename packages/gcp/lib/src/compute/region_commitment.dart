import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_commitment_args.dart';
import 'region_commitment_license_resource.dart';
import 'region_commitment_resource.dart';

/// Represents a regional Commitment resource.
///
/// Creating a commitment resource means that you are purchasing a committed
/// use contract with an explicit start and end time. You can create commitments
/// based on vCPUs and memory usage and receive discounted rates.
///
///
/// To get more information about RegionCommitment, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionCommitments)
/// * How-to Guides
/// * [Committed use discounts for Compute Engine](https://cloud.google.com/compute/docs/instances/committed-use-discounts-overview)
///
/// ## Example Usage
///
/// ### Compute Region Commitment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foobar = new gcp.compute.RegionCommitment("foobar", {
///     name: "my-region-commitment",
///     plan: "THIRTY_SIX_MONTH",
///     resources: [
///         {
///             type: "VCPU",
///             amount: "4",
///         },
///         {
///             type: "MEMORY",
///             amount: "9",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foobar = gcp.compute.RegionCommitment("foobar",
///     name="my-region-commitment",
///     plan="THIRTY_SIX_MONTH",
///     resources=[
///         {
///             "type": "VCPU",
///             "amount": "4",
///         },
///         {
///             "type": "MEMORY",
///             "amount": "9",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Gcp.Compute.RegionCommitment("foobar", new()
///     {
///         Name = "my-region-commitment",
///         Plan = "THIRTY_SIX_MONTH",
///         Resources = new[]
///         {
///             new Gcp.Compute.Inputs.RegionCommitmentResourceArgs
///             {
///                 Type = "VCPU",
///                 Amount = "4",
///             },
///             new Gcp.Compute.Inputs.RegionCommitmentResourceArgs
///             {
///                 Type = "MEMORY",
///                 Amount = "9",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewRegionCommitment(ctx, "foobar", &compute.RegionCommitmentArgs{
/// 			Name: pulumi.String("my-region-commitment"),
/// 			Plan: pulumi.String("THIRTY_SIX_MONTH"),
/// 			Resources: compute.RegionCommitmentResourceArray{
/// 				&compute.RegionCommitmentResourceArgs{
/// 					Type:   pulumi.String("VCPU"),
/// 					Amount: pulumi.String("4"),
/// 				},
/// 				&compute.RegionCommitmentResourceArgs{
/// 					Type:   pulumi.String("MEMORY"),
/// 					Amount: pulumi.String("9"),
/// 				},
/// 			},
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
/// import com.pulumi.gcp.compute.RegionCommitment;
/// import com.pulumi.gcp.compute.RegionCommitmentArgs;
/// import com.pulumi.gcp.compute.inputs.RegionCommitmentResourceArgs;
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
///         var foobar = new RegionCommitment("foobar", RegionCommitmentArgs.builder()
///             .name("my-region-commitment")
///             .plan("THIRTY_SIX_MONTH")
///             .resources(
///                 RegionCommitmentResourceArgs.builder()
///                     .type("VCPU")
///                     .amount("4")
///                     .build(),
///                 RegionCommitmentResourceArgs.builder()
///                     .type("MEMORY")
///                     .amount("9")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: gcp:compute:RegionCommitment
///     properties:
///       name: my-region-commitment
///       plan: THIRTY_SIX_MONTH
///       resources:
///         - type: VCPU
///           amount: '4'
///         - type: MEMORY
///           amount: '9'
/// ```
///
/// ### Compute Region Commitment Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foobar = new gcp.compute.RegionCommitment("foobar", {
///     name: "my-full-commitment",
///     description: "some description",
///     plan: "THIRTY_SIX_MONTH",
///     type: "MEMORY_OPTIMIZED",
///     category: "MACHINE",
///     autoRenew: true,
///     resources: [
///         {
///             type: "VCPU",
///             amount: "4",
///         },
///         {
///             type: "MEMORY",
///             amount: "9",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foobar = gcp.compute.RegionCommitment("foobar",
///     name="my-full-commitment",
///     description="some description",
///     plan="THIRTY_SIX_MONTH",
///     type="MEMORY_OPTIMIZED",
///     category="MACHINE",
///     auto_renew=True,
///     resources=[
///         {
///             "type": "VCPU",
///             "amount": "4",
///         },
///         {
///             "type": "MEMORY",
///             "amount": "9",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Gcp.Compute.RegionCommitment("foobar", new()
///     {
///         Name = "my-full-commitment",
///         Description = "some description",
///         Plan = "THIRTY_SIX_MONTH",
///         Type = "MEMORY_OPTIMIZED",
///         Category = "MACHINE",
///         AutoRenew = true,
///         Resources = new[]
///         {
///             new Gcp.Compute.Inputs.RegionCommitmentResourceArgs
///             {
///                 Type = "VCPU",
///                 Amount = "4",
///             },
///             new Gcp.Compute.Inputs.RegionCommitmentResourceArgs
///             {
///                 Type = "MEMORY",
///                 Amount = "9",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewRegionCommitment(ctx, "foobar", &compute.RegionCommitmentArgs{
/// 			Name:        pulumi.String("my-full-commitment"),
/// 			Description: pulumi.String("some description"),
/// 			Plan:        pulumi.String("THIRTY_SIX_MONTH"),
/// 			Type:        pulumi.String("MEMORY_OPTIMIZED"),
/// 			Category:    pulumi.String("MACHINE"),
/// 			AutoRenew:   pulumi.Bool(true),
/// 			Resources: compute.RegionCommitmentResourceArray{
/// 				&compute.RegionCommitmentResourceArgs{
/// 					Type:   pulumi.String("VCPU"),
/// 					Amount: pulumi.String("4"),
/// 				},
/// 				&compute.RegionCommitmentResourceArgs{
/// 					Type:   pulumi.String("MEMORY"),
/// 					Amount: pulumi.String("9"),
/// 				},
/// 			},
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
/// import com.pulumi.gcp.compute.RegionCommitment;
/// import com.pulumi.gcp.compute.RegionCommitmentArgs;
/// import com.pulumi.gcp.compute.inputs.RegionCommitmentResourceArgs;
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
///         var foobar = new RegionCommitment("foobar", RegionCommitmentArgs.builder()
///             .name("my-full-commitment")
///             .description("some description")
///             .plan("THIRTY_SIX_MONTH")
///             .type("MEMORY_OPTIMIZED")
///             .category("MACHINE")
///             .autoRenew(true)
///             .resources(
///                 RegionCommitmentResourceArgs.builder()
///                     .type("VCPU")
///                     .amount("4")
///                     .build(),
///                 RegionCommitmentResourceArgs.builder()
///                     .type("MEMORY")
///                     .amount("9")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: gcp:compute:RegionCommitment
///     properties:
///       name: my-full-commitment
///       description: some description
///       plan: THIRTY_SIX_MONTH
///       type: MEMORY_OPTIMIZED
///       category: MACHINE
///       autoRenew: true
///       resources:
///         - type: VCPU
///           amount: '4'
///         - type: MEMORY
///           amount: '9'
/// ```
///
///
/// ## Import
///
/// RegionCommitment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/commitments/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionCommitment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionCommitment:RegionCommitment default projects/{{project}}/regions/{{region}}/commitments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionCommitment:RegionCommitment default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionCommitment:RegionCommitment default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionCommitment:RegionCommitment default {{name}}
/// ```
class RegionCommitment extends pulumi.CustomResource {
  /// Specifies whether to enable automatic renewal for the commitment.
  /// The default value is false if not specified.
  /// If the field is set to true, the commitment will be automatically renewed for either
  /// one or three years according to the terms of the existing commitment.
  late final pulumi.Output<bool> autoRenew;

  /// The category of the commitment. Category MACHINE specifies commitments composed of
  /// machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE
  /// specifies commitments composed of software licenses, listed in licenseResources.
  /// Note that only MACHINE commitments should have a Type specified.
  /// Possible values are: `LICENSE`, `MACHINE`.
  late final pulumi.Output<String> category;

  /// Unique identifier for the resource.
  late final pulumi.Output<int> commitmentId;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Commitment end time in RFC3339 text format.
  late final pulumi.Output<String> endTimestamp;

  /// Specifies the already existing reservations to attach to the Commitment.
  late final pulumi.Output<String> existingReservations;

  /// The license specification required as part of a license commitment.
  /// Structure is documented below.
  late final pulumi.Output<RegionCommitmentLicenseResource?> licenseResource;

  /// Name of the resource. The name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The plan for this commitment, which determines duration and discount rate.
  /// The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  /// Possible values are: `TWELVE_MONTH`, `THIRTY_SIX_MONTH`.
  late final pulumi.Output<String> plan;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// URL of the region where this commitment may be used.
  late final pulumi.Output<String> region;

  /// A list of commitment amounts for particular resources.
  /// Note that VCPU and MEMORY resource commitments must occur together.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionCommitmentResource>?> resources;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Commitment start time in RFC3339 text format.
  late final pulumi.Output<String> startTimestamp;

  /// Status of the commitment with regards to eventual expiration
  /// (each commitment has an end date defined).
  late final pulumi.Output<String> status;

  /// A human-readable explanation of the status.
  late final pulumi.Output<String> statusMessage;

  /// The type of commitment, which affects the discount rate and the eligible resources.
  /// The type could be one of the following value: `MEMORY_OPTIMIZED`, `ACCELERATOR_OPTIMIZED`,
  /// `GENERAL_PURPOSE`, `GENERAL_PURPOSE_N2`, `GENERAL_PURPOSE_N2D`, `GENERAL_PURPOSE_E2`,
  /// `GENERAL_PURPOSE_T2D`, `GENERAL_PURPOSE_C3`, `COMPUTE_OPTIMIZED_C2`, `COMPUTE_OPTIMIZED_C2D` and
  /// `GRAPHICS_OPTIMIZED_G2`
  late final pulumi.Output<String> type;

  /// Creates a new [RegionCommitment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionCommitment]. {@macro pulumi_compute_region_commitment_region_commitment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionCommitment(
    String name, {
    RegionCommitmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionCommitment:RegionCommitment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoRenew = registerOutput<bool>('autoRenew');
    this.category = registerOutput<String>('category');
    this.commitmentId = registerOutput<int>('commitmentId');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.endTimestamp = registerOutput<String>('endTimestamp');
    this.existingReservations = registerOutput<String>('existingReservations');
    this.licenseResource =
        registerOutput<RegionCommitmentLicenseResource?>('licenseResource');
    this.name = registerOutput<String>('name');
    this.plan = registerOutput<String>('plan');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.resources =
        registerOutput<List<RegionCommitmentResource>?>('resources');
    this.selfLink = registerOutput<String>('selfLink');
    this.startTimestamp = registerOutput<String>('startTimestamp');
    this.status = registerOutput<String>('status');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.type = registerOutput<String>('type');
  }
}
