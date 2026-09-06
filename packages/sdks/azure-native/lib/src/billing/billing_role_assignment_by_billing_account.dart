import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_role_assignment_by_billing_account_args.dart';
import 'billing_role_assignment_properties_response.dart';
import 'system_data_response.dart';

/// The properties of the billing role assignment.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2019-10-01-preview.
///
/// Other available API versions: 2019-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native billing [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BillingRoleAssignmentCreateOrUpdateByBillingAccount
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var billingRoleAssignmentByBillingAccount = new AzureNative.Billing.BillingRoleAssignmentByBillingAccount("billingRoleAssignmentByBillingAccount", new()
///     {
///         BillingAccountName = "7898901",
///         BillingRoleAssignmentName = "9dfd08c2-62a3-4d47-85bd-1cdba1408402",
///         Properties = new AzureNative.Billing.Inputs.BillingRoleAssignmentPropertiesArgs
///         {
///             PrincipalId = "00000000-0000-0000-0000-000000000000",
///             PrincipalTenantId = "076915e7-de10-4323-bb34-a58c904068bb",
///             RoleDefinitionId = "/providers/Microsoft.Billing/billingAccounts/7898901/billingRoleDefinitions/9f1983cb-2574-400c-87e9-34cf8e2280db",
///             UserEmailAddress = "john@contoso.com",
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
/// 	billing "github.com/pulumi/pulumi-azure-native-sdk/billing/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := billing.NewBillingRoleAssignmentByBillingAccount(ctx, "billingRoleAssignmentByBillingAccount", &billing.BillingRoleAssignmentByBillingAccountArgs{
/// 			BillingAccountName:        pulumi.String("7898901"),
/// 			BillingRoleAssignmentName: pulumi.String("9dfd08c2-62a3-4d47-85bd-1cdba1408402"),
/// 			Properties: &billing.BillingRoleAssignmentPropertiesArgs{
/// 				PrincipalId:       pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 				PrincipalTenantId: pulumi.String("076915e7-de10-4323-bb34-a58c904068bb"),
/// 				RoleDefinitionId:  pulumi.String("/providers/Microsoft.Billing/billingAccounts/7898901/billingRoleDefinitions/9f1983cb-2574-400c-87e9-34cf8e2280db"),
/// 				UserEmailAddress:  pulumi.String("john@contoso.com"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_billing_billingroleassignmentbybillingaccount" "billingRoleAssignmentByBillingAccount" {
///   billing_account_name         = "7898901"
///   billing_role_assignment_name = "9dfd08c2-62a3-4d47-85bd-1cdba1408402"
///   properties = {
///     principal_id        = "00000000-0000-0000-0000-000000000000"
///     principal_tenant_id = "076915e7-de10-4323-bb34-a58c904068bb"
///     role_definition_id  = "/providers/Microsoft.Billing/billingAccounts/7898901/billingRoleDefinitions/9f1983cb-2574-400c-87e9-34cf8e2280db"
///     user_email_address  = "john@contoso.com"
///   }
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
/// import com.pulumi.azurenative.billing.BillingRoleAssignmentByBillingAccount;
/// import com.pulumi.azurenative.billing.BillingRoleAssignmentByBillingAccountArgs;
/// import com.pulumi.azurenative.billing.inputs.BillingRoleAssignmentPropertiesArgs;
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
///         var billingRoleAssignmentByBillingAccount = new BillingRoleAssignmentByBillingAccount("billingRoleAssignmentByBillingAccount", BillingRoleAssignmentByBillingAccountArgs.builder()
///             .billingAccountName("7898901")
///             .billingRoleAssignmentName("9dfd08c2-62a3-4d47-85bd-1cdba1408402")
///             .properties(BillingRoleAssignmentPropertiesArgs.builder()
///                 .principalId("00000000-0000-0000-0000-000000000000")
///                 .principalTenantId("076915e7-de10-4323-bb34-a58c904068bb")
///                 .roleDefinitionId("/providers/Microsoft.Billing/billingAccounts/7898901/billingRoleDefinitions/9f1983cb-2574-400c-87e9-34cf8e2280db")
///                 .userEmailAddress("john@contoso.com")
///                 .build())
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
/// const billingRoleAssignmentByBillingAccount = new azure_native.billing.BillingRoleAssignmentByBillingAccount("billingRoleAssignmentByBillingAccount", {
///     billingAccountName: "7898901",
///     billingRoleAssignmentName: "9dfd08c2-62a3-4d47-85bd-1cdba1408402",
///     properties: {
///         principalId: "00000000-0000-0000-0000-000000000000",
///         principalTenantId: "076915e7-de10-4323-bb34-a58c904068bb",
///         roleDefinitionId: "/providers/Microsoft.Billing/billingAccounts/7898901/billingRoleDefinitions/9f1983cb-2574-400c-87e9-34cf8e2280db",
///         userEmailAddress: "john@contoso.com",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// billing_role_assignment_by_billing_account = azure_native.billing.BillingRoleAssignmentByBillingAccount("billingRoleAssignmentByBillingAccount",
///     billing_account_name="7898901",
///     billing_role_assignment_name="9dfd08c2-62a3-4d47-85bd-1cdba1408402",
///     properties={
///         "principal_id": "00000000-0000-0000-0000-000000000000",
///         "principal_tenant_id": "076915e7-de10-4323-bb34-a58c904068bb",
///         "role_definition_id": "/providers/Microsoft.Billing/billingAccounts/7898901/billingRoleDefinitions/9f1983cb-2574-400c-87e9-34cf8e2280db",
///         "user_email_address": "john@contoso.com",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   billingRoleAssignmentByBillingAccount:
///     type: azure-native:billing:BillingRoleAssignmentByBillingAccount
///     properties:
///       billingAccountName: '7898901'
///       billingRoleAssignmentName: 9dfd08c2-62a3-4d47-85bd-1cdba1408402
///       properties:
///         principalId: 00000000-0000-0000-0000-000000000000
///         principalTenantId: 076915e7-de10-4323-bb34-a58c904068bb
///         roleDefinitionId: /providers/Microsoft.Billing/billingAccounts/7898901/billingRoleDefinitions/9f1983cb-2574-400c-87e9-34cf8e2280db
///         userEmailAddress: john@contoso.com
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
/// $ pulumi import azure-native:billing:BillingRoleAssignmentByBillingAccount 9dfd08c2-62a3-4d47-85bd-1cdba1408402 /providers/Microsoft.Billing/billingAccounts/{billingAccountName}/billingRoleAssignments/{billingRoleAssignmentName}
/// ```
class BillingRoleAssignmentByBillingAccount extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The properties of the billing role assignment.
  late final pulumi.Output<BillingRoleAssignmentPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [BillingRoleAssignmentByBillingAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BillingRoleAssignmentByBillingAccount]. {@macro pulumi_billing_billing_role_assignment_by_billing_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BillingRoleAssignmentByBillingAccount(
    String name, {
    BillingRoleAssignmentByBillingAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:billing:BillingRoleAssignmentByBillingAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<BillingRoleAssignmentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BillingRoleAssignmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [BillingRoleAssignmentByBillingAccount] resource.
  BillingRoleAssignmentByBillingAccount.reference(String urn)
    : super(
        'azure-native:billing:BillingRoleAssignmentByBillingAccount',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<BillingRoleAssignmentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BillingRoleAssignmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
