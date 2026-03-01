import 'package:pulumi/pulumi.dart' as pulumi;
import 'spacecraft_args.dart';
import 'spacecraft_link.dart';

/// Manages a Spacecraft.
///
/// > **Note:** The `azure.orbital.Spacecraft` resource has been deprecated and will be removed in v5.0 of the AzureRM Provider.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "rg-example",
///     location: "West Europe",
/// });
/// const exampleSpacecraft = new azure.orbital.Spacecraft("example", {
///     name: "example-spacecraft",
///     resourceGroupName: example.name,
///     location: "westeurope",
///     noradId: "12345",
///     links: [{
///         bandwidthMhz: 30,
///         centerFrequencyMhz: 2050,
///         direction: "Uplink",
///         polarization: "LHCP",
///         name: "examplename",
///     }],
///     twoLineElements: [
///         "1 23455U 94089A   97320.90946019  .00000140  00000-0  10191-3 0  2621",
///         "2 23455  99.0090 272.6745 0008546 223.1686 136.8816 14.11711747148495",
///     ],
///     titleLine: "AQUA",
///     tags: {
///         "aks-managed-cluster-name": "9a57225d-a405-4d40-aa46-f13d2342abef",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="rg-example",
///     location="West Europe")
/// example_spacecraft = azure.orbital.Spacecraft("example",
///     name="example-spacecraft",
///     resource_group_name=example.name,
///     location="westeurope",
///     norad_id="12345",
///     links=[{
///         "bandwidth_mhz": 30,
///         "center_frequency_mhz": 2050,
///         "direction": "Uplink",
///         "polarization": "LHCP",
///         "name": "examplename",
///     }],
///     two_line_elements=[
///         "1 23455U 94089A   97320.90946019  .00000140  00000-0  10191-3 0  2621",
///         "2 23455  99.0090 272.6745 0008546 223.1686 136.8816 14.11711747148495",
///     ],
///     title_line="AQUA",
///     tags={
///         "aks-managed-cluster-name": "9a57225d-a405-4d40-aa46-f13d2342abef",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "rg-example",
///         Location = "West Europe",
///     });
///
///     var exampleSpacecraft = new Azure.Orbital.Spacecraft("example", new()
///     {
///         Name = "example-spacecraft",
///         ResourceGroupName = example.Name,
///         Location = "westeurope",
///         NoradId = "12345",
///         Links = new[]
///         {
///             new Azure.Orbital.Inputs.SpacecraftLinkArgs
///             {
///                 BandwidthMhz = 30,
///                 CenterFrequencyMhz = 2050,
///                 Direction = "Uplink",
///                 Polarization = "LHCP",
///                 Name = "examplename",
///             },
///         },
///         TwoLineElements = new[]
///         {
///             "1 23455U 94089A   97320.90946019  .00000140  00000-0  10191-3 0  2621",
///             "2 23455  99.0090 272.6745 0008546 223.1686 136.8816 14.11711747148495",
///         },
///         TitleLine = "AQUA",
///         Tags =
///         {
///             { "aks-managed-cluster-name", "9a57225d-a405-4d40-aa46-f13d2342abef" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/orbital"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("rg-example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = orbital.NewSpacecraft(ctx, "example", &orbital.SpacecraftArgs{
/// 			Name:              pulumi.String("example-spacecraft"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("westeurope"),
/// 			NoradId:           pulumi.String("12345"),
/// 			Links: orbital.SpacecraftLinkArray{
/// 				&orbital.SpacecraftLinkArgs{
/// 					BandwidthMhz:       pulumi.Float64(30),
/// 					CenterFrequencyMhz: pulumi.Float64(2050),
/// 					Direction:          pulumi.String("Uplink"),
/// 					Polarization:       pulumi.String("LHCP"),
/// 					Name:               pulumi.String("examplename"),
/// 				},
/// 			},
/// 			TwoLineElements: pulumi.StringArray{
/// 				pulumi.String("1 23455U 94089A   97320.90946019  .00000140  00000-0  10191-3 0  2621"),
/// 				pulumi.String("2 23455  99.0090 272.6745 0008546 223.1686 136.8816 14.11711747148495"),
/// 			},
/// 			TitleLine: pulumi.String("AQUA"),
/// 			Tags: pulumi.StringMap{
/// 				"aks-managed-cluster-name": pulumi.String("9a57225d-a405-4d40-aa46-f13d2342abef"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.orbital.Spacecraft;
/// import com.pulumi.azure.orbital.SpacecraftArgs;
/// import com.pulumi.azure.orbital.inputs.SpacecraftLinkArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("rg-example")
///             .location("West Europe")
///             .build());
///
///         var exampleSpacecraft = new Spacecraft("exampleSpacecraft", SpacecraftArgs.builder()
///             .name("example-spacecraft")
///             .resourceGroupName(example.name())
///             .location("westeurope")
///             .noradId("12345")
///             .links(SpacecraftLinkArgs.builder()
///                 .bandwidthMhz(30.0)
///                 .centerFrequencyMhz(2050.0)
///                 .direction("Uplink")
///                 .polarization("LHCP")
///                 .name("examplename")
///                 .build())
///             .twoLineElements(
///                 "1 23455U 94089A   97320.90946019  .00000140  00000-0  10191-3 0  2621",
///                 "2 23455  99.0090 272.6745 0008546 223.1686 136.8816 14.11711747148495")
///             .titleLine("AQUA")
///             .tags(Map.of("aks-managed-cluster-name", "9a57225d-a405-4d40-aa46-f13d2342abef"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: rg-example
///       location: West Europe
///   exampleSpacecraft:
///     type: azure:orbital:Spacecraft
///     name: example
///     properties:
///       name: example-spacecraft
///       resourceGroupName: ${example.name}
///       location: westeurope
///       noradId: '12345'
///       links:
///         - bandwidthMhz: 30
///           centerFrequencyMhz: 2050
///           direction: Uplink
///           polarization: LHCP
///           name: examplename
///       twoLineElements:
///         - 1 23455U 94089A   97320.90946019  .00000140  00000-0  10191-3 0  2621
///         - 2 23455  99.0090 272.6745 0008546 223.1686 136.8816 14.11711747148495
///       titleLine: AQUA
///       tags:
///         aks-managed-cluster-name: 9a57225d-a405-4d40-aa46-f13d2342abef
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Orbital` - 2022-11-01
///
/// ## Import
///
/// Spacecraft can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:orbital/spacecraft:Spacecraft example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Orbital/spacecrafts/spacecraft1
/// ```
class Spacecraft extends pulumi.CustomResource {
  /// A `links` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<SpacecraftLink>> links;
  /// The location where the Spacecraft exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Spacecraft. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// NORAD ID of the Spacecraft.
  late final pulumi.Output<String> noradId;
  /// The name of the Resource Group where the Spacecraft exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Title of the two line elements (TLE).
  late final pulumi.Output<String> titleLine;
  /// A list of the two line elements (TLE), the first string being the first of the TLE, the second string being the second line of the TLE. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>> twoLineElements;

  /// Creates a new [Spacecraft].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Spacecraft]. {@macro pulumi_orbital_spacecraft_spacecraft_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Spacecraft(
    String name, {
    SpacecraftArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:orbital/spacecraft:Spacecraft',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.links = registerOutput<List<SpacecraftLink>>('links');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.noradId = registerOutput<String>('noradId');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.titleLine = registerOutput<String>('titleLine');
    this.twoLineElements = registerOutput<List<String>>('twoLineElements');
  }
}
