import 'package:pulumi/pulumi.dart' as pulumi;
import 'prefix_list_global_rulestack_args.dart';
import 'system_data_response.dart';

/// GlobalRulestack prefixList
///
/// Uses Azure REST API version 2025-05-23. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrefixListGlobalRulestack_CreateOrUpdate_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prefixListGlobalRulestack = new AzureNative.Cloudngfw.PrefixListGlobalRulestack("prefixListGlobalRulestack", new()
///     {
///         AuditComment = "comment",
///         Description = "string",
///         GlobalRulestackName = "praval",
///         Name = "armid1",
///         PrefixList = new[]
///         {
///             "1.0.0.0/24",
///         },
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
/// 		_, err := cloudngfw.NewPrefixListGlobalRulestack(ctx, "prefixListGlobalRulestack", &cloudngfw.PrefixListGlobalRulestackArgs{
/// 			AuditComment:        pulumi.String("comment"),
/// 			Description:         pulumi.String("string"),
/// 			GlobalRulestackName: pulumi.String("praval"),
/// 			Name:                pulumi.String("armid1"),
/// 			PrefixList: pulumi.StringArray{
/// 				pulumi.String("1.0.0.0/24"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.cloudngfw.PrefixListGlobalRulestack;
/// import com.pulumi.azurenative.cloudngfw.PrefixListGlobalRulestackArgs;
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
///         var prefixListGlobalRulestack = new PrefixListGlobalRulestack("prefixListGlobalRulestack", PrefixListGlobalRulestackArgs.builder()
///             .auditComment("comment")
///             .description("string")
///             .globalRulestackName("praval")
///             .name("armid1")
///             .prefixList("1.0.0.0/24")
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
/// const prefixListGlobalRulestack = new azure_native.cloudngfw.PrefixListGlobalRulestack("prefixListGlobalRulestack", {
///     auditComment: "comment",
///     description: "string",
///     globalRulestackName: "praval",
///     name: "armid1",
///     prefixList: ["1.0.0.0/24"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// prefix_list_global_rulestack = azure_native.cloudngfw.PrefixListGlobalRulestack("prefixListGlobalRulestack",
///     audit_comment="comment",
///     description="string",
///     global_rulestack_name="praval",
///     name="armid1",
///     prefix_list=["1.0.0.0/24"])
///
/// ```
///
/// ```yaml
/// resources:
///   prefixListGlobalRulestack:
///     type: azure-native:cloudngfw:PrefixListGlobalRulestack
///     properties:
///       auditComment: comment
///       description: string
///       globalRulestackName: praval
///       name: armid1
///       prefixList:
///         - 1.0.0.0/24
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PrefixListGlobalRulestack_CreateOrUpdate_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prefixListGlobalRulestack = new AzureNative.Cloudngfw.PrefixListGlobalRulestack("prefixListGlobalRulestack", new()
///     {
///         GlobalRulestackName = "praval",
///         Name = "armid1",
///         PrefixList = new[]
///         {
///             "1.0.0.0/24",
///         },
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
/// 		_, err := cloudngfw.NewPrefixListGlobalRulestack(ctx, "prefixListGlobalRulestack", &cloudngfw.PrefixListGlobalRulestackArgs{
/// 			GlobalRulestackName: pulumi.String("praval"),
/// 			Name:                pulumi.String("armid1"),
/// 			PrefixList: pulumi.StringArray{
/// 				pulumi.String("1.0.0.0/24"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.cloudngfw.PrefixListGlobalRulestack;
/// import com.pulumi.azurenative.cloudngfw.PrefixListGlobalRulestackArgs;
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
///         var prefixListGlobalRulestack = new PrefixListGlobalRulestack("prefixListGlobalRulestack", PrefixListGlobalRulestackArgs.builder()
///             .globalRulestackName("praval")
///             .name("armid1")
///             .prefixList("1.0.0.0/24")
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
/// const prefixListGlobalRulestack = new azure_native.cloudngfw.PrefixListGlobalRulestack("prefixListGlobalRulestack", {
///     globalRulestackName: "praval",
///     name: "armid1",
///     prefixList: ["1.0.0.0/24"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// prefix_list_global_rulestack = azure_native.cloudngfw.PrefixListGlobalRulestack("prefixListGlobalRulestack",
///     global_rulestack_name="praval",
///     name="armid1",
///     prefix_list=["1.0.0.0/24"])
///
/// ```
///
/// ```yaml
/// resources:
///   prefixListGlobalRulestack:
///     type: azure-native:cloudngfw:PrefixListGlobalRulestack
///     properties:
///       globalRulestackName: praval
///       name: armid1
///       prefixList:
///         - 1.0.0.0/24
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
/// $ pulumi import azure-native:cloudngfw:PrefixListGlobalRulestack armid1 /providers/PaloAltoNetworks.Cloudngfw/globalRulestacks/{globalRulestackName}/prefixlists/{name}
/// ```
class PrefixListGlobalRulestack extends pulumi.CustomResource {
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

  /// Creates a new [PrefixListGlobalRulestack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrefixListGlobalRulestack]. {@macro pulumi_cloudngfw_prefix_list_global_rulestack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrefixListGlobalRulestack(
    String name, {
    PrefixListGlobalRulestackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cloudngfw:PrefixListGlobalRulestack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.auditComment = registerOutput<String?>('auditComment');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    this.prefixList = registerOutput<List<String>>('prefixList');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
