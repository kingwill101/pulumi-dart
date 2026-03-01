import 'package:pulumi/pulumi.dart' as pulumi;
import 'exascale_db_storage_vault_args.dart';
import 'exascale_db_storage_vault_properties.dart';

/// An Exascale Storage Vault Resource
///
///
///
/// ## Example Usage
///
/// ### Oracledatabase Exascale Db Storage Vault Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myStorageVault = new gcp.oracledatabase.ExascaleDbStorageVault("my_storage_vault", {
///     exascaleDbStorageVaultId: "my-instance",
///     displayName: "my-instance displayname",
///     location: "us-east4",
///     project: "my-project",
///     properties: {
///         exascaleDbStorageDetails: {
///             totalSizeGbs: 512,
///         },
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_storage_vault = gcp.oracledatabase.ExascaleDbStorageVault("my_storage_vault",
///     exascale_db_storage_vault_id="my-instance",
///     display_name="my-instance displayname",
///     location="us-east4",
///     project="my-project",
///     properties={
///         "exascale_db_storage_details": {
///             "total_size_gbs": 512,
///         },
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myStorageVault = new Gcp.OracleDatabase.ExascaleDbStorageVault("my_storage_vault", new()
///     {
///         ExascaleDbStorageVaultId = "my-instance",
///         DisplayName = "my-instance displayname",
///         Location = "us-east4",
///         Project = "my-project",
///         Properties = new Gcp.OracleDatabase.Inputs.ExascaleDbStorageVaultPropertiesArgs
///         {
///             ExascaleDbStorageDetails = new Gcp.OracleDatabase.Inputs.ExascaleDbStorageVaultPropertiesExascaleDbStorageDetailsArgs
///             {
///                 TotalSizeGbs = 512,
///             },
///         },
///         DeletionProtection = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.NewExascaleDbStorageVault(ctx, "my_storage_vault", &oracledatabase.ExascaleDbStorageVaultArgs{
/// 			ExascaleDbStorageVaultId: pulumi.String("my-instance"),
/// 			DisplayName:              pulumi.String("my-instance displayname"),
/// 			Location:                 pulumi.String("us-east4"),
/// 			Project:                  pulumi.String("my-project"),
/// 			Properties: &oracledatabase.ExascaleDbStorageVaultPropertiesArgs{
/// 				ExascaleDbStorageDetails: &oracledatabase.ExascaleDbStorageVaultPropertiesExascaleDbStorageDetailsArgs{
/// 					TotalSizeGbs: pulumi.Int(512),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
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
/// import com.pulumi.gcp.oracledatabase.ExascaleDbStorageVault;
/// import com.pulumi.gcp.oracledatabase.ExascaleDbStorageVaultArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.ExascaleDbStorageVaultPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.ExascaleDbStorageVaultPropertiesExascaleDbStorageDetailsArgs;
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
///         var myStorageVault = new ExascaleDbStorageVault("myStorageVault", ExascaleDbStorageVaultArgs.builder()
///             .exascaleDbStorageVaultId("my-instance")
///             .displayName("my-instance displayname")
///             .location("us-east4")
///             .project("my-project")
///             .properties(ExascaleDbStorageVaultPropertiesArgs.builder()
///                 .exascaleDbStorageDetails(ExascaleDbStorageVaultPropertiesExascaleDbStorageDetailsArgs.builder()
///                     .totalSizeGbs(512)
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myStorageVault:
///     type: gcp:oracledatabase:ExascaleDbStorageVault
///     name: my_storage_vault
///     properties:
///       exascaleDbStorageVaultId: my-instance
///       displayName: my-instance displayname
///       location: us-east4
///       project: my-project
///       properties:
///         exascaleDbStorageDetails:
///           totalSizeGbs: 512
///       deletionProtection: 'true'
/// ```
///
/// ### Oracledatabase Exascale Db Storage Vault Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myStorageVault = new gcp.oracledatabase.ExascaleDbStorageVault("my_storage_vault", {
///     exascaleDbStorageVaultId: "my-instance",
///     displayName: "my-instance displayname",
///     location: "us-east4",
///     gcpOracleZone: "us-east4-b-r1",
///     project: "my-project",
///     labels: {
///         "label-one": "value-one",
///     },
///     properties: {
///         timeZone: {
///             id: "UTC",
///         },
///         additionalFlashCachePercent: 100,
///         exascaleDbStorageDetails: {
///             totalSizeGbs: 300,
///         },
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_storage_vault = gcp.oracledatabase.ExascaleDbStorageVault("my_storage_vault",
///     exascale_db_storage_vault_id="my-instance",
///     display_name="my-instance displayname",
///     location="us-east4",
///     gcp_oracle_zone="us-east4-b-r1",
///     project="my-project",
///     labels={
///         "label-one": "value-one",
///     },
///     properties={
///         "time_zone": {
///             "id": "UTC",
///         },
///         "additional_flash_cache_percent": 100,
///         "exascale_db_storage_details": {
///             "total_size_gbs": 300,
///         },
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myStorageVault = new Gcp.OracleDatabase.ExascaleDbStorageVault("my_storage_vault", new()
///     {
///         ExascaleDbStorageVaultId = "my-instance",
///         DisplayName = "my-instance displayname",
///         Location = "us-east4",
///         GcpOracleZone = "us-east4-b-r1",
///         Project = "my-project",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Properties = new Gcp.OracleDatabase.Inputs.ExascaleDbStorageVaultPropertiesArgs
///         {
///             TimeZone = new Gcp.OracleDatabase.Inputs.ExascaleDbStorageVaultPropertiesTimeZoneArgs
///             {
///                 Id = "UTC",
///             },
///             AdditionalFlashCachePercent = 100,
///             ExascaleDbStorageDetails = new Gcp.OracleDatabase.Inputs.ExascaleDbStorageVaultPropertiesExascaleDbStorageDetailsArgs
///             {
///                 TotalSizeGbs = 300,
///             },
///         },
///         DeletionProtection = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.NewExascaleDbStorageVault(ctx, "my_storage_vault", &oracledatabase.ExascaleDbStorageVaultArgs{
/// 			ExascaleDbStorageVaultId: pulumi.String("my-instance"),
/// 			DisplayName:              pulumi.String("my-instance displayname"),
/// 			Location:                 pulumi.String("us-east4"),
/// 			GcpOracleZone:            pulumi.String("us-east4-b-r1"),
/// 			Project:                  pulumi.String("my-project"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Properties: &oracledatabase.ExascaleDbStorageVaultPropertiesArgs{
/// 				TimeZone: &oracledatabase.ExascaleDbStorageVaultPropertiesTimeZoneArgs{
/// 					Id: pulumi.String("UTC"),
/// 				},
/// 				AdditionalFlashCachePercent: pulumi.Int(100),
/// 				ExascaleDbStorageDetails: &oracledatabase.ExascaleDbStorageVaultPropertiesExascaleDbStorageDetailsArgs{
/// 					TotalSizeGbs: pulumi.Int(300),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
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
/// import com.pulumi.gcp.oracledatabase.ExascaleDbStorageVault;
/// import com.pulumi.gcp.oracledatabase.ExascaleDbStorageVaultArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.ExascaleDbStorageVaultPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.ExascaleDbStorageVaultPropertiesTimeZoneArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.ExascaleDbStorageVaultPropertiesExascaleDbStorageDetailsArgs;
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
///         var myStorageVault = new ExascaleDbStorageVault("myStorageVault", ExascaleDbStorageVaultArgs.builder()
///             .exascaleDbStorageVaultId("my-instance")
///             .displayName("my-instance displayname")
///             .location("us-east4")
///             .gcpOracleZone("us-east4-b-r1")
///             .project("my-project")
///             .labels(Map.of("label-one", "value-one"))
///             .properties(ExascaleDbStorageVaultPropertiesArgs.builder()
///                 .timeZone(ExascaleDbStorageVaultPropertiesTimeZoneArgs.builder()
///                     .id("UTC")
///                     .build())
///                 .additionalFlashCachePercent(100)
///                 .exascaleDbStorageDetails(ExascaleDbStorageVaultPropertiesExascaleDbStorageDetailsArgs.builder()
///                     .totalSizeGbs(300)
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myStorageVault:
///     type: gcp:oracledatabase:ExascaleDbStorageVault
///     name: my_storage_vault
///     properties:
///       exascaleDbStorageVaultId: my-instance
///       displayName: my-instance displayname
///       location: us-east4
///       gcpOracleZone: us-east4-b-r1
///       project: my-project
///       labels:
///         label-one: value-one
///       properties:
///         timeZone:
///           id: UTC
///         additionalFlashCachePercent: 100
///         exascaleDbStorageDetails:
///           totalSizeGbs: 300
///       deletionProtection: 'true'
/// ```
///
///
/// ## Import
///
/// ExascaleDbStorageVault can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/exascaleDbStorageVaults/{{exascale_db_storage_vault_id}}`
///
/// * `{{project}}/{{location}}/{{exascale_db_storage_vault_id}}`
///
/// * `{{location}}/{{exascale_db_storage_vault_id}}`
///
/// When using the `pulumi import` command, ExascaleDbStorageVault can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/exascaleDbStorageVault:ExascaleDbStorageVault default projects/{{project}}/locations/{{location}}/exascaleDbStorageVaults/{{exascale_db_storage_vault_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/exascaleDbStorageVault:ExascaleDbStorageVault default {{project}}/{{location}}/{{exascale_db_storage_vault_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/exascaleDbStorageVault:ExascaleDbStorageVault default {{location}}/{{exascale_db_storage_vault_id}}
/// ```
class ExascaleDbStorageVault extends pulumi.CustomResource {
  /// The date and time when the ExascaleDbStorageVault was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<bool?> deletionProtection;

  /// The display name for the ExascaleDbStorageVault. The name does not have to
  /// be unique within your project. The name must be 1-255 characters long and
  /// can only contain alphanumeric characters.
  late final pulumi.Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The ID of the subscription entitlement associated with the
  /// ExascaleDbStorageVault.
  late final pulumi.Output<String> entitlementId;

  /// The ID of the ExascaleDbStorageVault to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  late final pulumi.Output<String> exascaleDbStorageVaultId;

  /// The GCP Oracle zone where Oracle ExascaleDbStorageVault is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  late final pulumi.Output<String> gcpOracleZone;

  /// The labels or tags associated with the ExascaleDbStorageVault.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. The resource name of the ExascaleDbStorageVault.
  /// Format:
  /// projects/{project}/locations/{location}/exascaleDbStorageVaults/{exascale_db_storage_vault}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The properties of the ExascaleDbStorageVault.
  /// next ID: 12
  /// Structure is documented below.
  late final pulumi.Output<ExascaleDbStorageVaultProperties> properties;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Creates a new [ExascaleDbStorageVault].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExascaleDbStorageVault]. {@macro pulumi_oracledatabase_exascale_db_storage_vault_exascale_db_storage_vault_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExascaleDbStorageVault(
    String name, {
    ExascaleDbStorageVaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:oracledatabase/exascaleDbStorageVault:ExascaleDbStorageVault',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.entitlementId = registerOutput<String>('entitlementId');
    this.exascaleDbStorageVaultId = registerOutput<String>(
      'exascaleDbStorageVaultId',
    );
    this.gcpOracleZone = registerOutput<String>('gcpOracleZone');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.properties = registerOutput<ExascaleDbStorageVaultProperties>(
      'properties',
    );
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}
