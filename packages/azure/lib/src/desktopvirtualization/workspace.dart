import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_args.dart';

/// Manages a Virtual Desktop Workspace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "rg-example-virtualdesktop",
///     location: "West Europe",
/// });
/// const workspace = new azure.desktopvirtualization.Workspace("workspace", {
///     name: "workspace",
///     location: example.location,
///     resourceGroupName: example.name,
///     friendlyName: "FriendlyName",
///     description: "A description of my workspace",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="rg-example-virtualdesktop",
///     location="West Europe")
/// workspace = azure.desktopvirtualization.Workspace("workspace",
///     name="workspace",
///     location=example.location,
///     resource_group_name=example.name,
///     friendly_name="FriendlyName",
///     description="A description of my workspace")
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
///         Name = "rg-example-virtualdesktop",
///         Location = "West Europe",
///     });
///
///     var workspace = new Azure.DesktopVirtualization.Workspace("workspace", new()
///     {
///         Name = "workspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         FriendlyName = "FriendlyName",
///         Description = "A description of my workspace",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/desktopvirtualization"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("rg-example-virtualdesktop"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = desktopvirtualization.NewWorkspace(ctx, "workspace", &desktopvirtualization.WorkspaceArgs{
/// 			Name:              pulumi.String("workspace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			FriendlyName:      pulumi.String("FriendlyName"),
/// 			Description:       pulumi.String("A description of my workspace"),
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
/// import com.pulumi.azure.desktopvirtualization.Workspace;
/// import com.pulumi.azure.desktopvirtualization.WorkspaceArgs;
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
///             .name("rg-example-virtualdesktop")
///             .location("West Europe")
///             .build());
///
///         var workspace = new Workspace("workspace", WorkspaceArgs.builder()
///             .name("workspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .friendlyName("FriendlyName")
///             .description("A description of my workspace")
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
///       name: rg-example-virtualdesktop
///       location: West Europe
///   workspace:
///     type: azure:desktopvirtualization:Workspace
///     properties:
///       name: workspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       friendlyName: FriendlyName
///       description: A description of my workspace
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DesktopVirtualization` - 2024-04-03
///
/// ## Import
///
/// Virtual Desktop Workspaces can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:desktopvirtualization/workspace:Workspace example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myGroup1/providers/Microsoft.DesktopVirtualization/workspaces/myworkspace
/// ```
class Workspace extends pulumi.CustomResource {
  /// A description for the Virtual Desktop Workspace.
  late final pulumi.Output<String?> description;
  /// A friendly name for the Virtual Desktop Workspace.
  late final pulumi.Output<String?> friendlyName;
  /// The location/region where the Virtual Desktop Workspace is located. Changing the location/region forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Virtual Desktop Workspace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Whether public network access is allowed for this Virtual Desktop Workspace. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the Virtual Desktop Workspace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_desktopvirtualization_workspace_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:desktopvirtualization/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.friendlyName = registerOutput<String?>('friendlyName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
