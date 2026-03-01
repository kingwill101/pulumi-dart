import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vault_args.dart';
import 'get_vault_result.dart';

/// Use this data source to access information about an existing Recovery Services Vault.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const vault = azure.recoveryservices.getVault({
///     name: "tfex-recovery_vault",
///     resourceGroupName: "tfex-resource_group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// vault = azure.recoveryservices.get_vault(name="tfex-recovery_vault",
///     resource_group_name="tfex-resource_group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vault = Azure.RecoveryServices.GetVault.Invoke(new()
///     {
///         Name = "tfex-recovery_vault",
///         ResourceGroupName = "tfex-resource_group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/recoveryservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.LookupVault(ctx, &recoveryservices.LookupVaultArgs{
/// 			Name:              "tfex-recovery_vault",
/// 			ResourceGroupName: "tfex-resource_group",
/// 		}, nil)
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
/// import com.pulumi.azure.recoveryservices.RecoveryservicesFunctions;
/// import com.pulumi.azure.recoveryservices.inputs.GetVaultArgs;
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
///         final var vault = RecoveryservicesFunctions.getVault(GetVaultArgs.builder()
///             .name("tfex-recovery_vault")
///             .resourceGroupName("tfex-resource_group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   vault:
///     fn::invoke:
///       function: azure:recoveryservices:getVault
///       arguments:
///         name: tfex-recovery_vault
///         resourceGroupName: tfex-resource_group
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.RecoveryServices` - 2024-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_vault_get_vault_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVaultResult> getVault(
  GetVaultArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:recoveryservices/getVault:getVault',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVaultResult.fromMap(result);
}
