import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_object_local_rulestack_args.dart';
import 'system_data_response.dart';

/// LocalRulestack Certificate Object
///
/// Uses Azure REST API version 2025-05-23. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CertificateObjectLocalRulestack_CreateOrUpdate_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var certificateObjectLocalRulestack = new AzureNative.Cloudngfw.CertificateObjectLocalRulestack("certificateObjectLocalRulestack", new()
///     {
///         AuditComment = "comment",
///         CertificateSelfSigned = AzureNative.Cloudngfw.BooleanEnum.TRUE,
///         CertificateSignerResourceId = "",
///         Description = "description",
///         LocalRulestackName = "lrs1",
///         Name = "armid1",
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
/// 		_, err := cloudngfw.NewCertificateObjectLocalRulestack(ctx, "certificateObjectLocalRulestack", &cloudngfw.CertificateObjectLocalRulestackArgs{
/// 			AuditComment:                pulumi.String("comment"),
/// 			CertificateSelfSigned:       pulumi.String(cloudngfw.BooleanEnumTRUE),
/// 			CertificateSignerResourceId: pulumi.String(""),
/// 			Description:                 pulumi.String("description"),
/// 			LocalRulestackName:          pulumi.String("lrs1"),
/// 			Name:                        pulumi.String("armid1"),
/// 			ResourceGroupName:           pulumi.String("rgopenapi"),
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
/// import com.pulumi.azurenative.cloudngfw.CertificateObjectLocalRulestack;
/// import com.pulumi.azurenative.cloudngfw.CertificateObjectLocalRulestackArgs;
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
///         var certificateObjectLocalRulestack = new CertificateObjectLocalRulestack("certificateObjectLocalRulestack", CertificateObjectLocalRulestackArgs.builder()
///             .auditComment("comment")
///             .certificateSelfSigned("TRUE")
///             .certificateSignerResourceId("")
///             .description("description")
///             .localRulestackName("lrs1")
///             .name("armid1")
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
/// const certificateObjectLocalRulestack = new azure_native.cloudngfw.CertificateObjectLocalRulestack("certificateObjectLocalRulestack", {
///     auditComment: "comment",
///     certificateSelfSigned: azure_native.cloudngfw.BooleanEnum.TRUE,
///     certificateSignerResourceId: "",
///     description: "description",
///     localRulestackName: "lrs1",
///     name: "armid1",
///     resourceGroupName: "rgopenapi",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// certificate_object_local_rulestack = azure_native.cloudngfw.CertificateObjectLocalRulestack("certificateObjectLocalRulestack",
///     audit_comment="comment",
///     certificate_self_signed=azure_native.cloudngfw.BooleanEnum.TRUE,
///     certificate_signer_resource_id="",
///     description="description",
///     local_rulestack_name="lrs1",
///     name="armid1",
///     resource_group_name="rgopenapi")
///
/// ```
///
/// ```yaml
/// resources:
///   certificateObjectLocalRulestack:
///     type: azure-native:cloudngfw:CertificateObjectLocalRulestack
///     properties:
///       auditComment: comment
///       certificateSelfSigned: TRUE
///       certificateSignerResourceId: ""
///       description: description
///       localRulestackName: lrs1
///       name: armid1
///       resourceGroupName: rgopenapi
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CertificateObjectLocalRulestack_CreateOrUpdate_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var certificateObjectLocalRulestack = new AzureNative.Cloudngfw.CertificateObjectLocalRulestack("certificateObjectLocalRulestack", new()
///     {
///         CertificateSelfSigned = AzureNative.Cloudngfw.BooleanEnum.TRUE,
///         LocalRulestackName = "lrs1",
///         Name = "armid1",
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
/// 		_, err := cloudngfw.NewCertificateObjectLocalRulestack(ctx, "certificateObjectLocalRulestack", &cloudngfw.CertificateObjectLocalRulestackArgs{
/// 			CertificateSelfSigned: pulumi.String(cloudngfw.BooleanEnumTRUE),
/// 			LocalRulestackName:    pulumi.String("lrs1"),
/// 			Name:                  pulumi.String("armid1"),
/// 			ResourceGroupName:     pulumi.String("rgopenapi"),
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
/// import com.pulumi.azurenative.cloudngfw.CertificateObjectLocalRulestack;
/// import com.pulumi.azurenative.cloudngfw.CertificateObjectLocalRulestackArgs;
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
///         var certificateObjectLocalRulestack = new CertificateObjectLocalRulestack("certificateObjectLocalRulestack", CertificateObjectLocalRulestackArgs.builder()
///             .certificateSelfSigned("TRUE")
///             .localRulestackName("lrs1")
///             .name("armid1")
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
/// const certificateObjectLocalRulestack = new azure_native.cloudngfw.CertificateObjectLocalRulestack("certificateObjectLocalRulestack", {
///     certificateSelfSigned: azure_native.cloudngfw.BooleanEnum.TRUE,
///     localRulestackName: "lrs1",
///     name: "armid1",
///     resourceGroupName: "rgopenapi",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// certificate_object_local_rulestack = azure_native.cloudngfw.CertificateObjectLocalRulestack("certificateObjectLocalRulestack",
///     certificate_self_signed=azure_native.cloudngfw.BooleanEnum.TRUE,
///     local_rulestack_name="lrs1",
///     name="armid1",
///     resource_group_name="rgopenapi")
///
/// ```
///
/// ```yaml
/// resources:
///   certificateObjectLocalRulestack:
///     type: azure-native:cloudngfw:CertificateObjectLocalRulestack
///     properties:
///       certificateSelfSigned: TRUE
///       localRulestackName: lrs1
///       name: armid1
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
/// $ pulumi import azure-native:cloudngfw:CertificateObjectLocalRulestack armid1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/PaloAltoNetworks.Cloudngfw/localRulestacks/{localRulestackName}/certificates/{name}
/// ```
class CertificateObjectLocalRulestack extends pulumi.CustomResource {
  /// comment for this object
  late final pulumi.Output<String?> auditComment;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// use certificate self signed
  late final pulumi.Output<String> certificateSelfSigned;
  /// Resource Id of certificate signer, to be populated only when certificateSelfSigned is false
  late final pulumi.Output<String?> certificateSignerResourceId;
  /// user description for this object
  late final pulumi.Output<String?> description;
  /// read only string representing last create or update
  late final pulumi.Output<String?> etag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CertificateObjectLocalRulestack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateObjectLocalRulestack]. {@macro pulumi_cloudngfw_certificate_object_local_rulestack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateObjectLocalRulestack(
    String name, {
    CertificateObjectLocalRulestackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cloudngfw:CertificateObjectLocalRulestack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.auditComment = registerOutput<String?>('auditComment');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.certificateSelfSigned = registerOutput<String>('certificateSelfSigned');
    this.certificateSignerResourceId = registerOutput<String?>('certificateSignerResourceId');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
