import 'package:pulumi/pulumi.dart' as pulumi;
import 'single_server_server_security_alert_policy_args.dart';

/// A server security alert policy.
///
/// Uses Azure REST API version 2017-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update a server's threat detection policy with all parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var singleServerServerSecurityAlertPolicy = new AzureNative.DBforPostgreSQL.SingleServerServerSecurityAlertPolicy("singleServerServerSecurityAlertPolicy", new()
///     {
///         DisabledAlerts = new[]
///         {
///             "Access_Anomaly",
///             "Usage_Anomaly",
///         },
///         EmailAccountAdmins = true,
///         EmailAddresses = new[]
///         {
///             "testSecurityAlert@microsoft.com",
///         },
///         ResourceGroupName = "securityalert-4799",
///         RetentionDays = 5,
///         SecurityAlertPolicyName = "Default",
///         ServerName = "securityalert-6440",
///         State = AzureNative.DBforPostgreSQL.ServerSecurityAlertPolicyState.Enabled,
///         StorageAccountAccessKey = "sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==",
///         StorageEndpoint = "https://mystorage.blob.core.windows.net",
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewSingleServerServerSecurityAlertPolicy(ctx, "singleServerServerSecurityAlertPolicy", &dbforpostgresql.SingleServerServerSecurityAlertPolicyArgs{
/// 			DisabledAlerts: pulumi.StringArray{
/// 				pulumi.String("Access_Anomaly"),
/// 				pulumi.String("Usage_Anomaly"),
/// 			},
/// 			EmailAccountAdmins: pulumi.Bool(true),
/// 			EmailAddresses: pulumi.StringArray{
/// 				pulumi.String("testSecurityAlert@microsoft.com"),
/// 			},
/// 			ResourceGroupName:       pulumi.String("securityalert-4799"),
/// 			RetentionDays:           pulumi.Int(5),
/// 			SecurityAlertPolicyName: pulumi.String("Default"),
/// 			ServerName:              pulumi.String("securityalert-6440"),
/// 			State:                   dbforpostgresql.ServerSecurityAlertPolicyStateEnabled,
/// 			StorageAccountAccessKey: pulumi.String("sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD=="),
/// 			StorageEndpoint:         pulumi.String("https://mystorage.blob.core.windows.net"),
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
/// resource "azure-native_dbforpostgresql_singleserverserversecurityalertpolicy" "singleServerServerSecurityAlertPolicy" {
///   disabled_alerts            = ["Access_Anomaly", "Usage_Anomaly"]
///   email_account_admins       = true
///   email_addresses            = ["testSecurityAlert@microsoft.com"]
///   resource_group_name        = "securityalert-4799"
///   retention_days             = 5
///   security_alert_policy_name = "Default"
///   server_name                = "securityalert-6440"
///   state                      = "Enabled"
///   storage_account_access_key = "sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD=="
///   storage_endpoint           = "https://mystorage.blob.core.windows.net"
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
/// import com.pulumi.azurenative.dbforpostgresql.SingleServerServerSecurityAlertPolicy;
/// import com.pulumi.azurenative.dbforpostgresql.SingleServerServerSecurityAlertPolicyArgs;
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
///         var singleServerServerSecurityAlertPolicy = new SingleServerServerSecurityAlertPolicy("singleServerServerSecurityAlertPolicy", SingleServerServerSecurityAlertPolicyArgs.builder()
///             .disabledAlerts(
///                 "Access_Anomaly",
///                 "Usage_Anomaly")
///             .emailAccountAdmins(true)
///             .emailAddresses("testSecurityAlert@microsoft.com")
///             .resourceGroupName("securityalert-4799")
///             .retentionDays(5)
///             .securityAlertPolicyName("Default")
///             .serverName("securityalert-6440")
///             .state("Enabled")
///             .storageAccountAccessKey("sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==")
///             .storageEndpoint("https://mystorage.blob.core.windows.net")
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
/// const singleServerServerSecurityAlertPolicy = new azure_native.dbforpostgresql.SingleServerServerSecurityAlertPolicy("singleServerServerSecurityAlertPolicy", {
///     disabledAlerts: [
///         "Access_Anomaly",
///         "Usage_Anomaly",
///     ],
///     emailAccountAdmins: true,
///     emailAddresses: ["testSecurityAlert@microsoft.com"],
///     resourceGroupName: "securityalert-4799",
///     retentionDays: 5,
///     securityAlertPolicyName: "Default",
///     serverName: "securityalert-6440",
///     state: azure_native.dbforpostgresql.ServerSecurityAlertPolicyState.Enabled,
///     storageAccountAccessKey: "sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==",
///     storageEndpoint: "https://mystorage.blob.core.windows.net",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// single_server_server_security_alert_policy = azure_native.dbforpostgresql.SingleServerServerSecurityAlertPolicy("singleServerServerSecurityAlertPolicy",
///     disabled_alerts=[
///         "Access_Anomaly",
///         "Usage_Anomaly",
///     ],
///     email_account_admins=True,
///     email_addresses=["testSecurityAlert@microsoft.com"],
///     resource_group_name="securityalert-4799",
///     retention_days=5,
///     security_alert_policy_name="Default",
///     server_name="securityalert-6440",
///     state=azure_native.dbforpostgresql.ServerSecurityAlertPolicyState.ENABLED,
///     storage_account_access_key="sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==",
///     storage_endpoint="https://mystorage.blob.core.windows.net")
///
/// ```
///
/// ```yaml
/// resources:
///   singleServerServerSecurityAlertPolicy:
///     type: azure-native:dbforpostgresql:SingleServerServerSecurityAlertPolicy
///     properties:
///       disabledAlerts:
///         - Access_Anomaly
///         - Usage_Anomaly
///       emailAccountAdmins: true
///       emailAddresses:
///         - testSecurityAlert@microsoft.com
///       resourceGroupName: securityalert-4799
///       retentionDays: 5
///       securityAlertPolicyName: Default
///       serverName: securityalert-6440
///       state: Enabled
///       storageAccountAccessKey: sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==
///       storageEndpoint: https://mystorage.blob.core.windows.net
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update a server's threat detection policy with minimal parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var singleServerServerSecurityAlertPolicy = new AzureNative.DBforPostgreSQL.SingleServerServerSecurityAlertPolicy("singleServerServerSecurityAlertPolicy", new()
///     {
///         EmailAccountAdmins = true,
///         ResourceGroupName = "securityalert-4799",
///         SecurityAlertPolicyName = "Default",
///         ServerName = "securityalert-6440",
///         State = AzureNative.DBforPostgreSQL.ServerSecurityAlertPolicyState.Disabled,
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewSingleServerServerSecurityAlertPolicy(ctx, "singleServerServerSecurityAlertPolicy", &dbforpostgresql.SingleServerServerSecurityAlertPolicyArgs{
/// 			EmailAccountAdmins:      pulumi.Bool(true),
/// 			ResourceGroupName:       pulumi.String("securityalert-4799"),
/// 			SecurityAlertPolicyName: pulumi.String("Default"),
/// 			ServerName:              pulumi.String("securityalert-6440"),
/// 			State:                   dbforpostgresql.ServerSecurityAlertPolicyStateDisabled,
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
/// resource "azure-native_dbforpostgresql_singleserverserversecurityalertpolicy" "singleServerServerSecurityAlertPolicy" {
///   email_account_admins       = true
///   resource_group_name        = "securityalert-4799"
///   security_alert_policy_name = "Default"
///   server_name                = "securityalert-6440"
///   state                      = "Disabled"
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
/// import com.pulumi.azurenative.dbforpostgresql.SingleServerServerSecurityAlertPolicy;
/// import com.pulumi.azurenative.dbforpostgresql.SingleServerServerSecurityAlertPolicyArgs;
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
///         var singleServerServerSecurityAlertPolicy = new SingleServerServerSecurityAlertPolicy("singleServerServerSecurityAlertPolicy", SingleServerServerSecurityAlertPolicyArgs.builder()
///             .emailAccountAdmins(true)
///             .resourceGroupName("securityalert-4799")
///             .securityAlertPolicyName("Default")
///             .serverName("securityalert-6440")
///             .state("Disabled")
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
/// const singleServerServerSecurityAlertPolicy = new azure_native.dbforpostgresql.SingleServerServerSecurityAlertPolicy("singleServerServerSecurityAlertPolicy", {
///     emailAccountAdmins: true,
///     resourceGroupName: "securityalert-4799",
///     securityAlertPolicyName: "Default",
///     serverName: "securityalert-6440",
///     state: azure_native.dbforpostgresql.ServerSecurityAlertPolicyState.Disabled,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// single_server_server_security_alert_policy = azure_native.dbforpostgresql.SingleServerServerSecurityAlertPolicy("singleServerServerSecurityAlertPolicy",
///     email_account_admins=True,
///     resource_group_name="securityalert-4799",
///     security_alert_policy_name="Default",
///     server_name="securityalert-6440",
///     state=azure_native.dbforpostgresql.ServerSecurityAlertPolicyState.DISABLED)
///
/// ```
///
/// ```yaml
/// resources:
///   singleServerServerSecurityAlertPolicy:
///     type: azure-native:dbforpostgresql:SingleServerServerSecurityAlertPolicy
///     properties:
///       emailAccountAdmins: true
///       resourceGroupName: securityalert-4799
///       securityAlertPolicyName: Default
///       serverName: securityalert-6440
///       state: Disabled
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
/// $ pulumi import azure-native:dbforpostgresql:SingleServerServerSecurityAlertPolicy Default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/servers/{serverName}/securityAlertPolicies/{securityAlertPolicyName}
/// ```
class SingleServerServerSecurityAlertPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Specifies an array of alerts that are disabled. Allowed values are: Sql_Injection, Sql_Injection_Vulnerability, Access_Anomaly
  late final pulumi.Output<List<String>?> disabledAlerts;
  /// Specifies that the alert is sent to the account administrators.
  late final pulumi.Output<bool?> emailAccountAdmins;
  /// Specifies an array of e-mail addresses to which the alert is sent.
  late final pulumi.Output<List<String>?> emailAddresses;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Specifies the number of days to keep in the Threat Detection audit logs.
  late final pulumi.Output<int?> retentionDays;
  /// Specifies the state of the policy, whether it is enabled or disabled.
  late final pulumi.Output<String> state;
  /// Specifies the identifier key of the Threat Detection audit storage account.
  late final pulumi.Output<String?> storageAccountAccessKey;
  /// Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs.
  late final pulumi.Output<String?> storageEndpoint;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SingleServerServerSecurityAlertPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SingleServerServerSecurityAlertPolicy]. {@macro pulumi_dbforpostgresql_single_server_server_security_alert_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SingleServerServerSecurityAlertPolicy(
    String name, {
    SingleServerServerSecurityAlertPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbforpostgresql:SingleServerServerSecurityAlertPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    disabledAlerts = registerOutput<List<String>?>('disabledAlerts');
    emailAccountAdmins = registerOutput<bool?>('emailAccountAdmins');
    emailAddresses = registerOutput<List<String>?>('emailAddresses');
    this.name = registerOutput<String>('name');
    retentionDays = registerOutput<int?>('retentionDays');
    state = registerOutput<String>('state');
    storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey');
    storageEndpoint = registerOutput<String?>('storageEndpoint');
    type = registerOutput<String>('type');
  }
}
