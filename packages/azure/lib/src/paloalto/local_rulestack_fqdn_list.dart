import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_rulestack_fqdn_list_args.dart';

/// Manages a Palo Alto Local Rulestack FQDN List.
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
/// const exampleLocalRulestack = new azure.paloalto.LocalRulestack("example", {
///     name: "example",
///     resourceGroupName: exampleAzurermResrouceGroup.name,
///     location: example.location,
/// });
/// const exampleLocalRulestackFqdnList = new azure.paloalto.LocalRulestackFqdnList("example", {
///     name: "example",
///     rulestackId: exampleLocalRulestack.id,
///     fullyQualifiedDomainNames: ["contoso.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="rg-example",
///     location="West Europe")
/// example_local_rulestack = azure.paloalto.LocalRulestack("example",
///     name="example",
///     resource_group_name=example_azurerm_resrouce_group["name"],
///     location=example.location)
/// example_local_rulestack_fqdn_list = azure.paloalto.LocalRulestackFqdnList("example",
///     name="example",
///     rulestack_id=example_local_rulestack.id,
///     fully_qualified_domain_names=["contoso.com"])
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
///     var exampleLocalRulestack = new Azure.PaloAlto.LocalRulestack("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleAzurermResrouceGroup.Name,
///         Location = example.Location,
///     });
///
///     var exampleLocalRulestackFqdnList = new Azure.PaloAlto.LocalRulestackFqdnList("example", new()
///     {
///         Name = "example",
///         RulestackId = exampleLocalRulestack.Id,
///         FullyQualifiedDomainNames = new[]
///         {
///             "contoso.com",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/paloalto"
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
/// 		exampleLocalRulestack, err := paloalto.NewLocalRulestack(ctx, "example", &paloalto.LocalRulestackArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: pulumi.Any(exampleAzurermResrouceGroup.Name),
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = paloalto.NewLocalRulestackFqdnList(ctx, "example", &paloalto.LocalRulestackFqdnListArgs{
/// 			Name:        pulumi.String("example"),
/// 			RulestackId: exampleLocalRulestack.ID(),
/// 			FullyQualifiedDomainNames: pulumi.StringArray{
/// 				pulumi.String("contoso.com"),
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
/// import com.pulumi.azure.paloalto.LocalRulestack;
/// import com.pulumi.azure.paloalto.LocalRulestackArgs;
/// import com.pulumi.azure.paloalto.LocalRulestackFqdnList;
/// import com.pulumi.azure.paloalto.LocalRulestackFqdnListArgs;
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
///         var exampleLocalRulestack = new LocalRulestack("exampleLocalRulestack", LocalRulestackArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleAzurermResrouceGroup.name())
///             .location(example.location())
///             .build());
///
///         var exampleLocalRulestackFqdnList = new LocalRulestackFqdnList("exampleLocalRulestackFqdnList", LocalRulestackFqdnListArgs.builder()
///             .name("example")
///             .rulestackId(exampleLocalRulestack.id())
///             .fullyQualifiedDomainNames("contoso.com")
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
///   exampleLocalRulestack:
///     type: azure:paloalto:LocalRulestack
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${exampleAzurermResrouceGroup.name}
///       location: ${example.location}
///   exampleLocalRulestackFqdnList:
///     type: azure:paloalto:LocalRulestackFqdnList
///     name: example
///     properties:
///       name: example
///       rulestackId: ${exampleLocalRulestack.id}
///       fullyQualifiedDomainNames:
///         - contoso.com
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `PaloAltoNetworks.Cloudngfw` - 2022-08-29
///
/// ## Import
///
/// Palo Alto Local Rulestack FQDN Lists can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:paloalto/localRulestackFqdnList:LocalRulestackFqdnList example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/PaloAltoNetworks.Cloudngfw/localRulestacks/myLocalRulestack/fqdnLists/myFQDNList1
/// ```
class LocalRulestackFqdnList extends pulumi.CustomResource {
  /// The comment for Audit purposes.
  late final pulumi.Output<String?> auditComment;
  /// The description for the FQDN List.
  late final pulumi.Output<String?> description;
  /// Specifies a list of Fully Qualified Domain Names.
  late final pulumi.Output<List<String>> fullyQualifiedDomainNames;
  /// The name which should be used for this Palo Alto Local Rulestack FQDN List.
  late final pulumi.Output<String> name;
  /// The ID of the TODO. Changing this forces a new Palo Alto Local Rulestack FQDN List to be created.
  late final pulumi.Output<String> rulestackId;

  /// Creates a new [LocalRulestackFqdnList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocalRulestackFqdnList]. {@macro pulumi_paloalto_local_rulestack_fqdn_list_local_rulestack_fqdn_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocalRulestackFqdnList(
    String name, {
    LocalRulestackFqdnListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:paloalto/localRulestackFqdnList:LocalRulestackFqdnList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.auditComment = registerOutput<String?>('auditComment');
    this.description = registerOutput<String?>('description');
    this.fullyQualifiedDomainNames = registerOutput<List<String>>('fullyQualifiedDomainNames');
    this.name = registerOutput<String>('name');
    this.rulestackId = registerOutput<String>('rulestackId');
  }
}
