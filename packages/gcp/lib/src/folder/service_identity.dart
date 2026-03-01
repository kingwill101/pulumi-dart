import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_identity_args.dart';

/// Generate folder service identity for a service.
///
/// > **Note:** Once created, this resource cannot be updated or destroyed. These
/// actions are a no-op.
///
/// > **Note:** This resource can be used to retrieve the emails of the [Google-managed folder service accounts](https://cloud.google.com/iam/docs/service-agents)
/// of the APIs that Google has configured with a Service Identity. You can run `gcloud beta services identity create --service SERVICE_NAME.googleapis.com --folder FOLDER` to
/// verify if an API supports this.
///
/// To get more information about Service Identity, see:
///
/// * [API documentation](https://cloud.google.com/service-usage/docs/reference/rest/v1beta1/services/generateServiceIdentity)
///
/// ## Example Usage
///
/// ### Folder Service Identity Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myFolder = new gcp.organizations.Folder("my_folder", {
///     parent: "organizations/1234567",
///     displayName: "my-folder",
/// });
/// const osconfigSa = new gcp.folder.ServiceIdentity("osconfig_sa", {
///     folder: myFolder.folderId,
///     service: "osconfig.googleapis.com",
/// });
/// const admin = new gcp.folder.IAMMember("admin", {
///     folder: myFolder.name,
///     role: "roles/osconfig.serviceAgent",
///     member: osconfigSa.member,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_folder = gcp.organizations.Folder("my_folder",
///     parent="organizations/1234567",
///     display_name="my-folder")
/// osconfig_sa = gcp.folder.ServiceIdentity("osconfig_sa",
///     folder=my_folder.folder_id,
///     service="osconfig.googleapis.com")
/// admin = gcp.folder.IAMMember("admin",
///     folder=my_folder.name,
///     role="roles/osconfig.serviceAgent",
///     member=osconfig_sa.member)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myFolder = new Gcp.Organizations.Folder("my_folder", new()
///     {
///         Parent = "organizations/1234567",
///         DisplayName = "my-folder",
///     });
///
///     var osconfigSa = new Gcp.Folder.ServiceIdentity("osconfig_sa", new()
///     {
///         Folder = myFolder.FolderId,
///         Service = "osconfig.googleapis.com",
///     });
///
///     var admin = new Gcp.Folder.IAMMember("admin", new()
///     {
///         Folder = myFolder.Name,
///         Role = "roles/osconfig.serviceAgent",
///         Member = osconfigSa.Member,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myFolder, err := organizations.NewFolder(ctx, "my_folder", &organizations.FolderArgs{
/// 			Parent:      pulumi.String("organizations/1234567"),
/// 			DisplayName: pulumi.String("my-folder"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		osconfigSa, err := folder.NewServiceIdentity(ctx, "osconfig_sa", &folder.ServiceIdentityArgs{
/// 			Folder:  myFolder.FolderId,
/// 			Service: pulumi.String("osconfig.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = folder.NewIAMMember(ctx, "admin", &folder.IAMMemberArgs{
/// 			Folder: myFolder.Name,
/// 			Role:   pulumi.String("roles/osconfig.serviceAgent"),
/// 			Member: osconfigSa.Member,
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
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.folder.ServiceIdentity;
/// import com.pulumi.gcp.folder.ServiceIdentityArgs;
/// import com.pulumi.gcp.folder.IAMMember;
/// import com.pulumi.gcp.folder.IAMMemberArgs;
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
///         var myFolder = new Folder("myFolder", FolderArgs.builder()
///             .parent("organizations/1234567")
///             .displayName("my-folder")
///             .build());
///
///         var osconfigSa = new ServiceIdentity("osconfigSa", ServiceIdentityArgs.builder()
///             .folder(myFolder.folderId())
///             .service("osconfig.googleapis.com")
///             .build());
///
///         var admin = new IAMMember("admin", IAMMemberArgs.builder()
///             .folder(myFolder.name())
///             .role("roles/osconfig.serviceAgent")
///             .member(osconfigSa.member())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myFolder:
///     type: gcp:organizations:Folder
///     name: my_folder
///     properties:
///       parent: organizations/1234567
///       displayName: my-folder
///   osconfigSa:
///     type: gcp:folder:ServiceIdentity
///     name: osconfig_sa
///     properties:
///       folder: ${myFolder.folderId}
///       service: osconfig.googleapis.com
///   admin:
///     type: gcp:folder:IAMMember
///     properties:
///       folder: ${myFolder.name}
///       role: roles/osconfig.serviceAgent
///       member: ${osconfigSa.member}
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class ServiceIdentity extends pulumi.CustomResource {
  /// The email address of the Google managed service account.
  late final pulumi.Output<String> email;

  /// The folder in which the resource belongs.
  late final pulumi.Output<String> folder;

  /// The Identity of the Google managed service account in the form 'serviceAccount:{email}'. This value is often used to refer to the service account in order to grant IAM permissions.
  late final pulumi.Output<String> member;

  /// The service to generate identity for.
  ///
  /// - - -
  late final pulumi.Output<String> service;

  /// Creates a new [ServiceIdentity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceIdentity]. {@macro pulumi_folder_service_identity_service_identity_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceIdentity(
    String name, {
    ServiceIdentityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:folder/serviceIdentity:ServiceIdentity',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.email = registerOutput<String>('email');
    this.folder = registerOutput<String>('folder');
    this.member = registerOutput<String>('member');
    this.service = registerOutput<String>('service');
  }
}
