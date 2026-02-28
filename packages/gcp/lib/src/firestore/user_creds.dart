import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_creds_args.dart';
import 'user_creds_resource_identity.dart';

/// User credentials for a Cloud Firestore with MongoDB compatibility database.
/// The resource is owned by the database and is deleted along with the database.
///
///
/// To get more information about UserCreds, see:
///
/// * [API documentation](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.userCreds)
/// * How-to Guides
/// * [Authenticate and connect to a database](https://cloud.google.com/firestore/mongodb-compatibility/docs/connect)
///
///
///
/// ## Example Usage
///
/// ### Firestore User Creds Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "database-id-mongodb-compatible",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
///     databaseEdition: "ENTERPRISE",
///     deleteProtectionState: "DELETE_PROTECTION_DISABLED",
///     deletionPolicy: "DELETE",
/// });
/// const my_user_creds = new gcp.firestore.UserCreds("my-user-creds", {
///     project: "my-project-name",
///     database: database.name,
///     name: "my-username",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="database-id-mongodb-compatible",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     database_edition="ENTERPRISE",
///     delete_protection_state="DELETE_PROTECTION_DISABLED",
///     deletion_policy="DELETE")
/// my_user_creds = gcp.firestore.UserCreds("my-user-creds",
///     project="my-project-name",
///     database=database.name,
///     name="my-username")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = "my-project-name",
///         Name = "database-id-mongodb-compatible",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///         DatabaseEdition = "ENTERPRISE",
///         DeleteProtectionState = "DELETE_PROTECTION_DISABLED",
///         DeletionPolicy = "DELETE",
///     });
///
///     var my_user_creds = new Gcp.Firestore.UserCreds("my-user-creds", new()
///     {
///         Project = "my-project-name",
///         Database = database.Name,
///         Name = "my-username",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:               pulumi.String("my-project-name"),
/// 			Name:                  pulumi.String("database-id-mongodb-compatible"),
/// 			LocationId:            pulumi.String("nam5"),
/// 			Type:                  pulumi.String("FIRESTORE_NATIVE"),
/// 			DatabaseEdition:       pulumi.String("ENTERPRISE"),
/// 			DeleteProtectionState: pulumi.String("DELETE_PROTECTION_DISABLED"),
/// 			DeletionPolicy:        pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firestore.NewUserCreds(ctx, "my-user-creds", &firestore.UserCredsArgs{
/// 			Project:  pulumi.String("my-project-name"),
/// 			Database: database.Name,
/// 			Name:     pulumi.String("my-username"),
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
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.UserCreds;
/// import com.pulumi.gcp.firestore.UserCredsArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("database-id-mongodb-compatible")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .databaseEdition("ENTERPRISE")
///             .deleteProtectionState("DELETE_PROTECTION_DISABLED")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var my_user_creds = new UserCreds("my-user-creds", UserCredsArgs.builder()
///             .project("my-project-name")
///             .database(database.name())
///             .name("my-username")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:firestore:Database
///     properties:
///       project: my-project-name
///       name: database-id-mongodb-compatible
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///       databaseEdition: ENTERPRISE
///       deleteProtectionState: DELETE_PROTECTION_DISABLED
///       deletionPolicy: DELETE
///   my-user-creds:
///     type: gcp:firestore:UserCreds
///     properties:
///       project: my-project-name
///       database: ${database.name}
///       name: my-username
/// ```
///
/// ### Firestore User Creds With Secret Manager
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "database-id-mongodb-compatible",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
///     databaseEdition: "ENTERPRISE",
///     deleteProtectionState: "DELETE_PROTECTION_DISABLED",
///     deletionPolicy: "DELETE",
/// });
/// const my_user_creds = new gcp.firestore.UserCreds("my-user-creds", {
///     project: "my-project-name",
///     database: database.name,
///     name: "my-username",
/// });
/// const my_fs_user_creds_secret = new gcp.secretmanager.Secret("my-fs-user-creds-secret", {
///     project: "my-project-name",
///     secretId: "my-fs-user-creds-secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const my_fs_user_creds_secret_version = new gcp.secretmanager.SecretVersion("my-fs-user-creds-secret-version", {
///     secret: my_fs_user_creds_secret.id,
///     secretData: my_user_creds.securePassword,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="database-id-mongodb-compatible",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     database_edition="ENTERPRISE",
///     delete_protection_state="DELETE_PROTECTION_DISABLED",
///     deletion_policy="DELETE")
/// my_user_creds = gcp.firestore.UserCreds("my-user-creds",
///     project="my-project-name",
///     database=database.name,
///     name="my-username")
/// my_fs_user_creds_secret = gcp.secretmanager.Secret("my-fs-user-creds-secret",
///     project="my-project-name",
///     secret_id="my-fs-user-creds-secret",
///     replication={
///         "auto": {},
///     })
/// my_fs_user_creds_secret_version = gcp.secretmanager.SecretVersion("my-fs-user-creds-secret-version",
///     secret=my_fs_user_creds_secret.id,
///     secret_data=my_user_creds.secure_password)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = "my-project-name",
///         Name = "database-id-mongodb-compatible",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///         DatabaseEdition = "ENTERPRISE",
///         DeleteProtectionState = "DELETE_PROTECTION_DISABLED",
///         DeletionPolicy = "DELETE",
///     });
///
///     var my_user_creds = new Gcp.Firestore.UserCreds("my-user-creds", new()
///     {
///         Project = "my-project-name",
///         Database = database.Name,
///         Name = "my-username",
///     });
///
///     var my_fs_user_creds_secret = new Gcp.SecretManager.Secret("my-fs-user-creds-secret", new()
///     {
///         Project = "my-project-name",
///         SecretId = "my-fs-user-creds-secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var my_fs_user_creds_secret_version = new Gcp.SecretManager.SecretVersion("my-fs-user-creds-secret-version", new()
///     {
///         Secret = my_fs_user_creds_secret.Id,
///         SecretData = my_user_creds.SecurePassword,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:               pulumi.String("my-project-name"),
/// 			Name:                  pulumi.String("database-id-mongodb-compatible"),
/// 			LocationId:            pulumi.String("nam5"),
/// 			Type:                  pulumi.String("FIRESTORE_NATIVE"),
/// 			DatabaseEdition:       pulumi.String("ENTERPRISE"),
/// 			DeleteProtectionState: pulumi.String("DELETE_PROTECTION_DISABLED"),
/// 			DeletionPolicy:        pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_user_creds, err := firestore.NewUserCreds(ctx, "my-user-creds", &firestore.UserCredsArgs{
/// 			Project:  pulumi.String("my-project-name"),
/// 			Database: database.Name,
/// 			Name:     pulumi.String("my-username"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_fs_user_creds_secret, err := secretmanager.NewSecret(ctx, "my-fs-user-creds-secret", &secretmanager.SecretArgs{
/// 			Project:  pulumi.String("my-project-name"),
/// 			SecretId: pulumi.String("my-fs-user-creds-secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretVersion(ctx, "my-fs-user-creds-secret-version", &secretmanager.SecretVersionArgs{
/// 			Secret:     my_fs_user_creds_secret.ID(),
/// 			SecretData: my_user_creds.SecurePassword,
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
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.UserCreds;
/// import com.pulumi.gcp.firestore.UserCredsArgs;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("database-id-mongodb-compatible")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .databaseEdition("ENTERPRISE")
///             .deleteProtectionState("DELETE_PROTECTION_DISABLED")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var my_user_creds = new UserCreds("my-user-creds", UserCredsArgs.builder()
///             .project("my-project-name")
///             .database(database.name())
///             .name("my-username")
///             .build());
///
///         var my_fs_user_creds_secret = new Secret("my-fs-user-creds-secret", SecretArgs.builder()
///             .project("my-project-name")
///             .secretId("my-fs-user-creds-secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var my_fs_user_creds_secret_version = new SecretVersion("my-fs-user-creds-secret-version", SecretVersionArgs.builder()
///             .secret(my_fs_user_creds_secret.id())
///             .secretData(my_user_creds.securePassword())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:firestore:Database
///     properties:
///       project: my-project-name
///       name: database-id-mongodb-compatible
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///       databaseEdition: ENTERPRISE
///       deleteProtectionState: DELETE_PROTECTION_DISABLED
///       deletionPolicy: DELETE
///   my-user-creds:
///     type: gcp:firestore:UserCreds
///     properties:
///       project: my-project-name
///       database: ${database.name}
///       name: my-username
///   my-fs-user-creds-secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       project: my-project-name
///       secretId: my-fs-user-creds-secret
///       replication:
///         auto: {}
///   my-fs-user-creds-secret-version:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${["my-fs-user-creds-secret"].id}
///       secretData: ${["my-user-creds"].securePassword}
/// ```
///
///
/// ## Import
///
/// UserCreds can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/databases/{{database}}/userCreds/{{name}}`
///
/// * `{{project}}/{{database}}/{{name}}`
///
/// * `{{database}}/{{name}}`
///
/// When using the `pulumi import` command, UserCreds can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firestore/userCreds:UserCreds default projects/{{project}}/databases/{{database}}/userCreds/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firestore/userCreds:UserCreds default {{project}}/{{database}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firestore/userCreds:UserCreds default {{database}}/{{name}}
/// ```
class UserCreds extends pulumi.CustomResource {
  /// The timestamp at which these user creds were created.
  late final pulumi.Output<String> createTime;

  /// The Firestore database ID.
  late final pulumi.Output<String> database;

  /// The ID to use for the user creds, which will become the final component
  /// of the user cred's resource name.
  /// This value should be 4-63 characters. Valid characters are /[a-z][0-9]-/
  /// with first character a letter and the last a letter or a number. Must not
  /// be UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Describes the Resource Identity principal.
  /// Structure is documented below.
  late final pulumi.Output<List<UserCredsResourceIdentity>> resourceIdentities;

  /// The plaintext server-generated password for the user creds.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> securePassword;

  /// The state of the user creds.
  late final pulumi.Output<String> state;

  /// The timestamp at which these user creds were updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [UserCreds].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserCreds]. {@macro pulumi_firestore_user_creds_user_creds_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserCreds(
    String name, {
    UserCredsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firestore/userCreds:UserCreds',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.database = registerOutput<String>('database');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.resourceIdentities =
        registerOutput<List<UserCredsResourceIdentity>>('resourceIdentities');
    this.securePassword = registerOutput<String>('securePassword');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
