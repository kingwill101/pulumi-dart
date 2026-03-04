import 'package:pulumi/pulumi.dart' as pulumi;
import 'trusted_id_provider_args.dart';

/// Data Lake Store trusted identity provider information.
///
/// Uses Azure REST API version 2016-11-01. In version 2.x of the Azure Native provider, it used API version 2016-11-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates the specified trusted identity provider. During update, the trusted identity provider with the specified name will be replaced with this new provider
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var trustedIdProvider = new AzureNative.DataLakeStore.TrustedIdProvider("trustedIdProvider", new()
///     {
///         AccountName = "contosoadla",
///         IdProvider = "https://sts.windows.net/ea9ec534-a3e3-4e45-ad36-3afc5bb291c1",
///         ResourceGroupName = "contosorg",
///         TrustedIdProviderName = "test_trusted_id_provider_name",
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
/// 	datalakestore "github.com/pulumi/pulumi-azure-native-sdk/datalakestore/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datalakestore.NewTrustedIdProvider(ctx, "trustedIdProvider", &datalakestore.TrustedIdProviderArgs{
/// 			AccountName:           pulumi.String("contosoadla"),
/// 			IdProvider:            pulumi.String("https://sts.windows.net/ea9ec534-a3e3-4e45-ad36-3afc5bb291c1"),
/// 			ResourceGroupName:     pulumi.String("contosorg"),
/// 			TrustedIdProviderName: pulumi.String("test_trusted_id_provider_name"),
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
/// import com.pulumi.azurenative.datalakestore.TrustedIdProvider;
/// import com.pulumi.azurenative.datalakestore.TrustedIdProviderArgs;
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
///         var trustedIdProvider = new TrustedIdProvider("trustedIdProvider", TrustedIdProviderArgs.builder()
///             .accountName("contosoadla")
///             .idProvider("https://sts.windows.net/ea9ec534-a3e3-4e45-ad36-3afc5bb291c1")
///             .resourceGroupName("contosorg")
///             .trustedIdProviderName("test_trusted_id_provider_name")
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
/// const trustedIdProvider = new azure_native.datalakestore.TrustedIdProvider("trustedIdProvider", {
///     accountName: "contosoadla",
///     idProvider: "https://sts.windows.net/ea9ec534-a3e3-4e45-ad36-3afc5bb291c1",
///     resourceGroupName: "contosorg",
///     trustedIdProviderName: "test_trusted_id_provider_name",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// trusted_id_provider = azure_native.datalakestore.TrustedIdProvider("trustedIdProvider",
///     account_name="contosoadla",
///     id_provider="https://sts.windows.net/ea9ec534-a3e3-4e45-ad36-3afc5bb291c1",
///     resource_group_name="contosorg",
///     trusted_id_provider_name="test_trusted_id_provider_name")
///
/// ```
///
/// ```yaml
/// resources:
///   trustedIdProvider:
///     type: azure-native:datalakestore:TrustedIdProvider
///     properties:
///       accountName: contosoadla
///       idProvider: https://sts.windows.net/ea9ec534-a3e3-4e45-ad36-3afc5bb291c1
///       resourceGroupName: contosorg
///       trustedIdProviderName: test_trusted_id_provider_name
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
/// $ pulumi import azure-native:datalakestore:TrustedIdProvider test_trusted_id_provider_name /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeStore/accounts/{accountName}/trustedIdProviders/{trustedIdProviderName}
/// ```
class TrustedIdProvider extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The URL of this trusted identity provider.
  late final pulumi.Output<String> idProvider;

  /// The resource name.
  late final pulumi.Output<String> name;

  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [TrustedIdProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrustedIdProvider]. {@macro pulumi_datalakestore_trusted_id_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrustedIdProvider(
    String name, {
    TrustedIdProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:datalakestore:TrustedIdProvider',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    idProvider = registerOutput<String>('idProvider');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
