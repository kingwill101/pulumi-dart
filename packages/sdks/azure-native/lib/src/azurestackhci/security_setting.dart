import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_compliance_status_response.dart';
import 'security_setting_args.dart';
import 'system_data_response.dart';

/// Security settings proxy resource
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2023-11-01-preview.
///
/// Other available API versions: 2023-11-01-preview, 2024-01-01, 2024-02-15-preview, 2024-09-01-preview, 2024-12-01-preview, 2025-02-01-preview, 2025-09-15-preview, 2025-10-01, 2025-11-01-preview, 2025-12-01-preview, 2026-02-01, 2026-02-15-preview, 2026-03-01-preview, 2026-04-01-preview, 2026-04-30, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Security Settings
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securitySetting = new AzureNative.AzureStackHCI.SecuritySetting("securitySetting", new()
///     {
///         ClusterName = "myCluster",
///         ResourceGroupName = "test-rg",
///         SecuredCoreComplianceAssignment = AzureNative.AzureStackHCI.ComplianceAssignmentType.Audit,
///         SecuritySettingsName = "default",
///         SmbEncryptionForIntraClusterTrafficComplianceAssignment = AzureNative.AzureStackHCI.ComplianceAssignmentType.Audit,
///         WdacComplianceAssignment = AzureNative.AzureStackHCI.ComplianceAssignmentType.ApplyAndAutoCorrect,
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewSecuritySetting(ctx, "securitySetting", &azurestackhci.SecuritySettingArgs{
/// 			ClusterName:                     pulumi.String("myCluster"),
/// 			ResourceGroupName:               pulumi.String("test-rg"),
/// 			SecuredCoreComplianceAssignment: pulumi.String(azurestackhci.ComplianceAssignmentTypeAudit),
/// 			SecuritySettingsName:            pulumi.String("default"),
/// 			SmbEncryptionForIntraClusterTrafficComplianceAssignment: pulumi.String(azurestackhci.ComplianceAssignmentTypeAudit),
/// 			WdacComplianceAssignment:                                pulumi.String(azurestackhci.ComplianceAssignmentTypeApplyAndAutoCorrect),
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
/// resource "azure-native_azurestackhci_securitysetting" "securitySetting" {
///   cluster_name                                                   = "myCluster"
///   resource_group_name                                            = "test-rg"
///   secured_core_compliance_assignment                             = "Audit"
///   security_settings_name                                         = "default"
///   smb_encryption_for_intra_cluster_traffic_compliance_assignment = "Audit"
///   wdac_compliance_assignment                                     = "ApplyAndAutoCorrect"
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
/// import com.pulumi.azurenative.azurestackhci.SecuritySetting;
/// import com.pulumi.azurenative.azurestackhci.SecuritySettingArgs;
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
///         var securitySetting = new SecuritySetting("securitySetting", SecuritySettingArgs.builder()
///             .clusterName("myCluster")
///             .resourceGroupName("test-rg")
///             .securedCoreComplianceAssignment("Audit")
///             .securitySettingsName("default")
///             .smbEncryptionForIntraClusterTrafficComplianceAssignment("Audit")
///             .wdacComplianceAssignment("ApplyAndAutoCorrect")
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
/// const securitySetting = new azure_native.azurestackhci.SecuritySetting("securitySetting", {
///     clusterName: "myCluster",
///     resourceGroupName: "test-rg",
///     securedCoreComplianceAssignment: azure_native.azurestackhci.ComplianceAssignmentType.Audit,
///     securitySettingsName: "default",
///     smbEncryptionForIntraClusterTrafficComplianceAssignment: azure_native.azurestackhci.ComplianceAssignmentType.Audit,
///     wdacComplianceAssignment: azure_native.azurestackhci.ComplianceAssignmentType.ApplyAndAutoCorrect,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// security_setting = azure_native.azurestackhci.SecuritySetting("securitySetting",
///     cluster_name="myCluster",
///     resource_group_name="test-rg",
///     secured_core_compliance_assignment=azure_native.azurestackhci.ComplianceAssignmentType.AUDIT,
///     security_settings_name="default",
///     smb_encryption_for_intra_cluster_traffic_compliance_assignment=azure_native.azurestackhci.ComplianceAssignmentType.AUDIT,
///     wdac_compliance_assignment=azure_native.azurestackhci.ComplianceAssignmentType.APPLY_AND_AUTO_CORRECT)
///
/// ```
///
/// ```yaml
/// resources:
///   securitySetting:
///     type: azure-native:azurestackhci:SecuritySetting
///     properties:
///       clusterName: myCluster
///       resourceGroupName: test-rg
///       securedCoreComplianceAssignment: Audit
///       securitySettingsName: default
///       smbEncryptionForIntraClusterTrafficComplianceAssignment: Audit
///       wdacComplianceAssignment: ApplyAndAutoCorrect
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
/// $ pulumi import azure-native:azurestackhci:SecuritySetting myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/clusters/{clusterName}/securitySettings/{securitySettingsName}
/// ```
class SecuritySetting extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// Secured Core Compliance Assignment
  late final pulumi.Output<String?> securedCoreComplianceAssignment;
  /// Security Compliance Status
  late final pulumi.Output<SecurityComplianceStatusResponse> securityComplianceStatus;
  /// SMB encryption for intra-cluster traffic Compliance Assignment
  late final pulumi.Output<String?> smbEncryptionForIntraClusterTrafficComplianceAssignment;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// WDAC Compliance Assignment
  late final pulumi.Output<String?> wdacComplianceAssignment;

  /// Creates a new [SecuritySetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecuritySetting]. {@macro pulumi_azurestackhci_security_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecuritySetting(
    String name, {
    SecuritySettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:SecuritySetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    securedCoreComplianceAssignment = registerOutput<String?>('securedCoreComplianceAssignment');
    securityComplianceStatus = registerOutput<SecurityComplianceStatusResponse>('securityComplianceStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityComplianceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    smbEncryptionForIntraClusterTrafficComplianceAssignment = registerOutput<String?>('smbEncryptionForIntraClusterTrafficComplianceAssignment');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    wdacComplianceAssignment = registerOutput<String?>('wdacComplianceAssignment');
  }
}
