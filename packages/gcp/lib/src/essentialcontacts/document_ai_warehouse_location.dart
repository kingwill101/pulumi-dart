import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_ai_warehouse_location_args.dart';

/// A location is used to initialize a project.
///
///
/// To get more information about Location, see:
///
/// * [API documentation](https://cloud.google.com/document-warehouse/docs/reference/rest/v1/projects.locations)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/document-warehouse/docs/overview)
///
/// ## Example Usage
///
/// ### Document Ai Warehouse Location
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.essentialcontacts.DocumentAiWarehouseLocation("example", {
///     location: "us",
///     projectNumber: project.then(project => project.number),
///     accessControlMode: "ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI",
///     databaseType: "DB_INFRA_SPANNER",
///     kmsKey: "dummy_key",
///     documentCreatorDefaultRole: "DOCUMENT_ADMIN",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.essentialcontacts.DocumentAiWarehouseLocation("example",
///     location="us",
///     project_number=project.number,
///     access_control_mode="ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI",
///     database_type="DB_INFRA_SPANNER",
///     kms_key="dummy_key",
///     document_creator_default_role="DOCUMENT_ADMIN")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example = new Gcp.EssentialContacts.DocumentAiWarehouseLocation("example", new()
///     {
///         Location = "us",
///         ProjectNumber = project.Apply(getProjectResult => getProjectResult.Number),
///         AccessControlMode = "ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI",
///         DatabaseType = "DB_INFRA_SPANNER",
///         KmsKey = "dummy_key",
///         DocumentCreatorDefaultRole = "DOCUMENT_ADMIN",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/essentialcontacts"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = essentialcontacts.NewDocumentAiWarehouseLocation(ctx, "example", &essentialcontacts.DocumentAiWarehouseLocationArgs{
/// 			Location:                   pulumi.String("us"),
/// 			ProjectNumber:              pulumi.String(project.Number),
/// 			AccessControlMode:          pulumi.String("ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI"),
/// 			DatabaseType:               pulumi.String("DB_INFRA_SPANNER"),
/// 			KmsKey:                     pulumi.String("dummy_key"),
/// 			DocumentCreatorDefaultRole: pulumi.String("DOCUMENT_ADMIN"),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.essentialcontacts.DocumentAiWarehouseLocation;
/// import com.pulumi.gcp.essentialcontacts.DocumentAiWarehouseLocationArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example = new DocumentAiWarehouseLocation("example", DocumentAiWarehouseLocationArgs.builder()
///             .location("us")
///             .projectNumber(project.number())
///             .accessControlMode("ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI")
///             .databaseType("DB_INFRA_SPANNER")
///             .kmsKey("dummy_key")
///             .documentCreatorDefaultRole("DOCUMENT_ADMIN")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:essentialcontacts:DocumentAiWarehouseLocation
///     properties:
///       location: us
///       projectNumber: ${project.number}
///       accessControlMode: ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI
///       databaseType: DB_INFRA_SPANNER
///       kmsKey: dummy_key
///       documentCreatorDefaultRole: DOCUMENT_ADMIN
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class DocumentAiWarehouseLocation extends pulumi.CustomResource {
  /// The access control mode for accessing the customer data.
  /// Possible values are: `ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI`, `ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_BYOID`, `ACL_MODE_UNIVERSAL_ACCESS`.
  late final pulumi.Output<String> accessControlMode;
  /// The type of database used to store customer data.
  /// Possible values are: `DB_INFRA_SPANNER`, `DB_CLOUD_SQL_POSTGRES`.
  late final pulumi.Output<String> databaseType;
  /// The default role for the person who create a document.
  /// Possible values are: `DOCUMENT_ADMIN`, `DOCUMENT_EDITOR`, `DOCUMENT_VIEWER`.
  late final pulumi.Output<String?> documentCreatorDefaultRole;
  /// The KMS key used for CMEK encryption. It is required that
  /// the kms key is in the same region as the endpoint. The
  /// same key will be used for all provisioned resources, if
  /// encryption is available. If the kmsKey is left empty, no
  /// encryption will be enforced.
  late final pulumi.Output<String?> kmsKey;
  /// The location in which the instance is to be provisioned. It takes the form projects/{projectNumber}/locations/{location}.
  late final pulumi.Output<String> location;
  /// The unique identifier of the project.
  late final pulumi.Output<String> projectNumber;

  /// Creates a new [DocumentAiWarehouseLocation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DocumentAiWarehouseLocation]. {@macro pulumi_essentialcontacts_document_ai_warehouse_location_document_ai_warehouse_location_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DocumentAiWarehouseLocation(
    String name, {
    DocumentAiWarehouseLocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:essentialcontacts/documentAiWarehouseLocation:DocumentAiWarehouseLocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessControlMode = registerOutput<String>('accessControlMode');
    this.databaseType = registerOutput<String>('databaseType');
    this.documentCreatorDefaultRole = registerOutput<String?>('documentCreatorDefaultRole');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.location = registerOutput<String>('location');
    this.projectNumber = registerOutput<String>('projectNumber');
  }
}
