import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_args.dart';

/// An app-enabled folder is a folder within the Google Cloud resource hierarchy that has been configured for application management. This folder lets you define and manage App Hub applications. These applications are functional groupings of services and workloads that span multiple projects within that folder and its descendant projects.
///
///
/// To get more information about Capability, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/resource-manager/docs/manage-applications)
///
/// ## Example Usage
///
/// ### Resource Manager Capability
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const folder = new gcp.organizations.Folder("folder", {
///     displayName: "folder-cap",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// const wait60s = new time.Sleep("wait_60s", {createDuration: "60s"}, {
///     dependsOn: [folder],
/// });
/// const capability = new gcp.resourcemanager.Capability("capability", {
///     value: true,
///     parent: folder.name,
///     capabilityName: "app-management",
/// }, {
///     dependsOn: [wait60s],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// folder = gcp.organizations.Folder("folder",
///     display_name="folder-cap",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// wait60s = time.Sleep("wait_60s", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[folder]))
/// capability = gcp.resourcemanager.Capability("capability",
///     value=True,
///     parent=folder.name,
///     capability_name="app-management",
///     opts = pulumi.ResourceOptions(depends_on=[wait60s]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var folder = new Gcp.Organizations.Folder("folder", new()
///     {
///         DisplayName = "folder-cap",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     var wait60s = new Time.Sleep("wait_60s", new()
///     {
///         CreateDuration = "60s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             folder,
///         },
///     });
///
///     var capability = new Gcp.ResourceManager.Capability("capability", new()
///     {
///         Value = true,
///         Parent = folder.Name,
///         CapabilityName = "app-management",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60s,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		folder, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("folder-cap"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait60s, err := time.NewSleep(ctx, "wait_60s", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			folder,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewCapability(ctx, "capability", &resourcemanager.CapabilityArgs{
/// 			Value:          pulumi.Bool(true),
/// 			Parent:         folder.Name,
/// 			CapabilityName: pulumi.String("app-management"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60s,
/// 		}))
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
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.resourcemanager.Capability;
/// import com.pulumi.gcp.resourcemanager.CapabilityArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var folder = new Folder("folder", FolderArgs.builder()
///             .displayName("folder-cap")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         var wait60s = new Sleep("wait60s", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(folder)
///                 .build());
///
///         var capability = new Capability("capability", CapabilityArgs.builder()
///             .value(true)
///             .parent(folder.name())
///             .capabilityName("app-management")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60s)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:organizations:Folder
///     properties:
///       displayName: folder-cap
///       parent: organizations/123456789
///       deletionProtection: false
///   wait60s:
///     type: time:Sleep
///     name: wait_60s
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${folder}
///   capability:
///     type: gcp:resourcemanager:Capability
///     properties:
///       value: true
///       parent: ${folder.name}
///       capabilityName: app-management
///     options:
///       dependsOn:
///         - ${wait60s}
/// ```
///
///
/// ## Import
///
/// Capability can be imported using any of these accepted formats:
///
/// * `{{parent}}/capabilities/{{capability_name}}`
///
/// * `{{parent}}/{{capability_name}}`
///
/// When using the `pulumi import` command, Capability can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:resourcemanager/capability:Capability default {{parent}}/capabilities/{{capability_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:resourcemanager/capability:Capability default {{parent}}/{{capability_name}}
/// ```
class Capability extends pulumi.CustomResource {
  /// Capability name that should be updated on the folder.
  late final pulumi.Output<String> capabilityName;
  /// Folder on which Capability needs to be updated in the format folders/folder_id.
  late final pulumi.Output<String> parent;
  /// Capability Value.
  late final pulumi.Output<bool> value;

  /// Creates a new [Capability].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Capability]. {@macro pulumi_resourcemanager_capability_capability_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Capability(
    String name, {
    CapabilityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:resourcemanager/capability:Capability',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.capabilityName = registerOutput<String>('capabilityName');
    this.parent = registerOutput<String>('parent');
    this.value = registerOutput<bool>('value');
  }
}
