import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_object_global_rulestack_args.dart';
import 'system_data_response.dart';

/// GlobalRulestack Certificate Object
///
/// Uses Azure REST API version 2025-05-23. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08, 2026-01-26-preview, 2026-05-11-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CertificateObjectGlobalRulestack_CreateOrUpdate_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var certificateObjectGlobalRulestack = new AzureNative.Cloudngfw.CertificateObjectGlobalRulestack("certificateObjectGlobalRulestack", new()
///     {
///         AuditComment = "comment",
///         CertificateSelfSigned = AzureNative.Cloudngfw.BooleanEnum.TRUE,
///         CertificateSignerResourceId = "",
///         Description = "description",
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
/// 		_, err := cloudngfw.NewCertificateObjectGlobalRulestack(ctx, "certificateObjectGlobalRulestack", &cloudngfw.CertificateObjectGlobalRulestackArgs{
/// 			AuditComment:                pulumi.String("comment"),
/// 			CertificateSelfSigned:       pulumi.String(cloudngfw.BooleanEnumTRUE),
/// 			CertificateSignerResourceId: pulumi.String(""),
/// 			Description:                 pulumi.String("description"),
/// 			GlobalRulestackName:         pulumi.String("praval"),
/// 			Name:                        pulumi.String("armid1"),
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
/// resource "azure-native_cloudngfw_certificateobjectglobalrulestack" "certificateObjectGlobalRulestack" {
///   audit_comment                  = "comment"
///   certificate_self_signed        = "TRUE"
///   certificate_signer_resource_id = ""
///   description                    = "description"
///   global_rulestack_name          = "praval"
///   name                           = "armid1"
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
/// import com.pulumi.azurenative.cloudngfw.CertificateObjectGlobalRulestack;
/// import com.pulumi.azurenative.cloudngfw.CertificateObjectGlobalRulestackArgs;
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
///         var certificateObjectGlobalRulestack = new CertificateObjectGlobalRulestack("certificateObjectGlobalRulestack", CertificateObjectGlobalRulestackArgs.builder()
///             .auditComment("comment")
///             .certificateSelfSigned("TRUE")
///             .certificateSignerResourceId("")
///             .description("description")
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
/// const certificateObjectGlobalRulestack = new azure_native.cloudngfw.CertificateObjectGlobalRulestack("certificateObjectGlobalRulestack", {
///     auditComment: "comment",
///     certificateSelfSigned: azure_native.cloudngfw.BooleanEnum.TRUE,
///     certificateSignerResourceId: "",
///     description: "description",
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
/// certificate_object_global_rulestack = azure_native.cloudngfw.CertificateObjectGlobalRulestack("certificateObjectGlobalRulestack",
///     audit_comment="comment",
///     certificate_self_signed=azure_native.cloudngfw.BooleanEnum.TRUE,
///     certificate_signer_resource_id="",
///     description="description",
///     global_rulestack_name="praval",
///     name="armid1")
///
/// ```
///
/// ```yaml
/// resources:
///   certificateObjectGlobalRulestack:
///     type: azure-native:cloudngfw:CertificateObjectGlobalRulestack
///     properties:
///       auditComment: comment
///       certificateSelfSigned: TRUE
///       certificateSignerResourceId: ""
///       description: description
///       globalRulestackName: praval
///       name: armid1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CertificateObjectGlobalRulestack_CreateOrUpdate_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var certificateObjectGlobalRulestack = new AzureNative.Cloudngfw.CertificateObjectGlobalRulestack("certificateObjectGlobalRulestack", new()
///     {
///         CertificateSelfSigned = AzureNative.Cloudngfw.BooleanEnum.TRUE,
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
/// 		_, err := cloudngfw.NewCertificateObjectGlobalRulestack(ctx, "certificateObjectGlobalRulestack", &cloudngfw.CertificateObjectGlobalRulestackArgs{
/// 			CertificateSelfSigned: pulumi.String(cloudngfw.BooleanEnumTRUE),
/// 			GlobalRulestackName:   pulumi.String("praval"),
/// 			Name:                  pulumi.String("armid1"),
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
/// resource "azure-native_cloudngfw_certificateobjectglobalrulestack" "certificateObjectGlobalRulestack" {
///   certificate_self_signed = "TRUE"
///   global_rulestack_name   = "praval"
///   name                    = "armid1"
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
/// import com.pulumi.azurenative.cloudngfw.CertificateObjectGlobalRulestack;
/// import com.pulumi.azurenative.cloudngfw.CertificateObjectGlobalRulestackArgs;
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
///         var certificateObjectGlobalRulestack = new CertificateObjectGlobalRulestack("certificateObjectGlobalRulestack", CertificateObjectGlobalRulestackArgs.builder()
///             .certificateSelfSigned("TRUE")
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
/// const certificateObjectGlobalRulestack = new azure_native.cloudngfw.CertificateObjectGlobalRulestack("certificateObjectGlobalRulestack", {
///     certificateSelfSigned: azure_native.cloudngfw.BooleanEnum.TRUE,
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
/// certificate_object_global_rulestack = azure_native.cloudngfw.CertificateObjectGlobalRulestack("certificateObjectGlobalRulestack",
///     certificate_self_signed=azure_native.cloudngfw.BooleanEnum.TRUE,
///     global_rulestack_name="praval",
///     name="armid1")
///
/// ```
///
/// ```yaml
/// resources:
///   certificateObjectGlobalRulestack:
///     type: azure-native:cloudngfw:CertificateObjectGlobalRulestack
///     properties:
///       certificateSelfSigned: TRUE
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
/// $ pulumi import azure-native:cloudngfw:CertificateObjectGlobalRulestack armid1 /providers/PaloAltoNetworks.Cloudngfw/globalRulestacks/{globalRulestackName}/certificates/{name}
/// ```
class CertificateObjectGlobalRulestack extends pulumi.CustomResource {
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

  /// Creates a new [CertificateObjectGlobalRulestack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateObjectGlobalRulestack]. {@macro pulumi_cloudngfw_certificate_object_global_rulestack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateObjectGlobalRulestack(
    String name, {
    CertificateObjectGlobalRulestackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cloudngfw:CertificateObjectGlobalRulestack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    auditComment = registerOutput<String?>('auditComment');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    certificateSelfSigned = registerOutput<String>('certificateSelfSigned');
    certificateSignerResourceId = registerOutput<String?>('certificateSignerResourceId');
    description = registerOutput<String?>('description');
    etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [CertificateObjectGlobalRulestack] resource.
  CertificateObjectGlobalRulestack.reference(String urn)
    : super(
        'azure-native:cloudngfw:CertificateObjectGlobalRulestack',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    auditComment = registerOutput<String?>('auditComment');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    certificateSelfSigned = registerOutput<String>('certificateSelfSigned');
    certificateSignerResourceId = registerOutput<String?>('certificateSignerResourceId');
    description = registerOutput<String?>('description');
    etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
