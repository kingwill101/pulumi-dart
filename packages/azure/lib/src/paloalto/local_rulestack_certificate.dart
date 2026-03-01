import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_rulestack_certificate_args.dart';

/// Manages a Palo Alto Networks Rulestack Certificate.
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
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleLocalRulestackCertificate = new azure.paloalto.LocalRulestackCertificate("example", {
///     name: "example",
///     rulestackId: exampleLocalRulestack.id,
///     selfSigned: true,
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
///     resource_group_name=example.name,
///     location=example.location)
/// example_local_rulestack_certificate = azure.paloalto.LocalRulestackCertificate("example",
///     name="example",
///     rulestack_id=example_local_rulestack.id,
///     self_signed=True)
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
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleLocalRulestackCertificate = new Azure.PaloAlto.LocalRulestackCertificate("example", new()
///     {
///         Name = "example",
///         RulestackId = exampleLocalRulestack.Id,
///         SelfSigned = true,
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
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = paloalto.NewLocalRulestackCertificate(ctx, "example", &paloalto.LocalRulestackCertificateArgs{
/// 			Name:        pulumi.String("example"),
/// 			RulestackId: exampleLocalRulestack.ID(),
/// 			SelfSigned:  pulumi.Bool(true),
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
/// import com.pulumi.azure.paloalto.LocalRulestackCertificate;
/// import com.pulumi.azure.paloalto.LocalRulestackCertificateArgs;
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
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleLocalRulestackCertificate = new LocalRulestackCertificate("exampleLocalRulestackCertificate", LocalRulestackCertificateArgs.builder()
///             .name("example")
///             .rulestackId(exampleLocalRulestack.id())
///             .selfSigned(true)
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
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleLocalRulestackCertificate:
///     type: azure:paloalto:LocalRulestackCertificate
///     name: example
///     properties:
///       name: example
///       rulestackId: ${exampleLocalRulestack.id}
///       selfSigned: true
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
/// Palo Alto Networks Rulestack Certificates can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:paloalto/localRulestackCertificate:LocalRulestackCertificate example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/PaloAltoNetworks.Cloudngfw/localRulestacks/myLocalRulestack/certificates/myCertificate
/// ```
class LocalRulestackCertificate extends pulumi.CustomResource {
  /// The comment for Audit purposes.
  late final pulumi.Output<String?> auditComment;
  /// The description for the Certificate.
  late final pulumi.Output<String?> description;
  /// The `versionles_id` of the Key Vault Certificate to use. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created.
  late final pulumi.Output<String?> keyVaultCertificateId;
  /// The name which should be used for this Palo Alto Networks Rulestack Certificate.
  late final pulumi.Output<String> name;
  /// The ID of the TODO. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created.
  late final pulumi.Output<String> rulestackId;
  /// Should a Self Signed Certificate be used. Defaults to `false`. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created.
  ///
  /// > **Note:** One and only one of `self_signed` or `key_vault_certificate_id` must be specified.
  late final pulumi.Output<bool?> selfSigned;

  /// Creates a new [LocalRulestackCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocalRulestackCertificate]. {@macro pulumi_paloalto_local_rulestack_certificate_local_rulestack_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocalRulestackCertificate(
    String name, {
    LocalRulestackCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:paloalto/localRulestackCertificate:LocalRulestackCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.auditComment = registerOutput<String?>('auditComment');
    this.description = registerOutput<String?>('description');
    this.keyVaultCertificateId = registerOutput<String?>('keyVaultCertificateId');
    this.name = registerOutput<String>('name');
    this.rulestackId = registerOutput<String>('rulestackId');
    this.selfSigned = registerOutput<bool?>('selfSigned');
  }
}
