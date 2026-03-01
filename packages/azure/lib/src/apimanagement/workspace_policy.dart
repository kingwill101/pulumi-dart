import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_policy_args.dart';

/// Manages an API Management Workspace Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apimanagement",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "pub1",
///     publisherEmail: "pub1@email.com",
///     skuName: "Premium_1",
/// });
/// const exampleWorkspace = new azure.apimanagement.Workspace("example", {
///     name: "example-workspace",
///     apiManagementId: exampleService.id,
///     displayName: "my workspace",
/// });
/// const exampleWorkspacePolicy = new azure.apimanagement.WorkspacePolicy("example", {
///     apiManagementWorkspaceId: exampleWorkspace.id,
///     xmlContent: `<policies>
///   <inbound>
///     <find-and-replace from=\\"abc\\" to=\\"xyz\\" />
///   </inbound>
/// </policies>
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apimanagement",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="pub1",
///     publisher_email="pub1@email.com",
///     sku_name="Premium_1")
/// example_workspace = azure.apimanagement.Workspace("example",
///     name="example-workspace",
///     api_management_id=example_service.id,
///     display_name="my workspace")
/// example_workspace_policy = azure.apimanagement.WorkspacePolicy("example",
///     api_management_workspace_id=example_workspace.id,
///     xml_content="""<policies>
///   <inbound>
///     <find-and-replace from=\"abc\" to=\"xyz\" />
///   </inbound>
/// </policies>
/// """)
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleService = new Azure.ApiManagement.Service("example", new()
///     {
///         Name = "example-apimanagement",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PublisherName = "pub1",
///         PublisherEmail = "pub1@email.com",
///         SkuName = "Premium_1",
///     });
///
///     var exampleWorkspace = new Azure.ApiManagement.Workspace("example", new()
///     {
///         Name = "example-workspace",
///         ApiManagementId = exampleService.Id,
///         DisplayName = "my workspace",
///     });
///
///     var exampleWorkspacePolicy = new Azure.ApiManagement.WorkspacePolicy("example", new()
///     {
///         ApiManagementWorkspaceId = exampleWorkspace.Id,
///         XmlContent = @"<policies>
///   <inbound>
///     <find-and-replace from=\""abc\"" to=\""xyz\"" />
///   </inbound>
/// </policies>
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apimanagement"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PublisherName:     pulumi.String("pub1"),
/// 			PublisherEmail:    pulumi.String("pub1@email.com"),
/// 			SkuName:           pulumi.String("Premium_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := apimanagement.NewWorkspace(ctx, "example", &apimanagement.WorkspaceArgs{
/// 			Name:            pulumi.String("example-workspace"),
/// 			ApiManagementId: exampleService.ID(),
/// 			DisplayName:     pulumi.String("my workspace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewWorkspacePolicy(ctx, "example", &apimanagement.WorkspacePolicyArgs{
/// 			ApiManagementWorkspaceId: exampleWorkspace.ID(),
/// 			XmlContent: pulumi.String(`<policies>
///   <inbound>
///     <find-and-replace from=\"abc\" to=\"xyz\" />
///   </inbound>
/// </policies>
/// `),
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
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
/// import com.pulumi.azure.apimanagement.Workspace;
/// import com.pulumi.azure.apimanagement.WorkspaceArgs;
/// import com.pulumi.azure.apimanagement.WorkspacePolicy;
/// import com.pulumi.azure.apimanagement.WorkspacePolicyArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-apimanagement")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .publisherName("pub1")
///             .publisherEmail("pub1@email.com")
///             .skuName("Premium_1")
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example-workspace")
///             .apiManagementId(exampleService.id())
///             .displayName("my workspace")
///             .build());
///
///         var exampleWorkspacePolicy = new WorkspacePolicy("exampleWorkspacePolicy", WorkspacePolicyArgs.builder()
///             .apiManagementWorkspaceId(exampleWorkspace.id())
///             .xmlContent("""
/// <policies>
///   <inbound>
///     <find-and-replace from=\"abc\" to=\"xyz\" />
///   </inbound>
/// </policies>
///             """)
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
///       name: example-resources
///       location: West Europe
///   exampleService:
///     type: azure:apimanagement:Service
///     name: example
///     properties:
///       name: example-apimanagement
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       publisherName: pub1
///       publisherEmail: pub1@email.com
///       skuName: Premium_1
///   exampleWorkspace:
///     type: azure:apimanagement:Workspace
///     name: example
///     properties:
///       name: example-workspace
///       apiManagementId: ${exampleService.id}
///       displayName: my workspace
///   exampleWorkspacePolicy:
///     type: azure:apimanagement:WorkspacePolicy
///     name: example
///     properties:
///       apiManagementWorkspaceId: ${exampleWorkspace.id}
///       xmlContent: |
///         <policies>
///           <inbound>
///             <find-and-replace from=\"abc\" to=\"xyz\" />
///           </inbound>
///         </policies>
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2024-05-01
///
/// ## Import
///
/// API Management Workspace Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/workspacePolicy:WorkspacePolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/workspaces/workspace1
/// ```
class WorkspacePolicy extends pulumi.CustomResource {
  /// Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementWorkspaceId;
  /// Specifies the API Management Workspace Policy as an XML string.
  late final pulumi.Output<String> xmlContent;
  /// Specifies a publicly accessible URL to a policy XML document.
  ///
  /// > **Note:** Exactly one of `xml_content` or `xml_link` must be specified.
  late final pulumi.Output<String?> xmlLink;

  /// Creates a new [WorkspacePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspacePolicy]. {@macro pulumi_apimanagement_workspace_policy_workspace_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspacePolicy(
    String name, {
    WorkspacePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/workspacePolicy:WorkspacePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementWorkspaceId = registerOutput<String>('apiManagementWorkspaceId');
    this.xmlContent = registerOutput<String>('xmlContent');
    this.xmlLink = registerOutput<String?>('xmlLink');
  }
}
