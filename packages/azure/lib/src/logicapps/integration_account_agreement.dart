import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_agreement_args.dart';
import 'integration_account_agreement_guest_identity.dart';
import 'integration_account_agreement_host_identity.dart';

/// Manages a Logic App Integration Account Agreement.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const test = new azure.logicapps.IntegrationAccount("test", {
///     name: "example-ia",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Standard",
/// });
/// const host = new azure.logicapps.IntegrationAccountPartner("host", {
///     name: "example-hostpartner",
///     resourceGroupName: example.name,
///     integrationAccountName: test.name,
///     businessIdentities: [{
///         qualifier: "AS2Identity",
///         value: "FabrikamNY",
///     }],
/// });
/// const guest = new azure.logicapps.IntegrationAccountPartner("guest", {
///     name: "example-guestpartner",
///     resourceGroupName: example.name,
///     integrationAccountName: test.name,
///     businessIdentities: [{
///         qualifier: "AS2Identity",
///         value: "FabrikamDC",
///     }],
/// });
/// const testIntegrationAccountAgreement = new azure.logicapps.IntegrationAccountAgreement("test", {
///     name: "example-agreement",
///     resourceGroupName: example.name,
///     integrationAccountName: test.name,
///     agreementType: "AS2",
///     hostPartnerName: host.name,
///     guestPartnerName: guest.name,
///     content: std.file({
///         input: "testdata/integration_account_agreement_content_as2.json",
///     }).then(invoke => invoke.result),
///     hostIdentity: {
///         qualifier: "AS2Identity",
///         value: "FabrikamNY",
///     },
///     guestIdentity: {
///         qualifier: "AS2Identity",
///         value: "FabrikamDC",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// test = azure.logicapps.IntegrationAccount("test",
///     name="example-ia",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Standard")
/// host = azure.logicapps.IntegrationAccountPartner("host",
///     name="example-hostpartner",
///     resource_group_name=example.name,
///     integration_account_name=test.name,
///     business_identities=[{
///         "qualifier": "AS2Identity",
///         "value": "FabrikamNY",
///     }])
/// guest = azure.logicapps.IntegrationAccountPartner("guest",
///     name="example-guestpartner",
///     resource_group_name=example.name,
///     integration_account_name=test.name,
///     business_identities=[{
///         "qualifier": "AS2Identity",
///         "value": "FabrikamDC",
///     }])
/// test_integration_account_agreement = azure.logicapps.IntegrationAccountAgreement("test",
///     name="example-agreement",
///     resource_group_name=example.name,
///     integration_account_name=test.name,
///     agreement_type="AS2",
///     host_partner_name=host.name,
///     guest_partner_name=guest.name,
///     content=std.file(input="testdata/integration_account_agreement_content_as2.json").result,
///     host_identity={
///         "qualifier": "AS2Identity",
///         "value": "FabrikamNY",
///     },
///     guest_identity={
///         "qualifier": "AS2Identity",
///         "value": "FabrikamDC",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var test = new Azure.LogicApps.IntegrationAccount("test", new()
///     {
///         Name = "example-ia",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Standard",
///     });
///
///     var host = new Azure.LogicApps.IntegrationAccountPartner("host", new()
///     {
///         Name = "example-hostpartner",
///         ResourceGroupName = example.Name,
///         IntegrationAccountName = test.Name,
///         BusinessIdentities = new[]
///         {
///             new Azure.LogicApps.Inputs.IntegrationAccountPartnerBusinessIdentityArgs
///             {
///                 Qualifier = "AS2Identity",
///                 Value = "FabrikamNY",
///             },
///         },
///     });
///
///     var guest = new Azure.LogicApps.IntegrationAccountPartner("guest", new()
///     {
///         Name = "example-guestpartner",
///         ResourceGroupName = example.Name,
///         IntegrationAccountName = test.Name,
///         BusinessIdentities = new[]
///         {
///             new Azure.LogicApps.Inputs.IntegrationAccountPartnerBusinessIdentityArgs
///             {
///                 Qualifier = "AS2Identity",
///                 Value = "FabrikamDC",
///             },
///         },
///     });
///
///     var testIntegrationAccountAgreement = new Azure.LogicApps.IntegrationAccountAgreement("test", new()
///     {
///         Name = "example-agreement",
///         ResourceGroupName = example.Name,
///         IntegrationAccountName = test.Name,
///         AgreementType = "AS2",
///         HostPartnerName = host.Name,
///         GuestPartnerName = guest.Name,
///         Content = Std.File.Invoke(new()
///         {
///             Input = "testdata/integration_account_agreement_content_as2.json",
///         }).Apply(invoke => invoke.Result),
///         HostIdentity = new Azure.LogicApps.Inputs.IntegrationAccountAgreementHostIdentityArgs
///         {
///             Qualifier = "AS2Identity",
///             Value = "FabrikamNY",
///         },
///         GuestIdentity = new Azure.LogicApps.Inputs.IntegrationAccountAgreementGuestIdentityArgs
///         {
///             Qualifier = "AS2Identity",
///             Value = "FabrikamDC",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/logicapps"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := logicapps.NewIntegrationAccount(ctx, "test", &logicapps.IntegrationAccountArgs{
/// 			Name:              pulumi.String("example-ia"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		host, err := logicapps.NewIntegrationAccountPartner(ctx, "host", &logicapps.IntegrationAccountPartnerArgs{
/// 			Name:                   pulumi.String("example-hostpartner"),
/// 			ResourceGroupName:      example.Name,
/// 			IntegrationAccountName: test.Name,
/// 			BusinessIdentities: logicapps.IntegrationAccountPartnerBusinessIdentityArray{
/// 				&logicapps.IntegrationAccountPartnerBusinessIdentityArgs{
/// 					Qualifier: pulumi.String("AS2Identity"),
/// 					Value:     pulumi.String("FabrikamNY"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		guest, err := logicapps.NewIntegrationAccountPartner(ctx, "guest", &logicapps.IntegrationAccountPartnerArgs{
/// 			Name:                   pulumi.String("example-guestpartner"),
/// 			ResourceGroupName:      example.Name,
/// 			IntegrationAccountName: test.Name,
/// 			BusinessIdentities: logicapps.IntegrationAccountPartnerBusinessIdentityArray{
/// 				&logicapps.IntegrationAccountPartnerBusinessIdentityArgs{
/// 					Qualifier: pulumi.String("AS2Identity"),
/// 					Value:     pulumi.String("FabrikamDC"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "testdata/integration_account_agreement_content_as2.json",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logicapps.NewIntegrationAccountAgreement(ctx, "test", &logicapps.IntegrationAccountAgreementArgs{
/// 			Name:                   pulumi.String("example-agreement"),
/// 			ResourceGroupName:      example.Name,
/// 			IntegrationAccountName: test.Name,
/// 			AgreementType:          pulumi.String("AS2"),
/// 			HostPartnerName:        host.Name,
/// 			GuestPartnerName:       guest.Name,
/// 			Content:                pulumi.String(invokeFile.Result),
/// 			HostIdentity: &logicapps.IntegrationAccountAgreementHostIdentityArgs{
/// 				Qualifier: pulumi.String("AS2Identity"),
/// 				Value:     pulumi.String("FabrikamNY"),
/// 			},
/// 			GuestIdentity: &logicapps.IntegrationAccountAgreementGuestIdentityArgs{
/// 				Qualifier: pulumi.String("AS2Identity"),
/// 				Value:     pulumi.String("FabrikamDC"),
/// 			},
/// 		})
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.logicapps.IntegrationAccount;
/// import com.pulumi.azure.logicapps.IntegrationAccountArgs;
/// import com.pulumi.azure.logicapps.IntegrationAccountPartner;
/// import com.pulumi.azure.logicapps.IntegrationAccountPartnerArgs;
/// import com.pulumi.azure.logicapps.inputs.IntegrationAccountPartnerBusinessIdentityArgs;
/// import com.pulumi.azure.logicapps.IntegrationAccountAgreement;
/// import com.pulumi.azure.logicapps.IntegrationAccountAgreementArgs;
/// import com.pulumi.azure.logicapps.inputs.IntegrationAccountAgreementHostIdentityArgs;
/// import com.pulumi.azure.logicapps.inputs.IntegrationAccountAgreementGuestIdentityArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var test = new IntegrationAccount("test", IntegrationAccountArgs.builder()
///             .name("example-ia")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Standard")
///             .build());
///
///         var host = new IntegrationAccountPartner("host", IntegrationAccountPartnerArgs.builder()
///             .name("example-hostpartner")
///             .resourceGroupName(example.name())
///             .integrationAccountName(test.name())
///             .businessIdentities(IntegrationAccountPartnerBusinessIdentityArgs.builder()
///                 .qualifier("AS2Identity")
///                 .value("FabrikamNY")
///                 .build())
///             .build());
///
///         var guest = new IntegrationAccountPartner("guest", IntegrationAccountPartnerArgs.builder()
///             .name("example-guestpartner")
///             .resourceGroupName(example.name())
///             .integrationAccountName(test.name())
///             .businessIdentities(IntegrationAccountPartnerBusinessIdentityArgs.builder()
///                 .qualifier("AS2Identity")
///                 .value("FabrikamDC")
///                 .build())
///             .build());
///
///         var testIntegrationAccountAgreement = new IntegrationAccountAgreement("testIntegrationAccountAgreement", IntegrationAccountAgreementArgs.builder()
///             .name("example-agreement")
///             .resourceGroupName(example.name())
///             .integrationAccountName(test.name())
///             .agreementType("AS2")
///             .hostPartnerName(host.name())
///             .guestPartnerName(guest.name())
///             .content(StdFunctions.file(FileArgs.builder()
///                 .input("testdata/integration_account_agreement_content_as2.json")
///                 .build()).result())
///             .hostIdentity(IntegrationAccountAgreementHostIdentityArgs.builder()
///                 .qualifier("AS2Identity")
///                 .value("FabrikamNY")
///                 .build())
///             .guestIdentity(IntegrationAccountAgreementGuestIdentityArgs.builder()
///                 .qualifier("AS2Identity")
///                 .value("FabrikamDC")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   test:
///     type: azure:logicapps:IntegrationAccount
///     properties:
///       name: example-ia
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Standard
///   host:
///     type: azure:logicapps:IntegrationAccountPartner
///     properties:
///       name: example-hostpartner
///       resourceGroupName: ${example.name}
///       integrationAccountName: ${test.name}
///       businessIdentities:
///         - qualifier: AS2Identity
///           value: FabrikamNY
///   guest:
///     type: azure:logicapps:IntegrationAccountPartner
///     properties:
///       name: example-guestpartner
///       resourceGroupName: ${example.name}
///       integrationAccountName: ${test.name}
///       businessIdentities:
///         - qualifier: AS2Identity
///           value: FabrikamDC
///   testIntegrationAccountAgreement:
///     type: azure:logicapps:IntegrationAccountAgreement
///     name: test
///     properties:
///       name: example-agreement
///       resourceGroupName: ${example.name}
///       integrationAccountName: ${test.name}
///       agreementType: AS2
///       hostPartnerName: ${host.name}
///       guestPartnerName: ${guest.name}
///       content:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: testdata/integration_account_agreement_content_as2.json
///           return: result
///       hostIdentity:
///         qualifier: AS2Identity
///         value: FabrikamNY
///       guestIdentity:
///         qualifier: AS2Identity
///         value: FabrikamDC
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Logic` - 2019-05-01
///
/// ## Import
///
/// Logic App Integration Account Agreements can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:logicapps/integrationAccountAgreement:IntegrationAccountAgreement example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Logic/integrationAccounts/account1/agreements/agreement1
/// ```
class IntegrationAccountAgreement extends pulumi.CustomResource {
  /// The type of the Logic App Integration Account Agreement. Possible values are `AS2`, `X12` and `Edifact`.
  late final pulumi.Output<String> agreementType;
  /// The content of the Logic App Integration Account Agreement.
  late final pulumi.Output<String> content;
  /// A `guest_identity` block as documented below.
  late final pulumi.Output<IntegrationAccountAgreementGuestIdentity> guestIdentity;
  /// The name of the guest Logic App Integration Account Partner.
  late final pulumi.Output<String> guestPartnerName;
  /// A `host_identity` block as documented below.
  late final pulumi.Output<IntegrationAccountAgreementHostIdentity> hostIdentity;
  /// The name of the host Logic App Integration Account Partner.
  late final pulumi.Output<String> hostPartnerName;
  /// The name of the Logic App Integration Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> integrationAccountName;
  /// The metadata of the Logic App Integration Account Agreement.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The name which should be used for this Logic App Integration Account Agreement. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Logic App Integration Account Agreement should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [IntegrationAccountAgreement].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationAccountAgreement]. {@macro pulumi_logicapps_integration_account_agreement_integration_account_agreement_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationAccountAgreement(
    String name, {
    IntegrationAccountAgreementArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/integrationAccountAgreement:IntegrationAccountAgreement',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agreementType = registerOutput<String>('agreementType');
    this.content = registerOutput<String>('content');
    this.guestIdentity = registerOutput<IntegrationAccountAgreementGuestIdentity>('guestIdentity');
    this.guestPartnerName = registerOutput<String>('guestPartnerName');
    this.hostIdentity = registerOutput<IntegrationAccountAgreementHostIdentity>('hostIdentity');
    this.hostPartnerName = registerOutput<String>('hostPartnerName');
    this.integrationAccountName = registerOutput<String>('integrationAccountName');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
