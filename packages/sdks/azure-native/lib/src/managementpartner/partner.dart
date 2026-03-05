import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_args.dart';

/// this is the management partner operations response
///
/// Uses Azure REST API version 2018-02-01. In version 2.x of the Azure Native provider, it used API version 2018-02-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutPartnerDetails
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var partner = new AzureNative.ManagementPartner.Partner("partner", new()
///     {
///         PartnerId = "123456",
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
/// 	managementpartner "github.com/pulumi/pulumi-azure-native-sdk/managementpartner/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managementpartner.NewPartner(ctx, "partner", &managementpartner.PartnerArgs{
/// 			PartnerId: pulumi.String("123456"),
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
/// import com.pulumi.azurenative.managementpartner.Partner;
/// import com.pulumi.azurenative.managementpartner.PartnerArgs;
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
///         var partner = new Partner("partner", PartnerArgs.builder()
///             .partnerId("123456")
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
/// const partner = new azure_native.managementpartner.Partner("partner", {partnerId: "123456"});
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// partner = azure_native.managementpartner.Partner("partner", partner_id="123456")
///
/// ```
///
/// ```yaml
/// resources:
///   partner:
///     type: azure-native:managementpartner:Partner
///     properties:
///       partnerId: '123456'
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
/// $ pulumi import azure-native:managementpartner:Partner 123456 /providers/Microsoft.ManagementPartner/partners/{partnerId}
/// ```
class Partner extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// This is the DateTime when the partner was created.
  late final pulumi.Output<String?> createdTime;
  /// Type of the partner
  late final pulumi.Output<int?> etag;
  /// Name of the partner
  late final pulumi.Output<String> name;
  /// This is the object id.
  late final pulumi.Output<String?> objectId;
  /// This is the partner id
  late final pulumi.Output<String?> partnerId;
  /// This is the partner name
  late final pulumi.Output<String?> partnerName;
  /// This is the tenant id.
  late final pulumi.Output<String?> tenantId;
  /// Type of resource. "Microsoft.ManagementPartner/partners"
  late final pulumi.Output<String> type;
  /// This is the DateTime when the partner was updated.
  late final pulumi.Output<String?> updatedTime;
  /// This is the version.
  late final pulumi.Output<int?> version;

  /// Creates a new [Partner].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Partner]. {@macro pulumi_managementpartner_partner_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Partner(
    String name, {
    PartnerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managementpartner:Partner',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdTime = registerOutput<String?>('createdTime');
    etag = registerOutput<int?>('etag');
    this.name = registerOutput<String>('name');
    objectId = registerOutput<String?>('objectId');
    partnerId = registerOutput<String?>('partnerId');
    partnerName = registerOutput<String?>('partnerName');
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
    updatedTime = registerOutput<String?>('updatedTime');
    version = registerOutput<int?>('version');
  }
}
