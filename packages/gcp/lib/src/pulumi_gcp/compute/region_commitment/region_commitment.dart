import 'package:pulumi/pulumi.dart';
import '../region_commitment_license_resource/region_commitment_license_resource.dart';
import '../region_commitment_resource/region_commitment_resource.dart';
import 'region_commitment_args.dart';

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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foobar = new gcp.compute.RegionCommitment("foobar", {
/// name: "my-region-commitment",
/// plan: "THIRTY_SIX_MONTH",
/// resources: [
/// {
/// type: "VCPU",
/// amount: "4",
/// },
/// {
/// type: "MEMORY",
/// amount: "9",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foobar = gcp.compute.RegionCommitment("foobar",
/// name="my-region-commitment",
/// plan="THIRTY_SIX_MONTH",
/// resources=[
/// {
/// "type": "VCPU",
/// "amount": "4",
/// },
/// {
/// "type": "MEMORY",
/// "amount": "9",
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foobar = new Gcp.Compute.RegionCommitment("foobar", new()
/// {
/// Name = "my-region-commitment",
/// Plan = "THIRTY_SIX_MONTH",
/// Resources = new[]
/// {
/// new Gcp.Compute.Inputs.RegionCommitmentResourceArgs
/// {
/// Type = "VCPU",
/// Amount = "4",
/// },
/// new Gcp.Compute.Inputs.RegionCommitmentResourceArgs
/// {
/// Type = "MEMORY",
/// Amount = "9",
/// },
/// },
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
/// _, err := compute.NewRegionCommitment(ctx, "foobar", &compute.RegionCommitmentArgs{
/// Name: pulumi.String("my-region-commitment"),
/// Plan: pulumi.String("THIRTY_SIX_MONTH"),
/// Resources: compute.RegionCommitmentResourceArray{
/// &compute.RegionCommitmentResourceArgs{
/// Type:   pulumi.String("VCPU"),
/// Amount: pulumi.String("4"),
/// },
/// &compute.RegionCommitmentResourceArgs{
/// Type:   pulumi.String("MEMORY"),
/// Amount: pulumi.String("9"),
/// },
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var foobar = new RegionCommitment("foobar", RegionCommitmentArgs.builder()
/// .name("my-region-commitment")
/// .plan("THIRTY_SIX_MONTH")
/// .resources(
/// RegionCommitmentResourceArgs.builder()
/// .type("VCPU")
/// .amount("4")
/// .build(),
/// RegionCommitmentResourceArgs.builder()
/// .type("MEMORY")
/// .amount("9")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foobar:
/// type: gcp:compute:RegionCommitment
/// properties:
/// name: my-region-commitment
/// plan: THIRTY_SIX_MONTH
/// resources:
/// - type: VCPU
/// amount: '4'
/// - type: MEMORY
/// amount: '9'
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Compute Region Commitment Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foobar = new gcp.compute.RegionCommitment("foobar", {
/// name: "my-full-commitment",
/// description: "some description",
/// plan: "THIRTY_SIX_MONTH",
/// type: "MEMORY_OPTIMIZED",
/// category: "MACHINE",
/// autoRenew: true,
/// resources: [
/// {
/// type: "VCPU",
/// amount: "4",
/// },
/// {
/// type: "MEMORY",
/// amount: "9",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foobar = gcp.compute.RegionCommitment("foobar",
/// name="my-full-commitment",
/// description="some description",
/// plan="THIRTY_SIX_MONTH",
/// type="MEMORY_OPTIMIZED",
/// category="MACHINE",
/// auto_renew=True,
/// resources=[
/// {
/// "type": "VCPU",
/// "amount": "4",
/// },
/// {
/// "type": "MEMORY",
/// "amount": "9",
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foobar = new Gcp.Compute.RegionCommitment("foobar", new()
/// {
/// Name = "my-full-commitment",
/// Description = "some description",
/// Plan = "THIRTY_SIX_MONTH",
/// Type = "MEMORY_OPTIMIZED",
/// Category = "MACHINE",
/// AutoRenew = true,
/// Resources = new[]
/// {
/// new Gcp.Compute.Inputs.RegionCommitmentResourceArgs
/// {
/// Type = "VCPU",
/// Amount = "4",
/// },
/// new Gcp.Compute.Inputs.RegionCommitmentResourceArgs
/// {
/// Type = "MEMORY",
/// Amount = "9",
/// },
/// },
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
/// _, err := compute.NewRegionCommitment(ctx, "foobar", &compute.RegionCommitmentArgs{
/// Name:        pulumi.String("my-full-commitment"),
/// Description: pulumi.String("some description"),
/// Plan:        pulumi.String("THIRTY_SIX_MONTH"),
/// Type:        pulumi.String("MEMORY_OPTIMIZED"),
/// Category:    pulumi.String("MACHINE"),
/// AutoRenew:   pulumi.Bool(true),
/// Resources: compute.RegionCommitmentResourceArray{
/// &compute.RegionCommitmentResourceArgs{
/// Type:   pulumi.String("VCPU"),
/// Amount: pulumi.String("4"),
/// },
/// &compute.RegionCommitmentResourceArgs{
/// Type:   pulumi.String("MEMORY"),
/// Amount: pulumi.String("9"),
/// },
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var foobar = new RegionCommitment("foobar", RegionCommitmentArgs.builder()
/// .name("my-full-commitment")
/// .description("some description")
/// .plan("THIRTY_SIX_MONTH")
/// .type("MEMORY_OPTIMIZED")
/// .category("MACHINE")
/// .autoRenew(true)
/// .resources(
/// RegionCommitmentResourceArgs.builder()
/// .type("VCPU")
/// .amount("4")
/// .build(),
/// RegionCommitmentResourceArgs.builder()
/// .type("MEMORY")
/// .amount("9")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foobar:
/// type: gcp:compute:RegionCommitment
/// properties:
/// name: my-full-commitment
/// description: some description
/// plan: THIRTY_SIX_MONTH
/// type: MEMORY_OPTIMIZED
/// category: MACHINE
/// autoRenew: true
/// resources:
/// - type: VCPU
/// amount: '4'
/// - type: MEMORY
/// amount: '9'
/// ```
/// <!--End PulumiCodeChooser -->
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
class RegionCommitment extends CustomResource {
  /// Specifies whether to enable automatic renewal for the commitment.
  /// The default value is false if not specified.
  /// If the field is set to true, the commitment will be automatically renewed for either
  /// one or three years according to the terms of the existing commitment.
  late final Output<bool> autoRenew;

  /// The category of the commitment. Category MACHINE specifies commitments composed of
  /// machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE
  /// specifies commitments composed of software licenses, listed in licenseResources.
  /// Note that only MACHINE commitments should have a Type specified.
  /// Possible values are: `LICENSE`, `MACHINE`.
  late final Output<String> category;

  /// Unique identifier for the resource.
  late final Output<int> commitmentId;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// Commitment end time in RFC3339 text format.
  late final Output<String> endTimestamp;

  /// Specifies the already existing reservations to attach to the Commitment.
  late final Output<String> existingReservations;

  /// The license specification required as part of a license commitment.
  /// Structure is documented below.
  late final Output<RegionCommitmentLicenseResource?> licenseResource;

  /// Name of the resource. The name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final Output<String> name;

  /// The plan for this commitment, which determines duration and discount rate.
  /// The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  /// Possible values are: `TWELVE_MONTH`, `THIRTY_SIX_MONTH`.
  late final Output<String> plan;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// URL of the region where this commitment may be used.
  late final Output<String> region;

  /// A list of commitment amounts for particular resources.
  /// Note that VCPU and MEMORY resource commitments must occur together.
  /// Structure is documented below.
  late final Output<List<RegionCommitmentResource>?> resources;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// Commitment start time in RFC3339 text format.
  late final Output<String> startTimestamp;

  /// Status of the commitment with regards to eventual expiration
  /// (each commitment has an end date defined).
  late final Output<String> status;

  /// A human-readable explanation of the status.
  late final Output<String> statusMessage;

  /// The type of commitment, which affects the discount rate and the eligible resources.
  /// The type could be one of the following value: `MEMORY_OPTIMIZED`, `ACCELERATOR_OPTIMIZED`,
  /// `GENERAL_PURPOSE`, `GENERAL_PURPOSE_N2`, `GENERAL_PURPOSE_N2D`, `GENERAL_PURPOSE_E2`,
  /// `GENERAL_PURPOSE_T2D`, `GENERAL_PURPOSE_C3`, `COMPUTE_OPTIMIZED_C2`, `COMPUTE_OPTIMIZED_C2D` and
  /// `GRAPHICS_OPTIMIZED_G2`
  late final Output<String> type;

  RegionCommitment(
    String name, {
    RegionCommitmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionCommitment:RegionCommitment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoRenew = Output.createUnknown<bool>();
    this.category = Output.createUnknown<String>();
    this.commitmentId = Output.createUnknown<int>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.endTimestamp = Output.createUnknown<String>();
    this.existingReservations = Output.createUnknown<String>();
    this.licenseResource =
        Output.createUnknown<RegionCommitmentLicenseResource?>();
    this.name = Output.createUnknown<String>();
    this.plan = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resources = Output.createUnknown<List<RegionCommitmentResource>?>();
    this.selfLink = Output.createUnknown<String>();
    this.startTimestamp = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.statusMessage = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
  }
}
