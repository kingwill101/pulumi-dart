import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_properties_verification_records_response.dart';
import 'domain_properties_verification_states_response.dart';
import 'system_data_response.dart';

/// A class representing a Domains resource.
///
/// Uses Azure REST API version 2026-03-18. In version 2.x of the Azure Native provider, it used API version 2023-03-31.
///
/// Other available API versions: 2023-03-31, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2024-09-01-preview, 2025-05-01, 2025-05-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native communication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// Note: If `domainManagement` is set to `AzureManaged`, then `domainName` is required.
///
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update Domains resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var domain = new AzureNative.Communication.Domain("domain", new()
///     {
///         DomainManagement = AzureNative.Communication.DomainManagement.CustomerManaged,
///         DomainName = "mydomain.com",
///         EmailServiceName = "MyEmailServiceResource",
///         Location = "Global",
///         ResourceGroupName = "MyResourceGroup",
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
/// 	communication "github.com/pulumi/pulumi-azure-native-sdk/communication/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := communication.NewDomain(ctx, "domain", &communication.DomainArgs{
/// 			DomainManagement:  pulumi.String(communication.DomainManagementCustomerManaged),
/// 			DomainName:        pulumi.String("mydomain.com"),
/// 			EmailServiceName:  pulumi.String("MyEmailServiceResource"),
/// 			Location:          pulumi.String("Global"),
/// 			ResourceGroupName: pulumi.String("MyResourceGroup"),
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
/// resource "azure-native_communication_domain" "domain" {
///   domain_management   = "CustomerManaged"
///   domain_name         = "mydomain.com"
///   email_service_name  = "MyEmailServiceResource"
///   location            = "Global"
///   resource_group_name = "MyResourceGroup"
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
/// import com.pulumi.azurenative.communication.Domain;
/// import com.pulumi.azurenative.communication.DomainArgs;
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
///         var domain = new Domain("domain", DomainArgs.builder()
///             .domainManagement("CustomerManaged")
///             .domainName("mydomain.com")
///             .emailServiceName("MyEmailServiceResource")
///             .location("Global")
///             .resourceGroupName("MyResourceGroup")
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
/// const domain = new azure_native.communication.Domain("domain", {
///     domainManagement: azure_native.communication.DomainManagement.CustomerManaged,
///     domainName: "mydomain.com",
///     emailServiceName: "MyEmailServiceResource",
///     location: "Global",
///     resourceGroupName: "MyResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// domain = azure_native.communication.Domain("domain",
///     domain_management=azure_native.communication.DomainManagement.CUSTOMER_MANAGED,
///     domain_name="mydomain.com",
///     email_service_name="MyEmailServiceResource",
///     location="Global",
///     resource_group_name="MyResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   domain:
///     type: azure-native:communication:Domain
///     properties:
///       domainManagement: CustomerManaged
///       domainName: mydomain.com
///       emailServiceName: MyEmailServiceResource
///       location: Global
///       resourceGroupName: MyResourceGroup
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
/// $ pulumi import azure-native:communication:Domain mydomain.com /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Communication/emailServices/{emailServiceName}/domains/{domainName}
/// ```
class Domain extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The location where the Domains resource data is stored at rest.
  late final pulumi.Output<String> dataLocation;
  /// Describes how a Domains resource is being managed.
  late final pulumi.Output<String> domainManagement;
  /// P2 sender domain that is displayed to the email recipients [RFC 5322].
  late final pulumi.Output<String> fromSenderDomain;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// P1 sender domain that is present on the email envelope [RFC 5321].
  late final pulumi.Output<String> mailFromSenderDomain;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Describes whether user engagement tracking is enabled or disabled.
  late final pulumi.Output<String?> userEngagementTracking;
  /// List of DnsRecord
  late final pulumi.Output<DomainPropertiesVerificationRecordsResponse> verificationRecords;
  /// List of VerificationStatusRecord
  late final pulumi.Output<DomainPropertiesVerificationStatesResponse> verificationStates;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_communication_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:communication:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataLocation = registerOutput<String>('dataLocation');
    domainManagement = registerOutput<String>('domainManagement');
    fromSenderDomain = registerOutput<String>('fromSenderDomain');
    location = registerOutput<String>('location');
    mailFromSenderDomain = registerOutput<String>('mailFromSenderDomain');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    userEngagementTracking = registerOutput<String?>('userEngagementTracking');
    verificationRecords = registerOutput<DomainPropertiesVerificationRecordsResponse>('verificationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainPropertiesVerificationRecordsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    verificationStates = registerOutput<DomainPropertiesVerificationStatesResponse>('verificationStates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainPropertiesVerificationStatesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Domain] resource.
  Domain.reference(String urn)
    : super(
        'azure-native:communication:Domain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataLocation = registerOutput<String>('dataLocation');
    domainManagement = registerOutput<String>('domainManagement');
    fromSenderDomain = registerOutput<String>('fromSenderDomain');
    location = registerOutput<String>('location');
    mailFromSenderDomain = registerOutput<String>('mailFromSenderDomain');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    userEngagementTracking = registerOutput<String?>('userEngagementTracking');
    verificationRecords = registerOutput<DomainPropertiesVerificationRecordsResponse>('verificationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainPropertiesVerificationRecordsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    verificationStates = registerOutput<DomainPropertiesVerificationStatesResponse>('verificationStates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainPropertiesVerificationStatesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
