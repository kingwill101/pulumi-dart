import 'package:pulumi/pulumi.dart' as pulumi;
import 'fqdn_list_global_rulestack_args.dart';
import 'system_data_response.dart';

/// GlobalRulestack fqdnList
///
/// Uses Azure REST API version 2025-05-23. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08, 2026-01-26-preview, 2026-05-11-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### FqdnListGlobalRulestack_CreateOrUpdate_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fqdnListGlobalRulestack = new AzureNative.Cloudngfw.FqdnListGlobalRulestack("fqdnListGlobalRulestack", new()
///     {
///         AuditComment = "string",
///         Description = "string",
///         FqdnList = new[]
///         {
///             "string1",
///             "string2",
///         },
///         GlobalRulestackName = "praval",
///         Name = "armid1",
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
/// 		_, err := cloudngfw.NewFqdnListGlobalRulestack(ctx, "fqdnListGlobalRulestack", &cloudngfw.FqdnListGlobalRulestackArgs{
/// 			AuditComment: pulumi.String("string"),
/// 			Description:  pulumi.String("string"),
/// 			FqdnList: pulumi.StringArray{
/// 				pulumi.String("string1"),
/// 				pulumi.String("string2"),
/// 			},
/// 			GlobalRulestackName: pulumi.String("praval"),
/// 			Name:                pulumi.String("armid1"),
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
/// resource "azure-native_cloudngfw_fqdnlistglobalrulestack" "fqdnListGlobalRulestack" {
///   audit_comment         = "string"
///   description           = "string"
///   fqdn_list             = ["string1", "string2"]
///   global_rulestack_name = "praval"
///   name                  = "armid1"
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
/// import com.pulumi.azurenative.cloudngfw.FqdnListGlobalRulestack;
/// import com.pulumi.azurenative.cloudngfw.FqdnListGlobalRulestackArgs;
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
///         var fqdnListGlobalRulestack = new FqdnListGlobalRulestack("fqdnListGlobalRulestack", FqdnListGlobalRulestackArgs.builder()
///             .auditComment("string")
///             .description("string")
///             .fqdnList(
///                 "string1",
///                 "string2")
///             .globalRulestackName("praval")
///             .name("armid1")
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
/// const fqdnListGlobalRulestack = new azure_native.cloudngfw.FqdnListGlobalRulestack("fqdnListGlobalRulestack", {
///     auditComment: "string",
///     description: "string",
///     fqdnList: [
///         "string1",
///         "string2",
///     ],
///     globalRulestackName: "praval",
///     name: "armid1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// fqdn_list_global_rulestack = azure_native.cloudngfw.FqdnListGlobalRulestack("fqdnListGlobalRulestack",
///     audit_comment="string",
///     description="string",
///     fqdn_list=[
///         "string1",
///         "string2",
///     ],
///     global_rulestack_name="praval",
///     name="armid1")
///
/// ```
///
/// ```yaml
/// resources:
///   fqdnListGlobalRulestack:
///     type: azure-native:cloudngfw:FqdnListGlobalRulestack
///     properties:
///       auditComment: string
///       description: string
///       fqdnList:
///         - string1
///         - string2
///       globalRulestackName: praval
///       name: armid1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### FqdnListGlobalRulestack_CreateOrUpdate_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fqdnListGlobalRulestack = new AzureNative.Cloudngfw.FqdnListGlobalRulestack("fqdnListGlobalRulestack", new()
///     {
///         FqdnList = new[]
///         {
///             "string1",
///             "string2",
///         },
///         GlobalRulestackName = "praval",
///         Name = "armid1",
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
/// 		_, err := cloudngfw.NewFqdnListGlobalRulestack(ctx, "fqdnListGlobalRulestack", &cloudngfw.FqdnListGlobalRulestackArgs{
/// 			FqdnList: pulumi.StringArray{
/// 				pulumi.String("string1"),
/// 				pulumi.String("string2"),
/// 			},
/// 			GlobalRulestackName: pulumi.String("praval"),
/// 			Name:                pulumi.String("armid1"),
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
/// resource "azure-native_cloudngfw_fqdnlistglobalrulestack" "fqdnListGlobalRulestack" {
///   fqdn_list             = ["string1", "string2"]
///   global_rulestack_name = "praval"
///   name                  = "armid1"
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
/// import com.pulumi.azurenative.cloudngfw.FqdnListGlobalRulestack;
/// import com.pulumi.azurenative.cloudngfw.FqdnListGlobalRulestackArgs;
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
///         var fqdnListGlobalRulestack = new FqdnListGlobalRulestack("fqdnListGlobalRulestack", FqdnListGlobalRulestackArgs.builder()
///             .fqdnList(
///                 "string1",
///                 "string2")
///             .globalRulestackName("praval")
///             .name("armid1")
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
/// const fqdnListGlobalRulestack = new azure_native.cloudngfw.FqdnListGlobalRulestack("fqdnListGlobalRulestack", {
///     fqdnList: [
///         "string1",
///         "string2",
///     ],
///     globalRulestackName: "praval",
///     name: "armid1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// fqdn_list_global_rulestack = azure_native.cloudngfw.FqdnListGlobalRulestack("fqdnListGlobalRulestack",
///     fqdn_list=[
///         "string1",
///         "string2",
///     ],
///     global_rulestack_name="praval",
///     name="armid1")
///
/// ```
///
/// ```yaml
/// resources:
///   fqdnListGlobalRulestack:
///     type: azure-native:cloudngfw:FqdnListGlobalRulestack
///     properties:
///       fqdnList:
///         - string1
///         - string2
///       globalRulestackName: praval
///       name: armid1
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
/// $ pulumi import azure-native:cloudngfw:FqdnListGlobalRulestack armid1 /providers/PaloAltoNetworks.Cloudngfw/globalRulestacks/{globalRulestackName}/fqdnlists/{name}
/// ```
class FqdnListGlobalRulestack extends pulumi.CustomResource {
  /// comment for this object
  late final pulumi.Output<String?> auditComment;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// fqdn object description
  late final pulumi.Output<String?> description;
  /// etag info
  late final pulumi.Output<String?> etag;
  /// fqdn list
  late final pulumi.Output<List<String>> fqdnList;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FqdnListGlobalRulestack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FqdnListGlobalRulestack]. {@macro pulumi_cloudngfw_fqdn_list_global_rulestack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FqdnListGlobalRulestack(
    String name, {
    FqdnListGlobalRulestackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cloudngfw:FqdnListGlobalRulestack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    auditComment = registerOutput<String?>('auditComment');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    etag = registerOutput<String?>('etag');
    fqdnList = registerOutput<List<String>>('fqdnList', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [FqdnListGlobalRulestack] resource.
  FqdnListGlobalRulestack.reference(String urn)
    : super(
        'azure-native:cloudngfw:FqdnListGlobalRulestack',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    auditComment = registerOutput<String?>('auditComment');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    etag = registerOutput<String?>('etag');
    fqdnList = registerOutput<List<String>>('fqdnList', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
