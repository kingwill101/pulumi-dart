import 'package:pulumi/pulumi.dart' as pulumi;
import 'prefix_list_local_rulestack_args.dart';
import 'system_data_response.dart';

/// LocalRulestack prefixList
///
/// Uses Azure REST API version 2025-05-23. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08, 2026-01-26-preview, 2026-05-11-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrefixListLocalRulestack_CreateOrUpdate_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prefixListLocalRulestack = new AzureNative.Cloudngfw.PrefixListLocalRulestack("prefixListLocalRulestack", new()
///     {
///         AuditComment = "comment",
///         Description = "string",
///         LocalRulestackName = "lrs1",
///         Name = "armid1",
///         PrefixList = new[]
///         {
///             "1.0.0.0/24",
///         },
///         ResourceGroupName = "rgopenapi",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	cloudngfw "github.com/pulumi/pulumi-azure-native-sdk/cloudngfw/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudngfw.NewPrefixListLocalRulestack(ctx, "prefixListLocalRulestack", &cloudngfw.PrefixListLocalRulestackArgs{
/// 			AuditComment:       pulumi.String("comment"),
/// 			Description:        pulumi.String("string"),
/// 			LocalRulestackName: pulumi.String("lrs1"),
/// 			Name:               pulumi.String("armid1"),
/// 			PrefixList: pulumi.StringArray{
/// 				pulumi.String("1.0.0.0/24"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgopenapi"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_cloudngfw_prefixlistlocalrulestack" "prefixListLocalRulestack" {
///   audit_comment        = "comment"
///   description          = "string"
///   local_rulestack_name = "lrs1"
///   name                 = "armid1"
///   prefix_list          = ["1.0.0.0/24"]
///   resource_group_name  = "rgopenapi"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.cloudngfw.PrefixListLocalRulestack;
/// import com.pulumi.azurenative.cloudngfw.PrefixListLocalRulestackArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var prefixListLocalRulestack = new PrefixListLocalRulestack("prefixListLocalRulestack", PrefixListLocalRulestackArgs.builder()
///             .auditComment("comment")
///             .description("string")
///             .localRulestackName("lrs1")
///             .name("armid1")
///             .prefixList("1.0.0.0/24")
///             .resourceGroupName("rgopenapi")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const prefixListLocalRulestack = new azure_native.cloudngfw.PrefixListLocalRulestack("prefixListLocalRulestack", {
///     auditComment: "comment",
///     description: "string",
///     localRulestackName: "lrs1",
///     name: "armid1",
///     prefixList: ["1.0.0.0/24"],
///     resourceGroupName: "rgopenapi",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// prefix_list_local_rulestack = azure_native.cloudngfw.PrefixListLocalRulestack("prefixListLocalRulestack",
///     audit_comment="comment",
///     description="string",
///     local_rulestack_name="lrs1",
///     name="armid1",
///     prefix_list=["1.0.0.0/24"],
///     resource_group_name="rgopenapi")
///
/// ```
///
/// ```yaml
/// resources:
///   prefixListLocalRulestack:
///     type: azure-native:cloudngfw:PrefixListLocalRulestack
///     properties:
///       auditComment: comment
///       description: string
///       localRulestackName: lrs1
///       name: armid1
///       prefixList:
///         - 1.0.0.0/24
///       resourceGroupName: rgopenapi
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PrefixListLocalRulestack_CreateOrUpdate_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prefixListLocalRulestack = new AzureNative.Cloudngfw.PrefixListLocalRulestack("prefixListLocalRulestack", new()
///     {
///         LocalRulestackName = "lrs1",
///         Name = "armid1",
///         PrefixList = new[]
///         {
///             "1.0.0.0/24",
///         },
///         ResourceGroupName = "rgopenapi",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	cloudngfw "github.com/pulumi/pulumi-azure-native-sdk/cloudngfw/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudngfw.NewPrefixListLocalRulestack(ctx, "prefixListLocalRulestack", &cloudngfw.PrefixListLocalRulestackArgs{
/// 			LocalRulestackName: pulumi.String("lrs1"),
/// 			Name:               pulumi.String("armid1"),
/// 			PrefixList: pulumi.StringArray{
/// 				pulumi.String("1.0.0.0/24"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgopenapi"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_cloudngfw_prefixlistlocalrulestack" "prefixListLocalRulestack" {
///   local_rulestack_name = "lrs1"
///   name                 = "armid1"
///   prefix_list          = ["1.0.0.0/24"]
///   resource_group_name  = "rgopenapi"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.cloudngfw.PrefixListLocalRulestack;
/// import com.pulumi.azurenative.cloudngfw.PrefixListLocalRulestackArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var prefixListLocalRulestack = new PrefixListLocalRulestack("prefixListLocalRulestack", PrefixListLocalRulestackArgs.builder()
///             .localRulestackName("lrs1")
///             .name("armid1")
///             .prefixList("1.0.0.0/24")
///             .resourceGroupName("rgopenapi")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const prefixListLocalRulestack = new azure_native.cloudngfw.PrefixListLocalRulestack("prefixListLocalRulestack", {
///     localRulestackName: "lrs1",
///     name: "armid1",
///     prefixList: ["1.0.0.0/24"],
///     resourceGroupName: "rgopenapi",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// prefix_list_local_rulestack = azure_native.cloudngfw.PrefixListLocalRulestack("prefixListLocalRulestack",
///     local_rulestack_name="lrs1",
///     name="armid1",
///     prefix_list=["1.0.0.0/24"],
///     resource_group_name="rgopenapi")
///
/// ```
///
/// ```yaml
/// resources:
///   prefixListLocalRulestack:
///     type: azure-native:cloudngfw:PrefixListLocalRulestack
///     properties:
///       localRulestackName: lrs1
///       name: armid1
///       prefixList:
///         - 1.0.0.0/24
///       resourceGroupName: rgopenapi
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:cloudngfw:PrefixListLocalRulestack armid1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/PaloAltoNetworks.Cloudngfw/localRulestacks/{localRulestackName}/prefixlists/{name}
/// ```
class PrefixListLocalRulestack extends pulumi.CustomResource {
  /// comment for this object
  late final pulumi.Output<String?> auditComment;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// prefix description
  late final pulumi.Output<String?> description;
  /// etag info
  late final pulumi.Output<String?> etag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// prefix list
  late final pulumi.Output<List<String>> prefixList;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrefixListLocalRulestack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrefixListLocalRulestack]. {@macro pulumi_cloudngfw_prefix_list_local_rulestack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrefixListLocalRulestack(
    String name, {
    PrefixListLocalRulestackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cloudngfw:PrefixListLocalRulestack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    auditComment = registerOutput<String?>('auditComment');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    prefixList = registerOutput<List<String>>('prefixList', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [PrefixListLocalRulestack] resource.
  PrefixListLocalRulestack.reference(String urn)
    : super(
        'azure-native:cloudngfw:PrefixListLocalRulestack',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    auditComment = registerOutput<String?>('auditComment');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    prefixList = registerOutput<List<String>>('prefixList', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
