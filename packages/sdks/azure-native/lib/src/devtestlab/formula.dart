import 'package:pulumi/pulumi.dart' as pulumi;
import 'formula_args.dart';
import 'formula_properties_from_vm_response.dart';
import 'lab_virtual_machine_creation_parameter_response.dart';
import 'system_data_response.dart';

/// A formula for creating a VM, specifying an image base and other parameters
///
/// Uses Azure REST API version 2018-09-15. In version 2.x of the Azure Native provider, it used API version 2018-09-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Formulas_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var formula = new AzureNative.DevTestLab.Formula("formula", new()
///     {
///         Description = "Formula using a Linux base",
///         FormulaContent = new AzureNative.DevTestLab.Inputs.LabVirtualMachineCreationParameterArgs
///         {
///             AllowClaim = false,
///             Artifacts = new[]
///             {
///                 new AzureNative.DevTestLab.Inputs.ArtifactInstallPropertiesArgs
///                 {
///                     ArtifactId = "/artifactsources/{artifactSourceName}/artifacts/linux-install-nodejs",
///                     Parameters = new() { },
///                 },
///             },
///             DisallowPublicIpAddress = true,
///             GalleryImageReference = new AzureNative.DevTestLab.Inputs.GalleryImageReferenceArgs
///             {
///                 Offer = "0001-com-ubuntu-server-groovy",
///                 OsType = "Linux",
///                 Publisher = "canonical",
///                 Sku = "20_10",
///                 Version = "latest",
///             },
///             IsAuthenticationWithSshKey = false,
///             LabSubnetName = "Dtl{labName}Subnet",
///             LabVirtualNetworkId = "/virtualnetworks/dtl{labName}",
///             Location = "{location}",
///             NetworkInterface = new AzureNative.DevTestLab.Inputs.NetworkInterfacePropertiesArgs
///             {
///                 SharedPublicIpAddressConfiguration = new AzureNative.DevTestLab.Inputs.SharedPublicIpAddressConfigurationArgs
///                 {
///                     InboundNatRules = new[]
///                     {
///                         new AzureNative.DevTestLab.Inputs.InboundNatRuleArgs
///                         {
///                             BackendPort = 22,
///                             TransportProtocol = AzureNative.DevTestLab.TransportProtocol.Tcp,
///                         },
///                     },
///                 },
///             },
///             Notes = "Ubuntu Server 20.10",
///             Size = "Standard_B1ms",
///             StorageType = "Standard",
///             UserName = "user",
///         },
///         LabName = "{labName}",
///         Location = "{location}",
///         Name = "{formulaName}",
///         ResourceGroupName = "resourceGroupName",
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
/// 	devtestlab "github.com/pulumi/pulumi-azure-native-sdk/devtestlab/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devtestlab.NewFormula(ctx, "formula", &devtestlab.FormulaArgs{
/// 			Description: pulumi.String("Formula using a Linux base"),
/// 			FormulaContent: &devtestlab.LabVirtualMachineCreationParameterArgs{
/// 				AllowClaim: pulumi.Bool(false),
/// 				Artifacts: devtestlab.ArtifactInstallPropertiesArray{
/// 					&devtestlab.ArtifactInstallPropertiesArgs{
/// 						ArtifactId: pulumi.String("/artifactsources/{artifactSourceName}/artifacts/linux-install-nodejs"),
/// 						Parameters: devtestlab.ArtifactParameterPropertiesArray{},
/// 					},
/// 				},
/// 				DisallowPublicIpAddress: pulumi.Bool(true),
/// 				GalleryImageReference: &devtestlab.GalleryImageReferenceArgs{
/// 					Offer:     pulumi.String("0001-com-ubuntu-server-groovy"),
/// 					OsType:    pulumi.String("Linux"),
/// 					Publisher: pulumi.String("canonical"),
/// 					Sku:       pulumi.String("20_10"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				IsAuthenticationWithSshKey: pulumi.Bool(false),
/// 				LabSubnetName:              pulumi.String("Dtl{labName}Subnet"),
/// 				LabVirtualNetworkId:        pulumi.String("/virtualnetworks/dtl{labName}"),
/// 				Location:                   pulumi.String("{location}"),
/// 				NetworkInterface: &devtestlab.NetworkInterfacePropertiesArgs{
/// 					SharedPublicIpAddressConfiguration: &devtestlab.SharedPublicIpAddressConfigurationArgs{
/// 						InboundNatRules: devtestlab.InboundNatRuleArray{
/// 							&devtestlab.InboundNatRuleArgs{
/// 								BackendPort:       pulumi.Int(22),
/// 								TransportProtocol: pulumi.String(devtestlab.TransportProtocolTcp),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Notes:       pulumi.String("Ubuntu Server 20.10"),
/// 				Size:        pulumi.String("Standard_B1ms"),
/// 				StorageType: pulumi.String("Standard"),
/// 				UserName:    pulumi.String("user"),
/// 			},
/// 			LabName:           pulumi.String("{labName}"),
/// 			Location:          pulumi.String("{location}"),
/// 			Name:              pulumi.String("{formulaName}"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
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
/// resource "azure-native_devtestlab_formula" "formula" {
///   description = "Formula using a Linux base"
///   formula_content = {
///     allow_claim = false
///     artifacts = [{
///       "artifactId" = "/artifactsources/{artifactSourceName}/artifacts/linux-install-nodejs"
///       "parameters" = []
///     }]
///     disallow_public_ip_address = true
///     gallery_image_reference = {
///       offer     = "0001-com-ubuntu-server-groovy"
///       os_type   = "Linux"
///       publisher = "canonical"
///       sku       = "20_10"
///       version   = "latest"
///     }
///     is_authentication_with_ssh_key = false
///     lab_subnet_name                = "Dtl{labName}Subnet"
///     lab_virtual_network_id         = "/virtualnetworks/dtl{labName}"
///     location                       = "{location}"
///     network_interface = {
///       shared_public_ip_address_configuration = {
///         inbound_nat_rules = [{
///           "backendPort"       = 22
///           "transportProtocol" = "Tcp"
///         }]
///       }
///     }
///     notes        = "Ubuntu Server 20.10"
///     size         = "Standard_B1ms"
///     storage_type = "Standard"
///     user_name    = "user"
///   }
///   lab_name            = "{labName}"
///   location            = "{location}"
///   name                = "{formulaName}"
///   resource_group_name = "resourceGroupName"
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
/// import com.pulumi.azurenative.devtestlab.Formula;
/// import com.pulumi.azurenative.devtestlab.FormulaArgs;
/// import com.pulumi.azurenative.devtestlab.inputs.LabVirtualMachineCreationParameterArgs;
/// import com.pulumi.azurenative.devtestlab.inputs.GalleryImageReferenceArgs;
/// import com.pulumi.azurenative.devtestlab.inputs.NetworkInterfacePropertiesArgs;
/// import com.pulumi.azurenative.devtestlab.inputs.SharedPublicIpAddressConfigurationArgs;
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
///         var formula = new Formula("formula", FormulaArgs.builder()
///             .description("Formula using a Linux base")
///             .formulaContent(LabVirtualMachineCreationParameterArgs.builder()
///                 .allowClaim(false)
///                 .artifacts(ArtifactInstallPropertiesArgs.builder()
///                     .artifactId("/artifactsources/{artifactSourceName}/artifacts/linux-install-nodejs")
///                     .parameters()
///                     .build())
///                 .disallowPublicIpAddress(true)
///                 .galleryImageReference(GalleryImageReferenceArgs.builder()
///                     .offer("0001-com-ubuntu-server-groovy")
///                     .osType("Linux")
///                     .publisher("canonical")
///                     .sku("20_10")
///                     .version("latest")
///                     .build())
///                 .isAuthenticationWithSshKey(false)
///                 .labSubnetName("Dtl{labName}Subnet")
///                 .labVirtualNetworkId("/virtualnetworks/dtl{labName}")
///                 .location("{location}")
///                 .networkInterface(NetworkInterfacePropertiesArgs.builder()
///                     .sharedPublicIpAddressConfiguration(SharedPublicIpAddressConfigurationArgs.builder()
///                         .inboundNatRules(InboundNatRuleArgs.builder()
///                             .backendPort(22)
///                             .transportProtocol("Tcp")
///                             .build())
///                         .build())
///                     .build())
///                 .notes("Ubuntu Server 20.10")
///                 .size("Standard_B1ms")
///                 .storageType("Standard")
///                 .userName("user")
///                 .build())
///             .labName("{labName}")
///             .location("{location}")
///             .name("{formulaName}")
///             .resourceGroupName("resourceGroupName")
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
/// const formula = new azure_native.devtestlab.Formula("formula", {
///     description: "Formula using a Linux base",
///     formulaContent: {
///         allowClaim: false,
///         artifacts: [{
///             artifactId: "/artifactsources/{artifactSourceName}/artifacts/linux-install-nodejs",
///             parameters: [],
///         }],
///         disallowPublicIpAddress: true,
///         galleryImageReference: {
///             offer: "0001-com-ubuntu-server-groovy",
///             osType: "Linux",
///             publisher: "canonical",
///             sku: "20_10",
///             version: "latest",
///         },
///         isAuthenticationWithSshKey: false,
///         labSubnetName: "Dtl{labName}Subnet",
///         labVirtualNetworkId: "/virtualnetworks/dtl{labName}",
///         location: "{location}",
///         networkInterface: {
///             sharedPublicIpAddressConfiguration: {
///                 inboundNatRules: [{
///                     backendPort: 22,
///                     transportProtocol: azure_native.devtestlab.TransportProtocol.Tcp,
///                 }],
///             },
///         },
///         notes: "Ubuntu Server 20.10",
///         size: "Standard_B1ms",
///         storageType: "Standard",
///         userName: "user",
///     },
///     labName: "{labName}",
///     location: "{location}",
///     name: "{formulaName}",
///     resourceGroupName: "resourceGroupName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// formula = azure_native.devtestlab.Formula("formula",
///     description="Formula using a Linux base",
///     formula_content={
///         "allow_claim": False,
///         "artifacts": [{
///             "artifact_id": "/artifactsources/{artifactSourceName}/artifacts/linux-install-nodejs",
///             "parameters": [],
///         }],
///         "disallow_public_ip_address": True,
///         "gallery_image_reference": {
///             "offer": "0001-com-ubuntu-server-groovy",
///             "os_type": "Linux",
///             "publisher": "canonical",
///             "sku": "20_10",
///             "version": "latest",
///         },
///         "is_authentication_with_ssh_key": False,
///         "lab_subnet_name": "Dtl{labName}Subnet",
///         "lab_virtual_network_id": "/virtualnetworks/dtl{labName}",
///         "location": "{location}",
///         "network_interface": {
///             "shared_public_ip_address_configuration": {
///                 "inbound_nat_rules": [{
///                     "backend_port": 22,
///                     "transport_protocol": azure_native.devtestlab.TransportProtocol.TCP,
///                 }],
///             },
///         },
///         "notes": "Ubuntu Server 20.10",
///         "size": "Standard_B1ms",
///         "storage_type": "Standard",
///         "user_name": "user",
///     },
///     lab_name="{labName}",
///     location="{location}",
///     name="{formulaName}",
///     resource_group_name="resourceGroupName")
///
/// ```
///
/// ```yaml
/// resources:
///   formula:
///     type: azure-native:devtestlab:Formula
///     properties:
///       description: Formula using a Linux base
///       formulaContent:
///         allowClaim: false
///         artifacts:
///           - artifactId: /artifactsources/{artifactSourceName}/artifacts/linux-install-nodejs
///             parameters: []
///         disallowPublicIpAddress: true
///         galleryImageReference:
///           offer: 0001-com-ubuntu-server-groovy
///           osType: Linux
///           publisher: canonical
///           sku: '20_10'
///           version: latest
///         isAuthenticationWithSshKey: false
///         labSubnetName: Dtl{labName}Subnet
///         labVirtualNetworkId: /virtualnetworks/dtl{labName}
///         location: '{location}'
///         networkInterface:
///           sharedPublicIpAddressConfiguration:
///             inboundNatRules:
///               - backendPort: 22
///                 transportProtocol: Tcp
///         notes: Ubuntu Server 20.10
///         size: Standard_B1ms
///         storageType: Standard
///         userName: user
///       labName: '{labName}'
///       location: '{location}'
///       name: '{formulaName}'
///       resourceGroupName: resourceGroupName
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
/// $ pulumi import azure-native:devtestlab:Formula {formulaName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/formulas/{name}
/// ```
class Formula extends pulumi.CustomResource {
  /// The author of the formula.
  late final pulumi.Output<String> author;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The creation date of the formula.
  late final pulumi.Output<String> creationDate;
  /// The description of the formula.
  late final pulumi.Output<String?> description;
  /// The content of the formula.
  late final pulumi.Output<LabVirtualMachineCreationParameterResponse?> formulaContent;
  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The OS type of the formula.
  late final pulumi.Output<String?> osType;
  /// The provisioning status of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The unique immutable identifier of a resource (Guid).
  late final pulumi.Output<String> uniqueIdentifier;
  /// Information about a VM from which a formula is to be created.
  late final pulumi.Output<FormulaPropertiesFromVmResponse?> vm;

  /// Creates a new [Formula].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Formula]. {@macro pulumi_devtestlab_formula_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Formula(
    String name, {
    FormulaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devtestlab:Formula',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    author = registerOutput<String>('author');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationDate = registerOutput<String>('creationDate');
    description = registerOutput<String?>('description');
    formulaContent = registerOutput<LabVirtualMachineCreationParameterResponse?>('formulaContent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabVirtualMachineCreationParameterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    osType = registerOutput<String?>('osType');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
    vm = registerOutput<FormulaPropertiesFromVmResponse?>('vm', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FormulaPropertiesFromVmResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Formula] resource.
  Formula.reference(String urn)
    : super(
        'azure-native:devtestlab:Formula',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    author = registerOutput<String>('author');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationDate = registerOutput<String>('creationDate');
    description = registerOutput<String?>('description');
    formulaContent = registerOutput<LabVirtualMachineCreationParameterResponse?>('formulaContent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabVirtualMachineCreationParameterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    osType = registerOutput<String?>('osType');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
    vm = registerOutput<FormulaPropertiesFromVmResponse?>('vm', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FormulaPropertiesFromVmResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
