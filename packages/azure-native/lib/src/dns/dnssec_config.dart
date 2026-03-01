import 'package:pulumi/pulumi.dart' as pulumi;
import 'dnssec_config_args.dart';
import 'signing_key_response.dart';
import 'system_data_response.dart';

/// Represents the DNSSEC configuration.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create DnssecConfig
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dnssecConfig = new AzureNative.Dns.DnssecConfig("dnssecConfig", new()
///     {
///         ResourceGroupName = "rg1",
///         ZoneName = "zone1",
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
/// 	dns "github.com/pulumi/pulumi-azure-native-sdk/dns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewDnssecConfig(ctx, "dnssecConfig", &dns.DnssecConfigArgs{
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ZoneName:          pulumi.String("zone1"),
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
/// import com.pulumi.azurenative.dns.DnssecConfig;
/// import com.pulumi.azurenative.dns.DnssecConfigArgs;
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
///         var dnssecConfig = new DnssecConfig("dnssecConfig", DnssecConfigArgs.builder()
///             .resourceGroupName("rg1")
///             .zoneName("zone1")
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
/// const dnssecConfig = new azure_native.dns.DnssecConfig("dnssecConfig", {
///     resourceGroupName: "rg1",
///     zoneName: "zone1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dnssec_config = azure_native.dns.DnssecConfig("dnssecConfig",
///     resource_group_name="rg1",
///     zone_name="zone1")
///
/// ```
///
/// ```yaml
/// resources:
///   dnssecConfig:
///     type: azure-native:dns:DnssecConfig
///     properties:
///       resourceGroupName: rg1
///       zoneName: zone1
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
/// $ pulumi import azure-native:dns:DnssecConfig default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dnsZones/{zoneName}/dnssecConfigs/default
/// ```
class DnssecConfig extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The etag of the DNSSEC configuration.
  late final pulumi.Output<String?> etag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning State of the DNSSEC configuration.
  late final pulumi.Output<String> provisioningState;
  /// The list of signing keys.
  late final pulumi.Output<List<SigningKeyResponse>> signingKeys;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DnssecConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnssecConfig]. {@macro pulumi_dns_dnssec_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnssecConfig(
    String name, {
    DnssecConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dns:DnssecConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.signingKeys = registerOutput<List<SigningKeyResponse>>('signingKeys');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
