import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'database_cmek_config.dart';

/// A Cloud Firestore Database.
///
/// If you wish to use Firestore with App Engine, use the
/// `gcp.appengine.Application`
/// resource instead. If you were previously using the `gcp.appengine.Application` resource exclusively for managing a Firestore database
/// and would like to use the `gcp.firestore.Database` resource instead, please follow the instructions
/// [here](https://cloud.google.com/firestore/docs/app-engine-requirement).
///
///
/// To get more information about Database, see:
///
/// * [API documentation](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/firestore/docs/)
///
/// ## Example Usage
///
/// ### Firestore Default Database
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "(default)",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="(default)",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE")
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
///         Name = "(default)",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
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
/// 		_, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:    pulumi.String("my-project-name"),
/// 			Name:       pulumi.String("(default)"),
/// 			LocationId: pulumi.String("nam5"),
/// 			Type:       pulumi.String("FIRESTORE_NATIVE"),
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
///             .name("(default)")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
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
///       name: (default)
///       locationId: nam5
///       type: FIRESTORE_NATIVE
/// ```
///
/// ### Firestore Database
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "database-id",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
///     concurrencyMode: "OPTIMISTIC",
///     appEngineIntegrationMode: "DISABLED",
///     pointInTimeRecoveryEnablement: "POINT_IN_TIME_RECOVERY_ENABLED",
///     deleteProtectionState: "DELETE_PROTECTION_ENABLED",
///     deletionPolicy: "DELETE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="database-id",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     concurrency_mode="OPTIMISTIC",
///     app_engine_integration_mode="DISABLED",
///     point_in_time_recovery_enablement="POINT_IN_TIME_RECOVERY_ENABLED",
///     delete_protection_state="DELETE_PROTECTION_ENABLED",
///     deletion_policy="DELETE")
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
///         Name = "database-id",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///         ConcurrencyMode = "OPTIMISTIC",
///         AppEngineIntegrationMode = "DISABLED",
///         PointInTimeRecoveryEnablement = "POINT_IN_TIME_RECOVERY_ENABLED",
///         DeleteProtectionState = "DELETE_PROTECTION_ENABLED",
///         DeletionPolicy = "DELETE",
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
/// 		_, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:                       pulumi.String("my-project-name"),
/// 			Name:                          pulumi.String("database-id"),
/// 			LocationId:                    pulumi.String("nam5"),
/// 			Type:                          pulumi.String("FIRESTORE_NATIVE"),
/// 			ConcurrencyMode:               pulumi.String("OPTIMISTIC"),
/// 			AppEngineIntegrationMode:      pulumi.String("DISABLED"),
/// 			PointInTimeRecoveryEnablement: pulumi.String("POINT_IN_TIME_RECOVERY_ENABLED"),
/// 			DeleteProtectionState:         pulumi.String("DELETE_PROTECTION_ENABLED"),
/// 			DeletionPolicy:                pulumi.String("DELETE"),
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
///             .name("database-id")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .concurrencyMode("OPTIMISTIC")
///             .appEngineIntegrationMode("DISABLED")
///             .pointInTimeRecoveryEnablement("POINT_IN_TIME_RECOVERY_ENABLED")
///             .deleteProtectionState("DELETE_PROTECTION_ENABLED")
///             .deletionPolicy("DELETE")
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
///       name: database-id
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///       concurrencyMode: OPTIMISTIC
///       appEngineIntegrationMode: DISABLED
///       pointInTimeRecoveryEnablement: POINT_IN_TIME_RECOVERY_ENABLED
///       deleteProtectionState: DELETE_PROTECTION_ENABLED
///       deletionPolicy: DELETE
/// ```
///
/// ### Firestore Database With Tags
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "database-with-tags-id",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
///     deleteProtectionState: "DELETE_PROTECTION_ENABLED",
///     deletionPolicy: "DELETE",
///     tags: {
///         keyname: "valuename",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="database-with-tags-id",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     delete_protection_state="DELETE_PROTECTION_ENABLED",
///     deletion_policy="DELETE",
///     tags={
///         "keyname": "valuename",
///     })
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
///         Name = "database-with-tags-id",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///         DeleteProtectionState = "DELETE_PROTECTION_ENABLED",
///         DeletionPolicy = "DELETE",
///         Tags =
///         {
///             { "keyname", "valuename" },
///         },
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
/// 		_, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:               pulumi.String("my-project-name"),
/// 			Name:                  pulumi.String("database-with-tags-id"),
/// 			LocationId:            pulumi.String("nam5"),
/// 			Type:                  pulumi.String("FIRESTORE_NATIVE"),
/// 			DeleteProtectionState: pulumi.String("DELETE_PROTECTION_ENABLED"),
/// 			DeletionPolicy:        pulumi.String("DELETE"),
/// 			Tags: pulumi.StringMap{
/// 				"keyname": pulumi.String("valuename"),
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
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
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
///             .name("database-with-tags-id")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .deleteProtectionState("DELETE_PROTECTION_ENABLED")
///             .deletionPolicy("DELETE")
///             .tags(Map.of("keyname", "valuename"))
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
///       name: database-with-tags-id
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///       deleteProtectionState: DELETE_PROTECTION_ENABLED
///       deletionPolicy: DELETE
///       tags:
///         keyname: valuename
/// ```
///
/// ### Firestore Cmek Database
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const keyRing = new gcp.kms.KeyRing("key_ring", {
///     name: "kms-key-ring",
///     location: "us",
/// });
/// const cryptoKey = new gcp.kms.CryptoKey("crypto_key", {
///     name: "kms-key",
///     keyRing: keyRing.id,
///     purpose: "ENCRYPT_DECRYPT",
/// });
/// const firestoreCmekKeyuser = new gcp.kms.CryptoKeyIAMBinding("firestore_cmek_keyuser", {
///     cryptoKeyId: cryptoKey.id,
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     members: [project.then(project => `serviceAccount:service-${project.number}@gcp-sa-firestore.iam.gserviceaccount.com`)],
/// });
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "cmek-database-id",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
///     concurrencyMode: "OPTIMISTIC",
///     appEngineIntegrationMode: "DISABLED",
///     pointInTimeRecoveryEnablement: "POINT_IN_TIME_RECOVERY_ENABLED",
///     deleteProtectionState: "DELETE_PROTECTION_ENABLED",
///     deletionPolicy: "DELETE",
///     cmekConfig: {
///         kmsKeyName: cryptoKey.id,
///     },
/// }, {
///     dependsOn: [firestoreCmekKeyuser],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// key_ring = gcp.kms.KeyRing("key_ring",
///     name="kms-key-ring",
///     location="us")
/// crypto_key = gcp.kms.CryptoKey("crypto_key",
///     name="kms-key",
///     key_ring=key_ring.id,
///     purpose="ENCRYPT_DECRYPT")
/// firestore_cmek_keyuser = gcp.kms.CryptoKeyIAMBinding("firestore_cmek_keyuser",
///     crypto_key_id=crypto_key.id,
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     members=[f"serviceAccount:service-{project.number}@gcp-sa-firestore.iam.gserviceaccount.com"])
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="cmek-database-id",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     concurrency_mode="OPTIMISTIC",
///     app_engine_integration_mode="DISABLED",
///     point_in_time_recovery_enablement="POINT_IN_TIME_RECOVERY_ENABLED",
///     delete_protection_state="DELETE_PROTECTION_ENABLED",
///     deletion_policy="DELETE",
///     cmek_config={
///         "kms_key_name": crypto_key.id,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[firestore_cmek_keyuser]))
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
///     var keyRing = new Gcp.Kms.KeyRing("key_ring", new()
///     {
///         Name = "kms-key-ring",
///         Location = "us",
///     });
///
///     var cryptoKey = new Gcp.Kms.CryptoKey("crypto_key", new()
///     {
///         Name = "kms-key",
///         KeyRing = keyRing.Id,
///         Purpose = "ENCRYPT_DECRYPT",
///     });
///
///     var firestoreCmekKeyuser = new Gcp.Kms.CryptoKeyIAMBinding("firestore_cmek_keyuser", new()
///     {
///         CryptoKeyId = cryptoKey.Id,
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Members = new[]
///         {
///             $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-firestore.iam.gserviceaccount.com",
///         },
///     });
///
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = "my-project-name",
///         Name = "cmek-database-id",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///         ConcurrencyMode = "OPTIMISTIC",
///         AppEngineIntegrationMode = "DISABLED",
///         PointInTimeRecoveryEnablement = "POINT_IN_TIME_RECOVERY_ENABLED",
///         DeleteProtectionState = "DELETE_PROTECTION_ENABLED",
///         DeletionPolicy = "DELETE",
///         CmekConfig = new Gcp.Firestore.Inputs.DatabaseCmekConfigArgs
///         {
///             KmsKeyName = cryptoKey.Id,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             firestoreCmekKeyuser,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
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
/// 		keyRing, err := kms.NewKeyRing(ctx, "key_ring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("kms-key-ring"),
/// 			Location: pulumi.String("us"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKey(ctx, "crypto_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("kms-key"),
/// 			KeyRing: keyRing.ID(),
/// 			Purpose: pulumi.String("ENCRYPT_DECRYPT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		firestoreCmekKeyuser, err := kms.NewCryptoKeyIAMBinding(ctx, "firestore_cmek_keyuser", &kms.CryptoKeyIAMBindingArgs{
/// 			CryptoKeyId: cryptoKey.ID(),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-firestore.iam.gserviceaccount.com", project.Number),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:                       pulumi.String("my-project-name"),
/// 			Name:                          pulumi.String("cmek-database-id"),
/// 			LocationId:                    pulumi.String("nam5"),
/// 			Type:                          pulumi.String("FIRESTORE_NATIVE"),
/// 			ConcurrencyMode:               pulumi.String("OPTIMISTIC"),
/// 			AppEngineIntegrationMode:      pulumi.String("DISABLED"),
/// 			PointInTimeRecoveryEnablement: pulumi.String("POINT_IN_TIME_RECOVERY_ENABLED"),
/// 			DeleteProtectionState:         pulumi.String("DELETE_PROTECTION_ENABLED"),
/// 			DeletionPolicy:                pulumi.String("DELETE"),
/// 			CmekConfig: &firestore.DatabaseCmekConfigArgs{
/// 				KmsKeyName: cryptoKey.ID(),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			firestoreCmekKeyuser,
/// 		}))
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
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMBinding;
/// import com.pulumi.gcp.kms.CryptoKeyIAMBindingArgs;
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.inputs.DatabaseCmekConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var keyRing = new KeyRing("keyRing", KeyRingArgs.builder()
///             .name("kms-key-ring")
///             .location("us")
///             .build());
///
///         var cryptoKey = new CryptoKey("cryptoKey", CryptoKeyArgs.builder()
///             .name("kms-key")
///             .keyRing(keyRing.id())
///             .purpose("ENCRYPT_DECRYPT")
///             .build());
///
///         var firestoreCmekKeyuser = new CryptoKeyIAMBinding("firestoreCmekKeyuser", CryptoKeyIAMBindingArgs.builder()
///             .cryptoKeyId(cryptoKey.id())
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .members(String.format("serviceAccount:service-%s@gcp-sa-firestore.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var database = new Database("database", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("cmek-database-id")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .concurrencyMode("OPTIMISTIC")
///             .appEngineIntegrationMode("DISABLED")
///             .pointInTimeRecoveryEnablement("POINT_IN_TIME_RECOVERY_ENABLED")
///             .deleteProtectionState("DELETE_PROTECTION_ENABLED")
///             .deletionPolicy("DELETE")
///             .cmekConfig(DatabaseCmekConfigArgs.builder()
///                 .kmsKeyName(cryptoKey.id())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(firestoreCmekKeyuser)
///                 .build());
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
///       name: cmek-database-id
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///       concurrencyMode: OPTIMISTIC
///       appEngineIntegrationMode: DISABLED
///       pointInTimeRecoveryEnablement: POINT_IN_TIME_RECOVERY_ENABLED
///       deleteProtectionState: DELETE_PROTECTION_ENABLED
///       deletionPolicy: DELETE
///       cmekConfig:
///         kmsKeyName: ${cryptoKey.id}
///     options:
///       dependsOn:
///         - ${firestoreCmekKeyuser}
///   cryptoKey:
///     type: gcp:kms:CryptoKey
///     name: crypto_key
///     properties:
///       name: kms-key
///       keyRing: ${keyRing.id}
///       purpose: ENCRYPT_DECRYPT
///   keyRing:
///     type: gcp:kms:KeyRing
///     name: key_ring
///     properties:
///       name: kms-key-ring
///       location: us
///   firestoreCmekKeyuser:
///     type: gcp:kms:CryptoKeyIAMBinding
///     name: firestore_cmek_keyuser
///     properties:
///       cryptoKeyId: ${cryptoKey.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       members:
///         - serviceAccount:service-${project.number}@gcp-sa-firestore.iam.gserviceaccount.com
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Firestore Default Database In Datastore Mode
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const datastoreModeDatabase = new gcp.firestore.Database("datastore_mode_database", {
///     project: "my-project-name",
///     name: "(default)",
///     locationId: "nam5",
///     type: "DATASTORE_MODE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// datastore_mode_database = gcp.firestore.Database("datastore_mode_database",
///     project="my-project-name",
///     name="(default)",
///     location_id="nam5",
///     type="DATASTORE_MODE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var datastoreModeDatabase = new Gcp.Firestore.Database("datastore_mode_database", new()
///     {
///         Project = "my-project-name",
///         Name = "(default)",
///         LocationId = "nam5",
///         Type = "DATASTORE_MODE",
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
/// 		_, err := firestore.NewDatabase(ctx, "datastore_mode_database", &firestore.DatabaseArgs{
/// 			Project:    pulumi.String("my-project-name"),
/// 			Name:       pulumi.String("(default)"),
/// 			LocationId: pulumi.String("nam5"),
/// 			Type:       pulumi.String("DATASTORE_MODE"),
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
///         var datastoreModeDatabase = new Database("datastoreModeDatabase", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("(default)")
///             .locationId("nam5")
///             .type("DATASTORE_MODE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   datastoreModeDatabase:
///     type: gcp:firestore:Database
///     name: datastore_mode_database
///     properties:
///       project: my-project-name
///       name: (default)
///       locationId: nam5
///       type: DATASTORE_MODE
/// ```
///
/// ### Firestore Database In Datastore Mode
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const datastoreModeDatabase = new gcp.firestore.Database("datastore_mode_database", {
///     project: "my-project-name",
///     name: "database-id",
///     locationId: "nam5",
///     type: "DATASTORE_MODE",
///     concurrencyMode: "OPTIMISTIC",
///     appEngineIntegrationMode: "DISABLED",
///     pointInTimeRecoveryEnablement: "POINT_IN_TIME_RECOVERY_ENABLED",
///     deleteProtectionState: "DELETE_PROTECTION_ENABLED",
///     deletionPolicy: "DELETE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// datastore_mode_database = gcp.firestore.Database("datastore_mode_database",
///     project="my-project-name",
///     name="database-id",
///     location_id="nam5",
///     type="DATASTORE_MODE",
///     concurrency_mode="OPTIMISTIC",
///     app_engine_integration_mode="DISABLED",
///     point_in_time_recovery_enablement="POINT_IN_TIME_RECOVERY_ENABLED",
///     delete_protection_state="DELETE_PROTECTION_ENABLED",
///     deletion_policy="DELETE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var datastoreModeDatabase = new Gcp.Firestore.Database("datastore_mode_database", new()
///     {
///         Project = "my-project-name",
///         Name = "database-id",
///         LocationId = "nam5",
///         Type = "DATASTORE_MODE",
///         ConcurrencyMode = "OPTIMISTIC",
///         AppEngineIntegrationMode = "DISABLED",
///         PointInTimeRecoveryEnablement = "POINT_IN_TIME_RECOVERY_ENABLED",
///         DeleteProtectionState = "DELETE_PROTECTION_ENABLED",
///         DeletionPolicy = "DELETE",
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
/// 		_, err := firestore.NewDatabase(ctx, "datastore_mode_database", &firestore.DatabaseArgs{
/// 			Project:                       pulumi.String("my-project-name"),
/// 			Name:                          pulumi.String("database-id"),
/// 			LocationId:                    pulumi.String("nam5"),
/// 			Type:                          pulumi.String("DATASTORE_MODE"),
/// 			ConcurrencyMode:               pulumi.String("OPTIMISTIC"),
/// 			AppEngineIntegrationMode:      pulumi.String("DISABLED"),
/// 			PointInTimeRecoveryEnablement: pulumi.String("POINT_IN_TIME_RECOVERY_ENABLED"),
/// 			DeleteProtectionState:         pulumi.String("DELETE_PROTECTION_ENABLED"),
/// 			DeletionPolicy:                pulumi.String("DELETE"),
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
///         var datastoreModeDatabase = new Database("datastoreModeDatabase", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("database-id")
///             .locationId("nam5")
///             .type("DATASTORE_MODE")
///             .concurrencyMode("OPTIMISTIC")
///             .appEngineIntegrationMode("DISABLED")
///             .pointInTimeRecoveryEnablement("POINT_IN_TIME_RECOVERY_ENABLED")
///             .deleteProtectionState("DELETE_PROTECTION_ENABLED")
///             .deletionPolicy("DELETE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   datastoreModeDatabase:
///     type: gcp:firestore:Database
///     name: datastore_mode_database
///     properties:
///       project: my-project-name
///       name: database-id
///       locationId: nam5
///       type: DATASTORE_MODE
///       concurrencyMode: OPTIMISTIC
///       appEngineIntegrationMode: DISABLED
///       pointInTimeRecoveryEnablement: POINT_IN_TIME_RECOVERY_ENABLED
///       deleteProtectionState: DELETE_PROTECTION_ENABLED
///       deletionPolicy: DELETE
/// ```
///
/// ### Firestore Cmek Database In Datastore Mode
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const keyRing = new gcp.kms.KeyRing("key_ring", {
///     name: "kms-key-ring",
///     location: "us",
/// });
/// const cryptoKey = new gcp.kms.CryptoKey("crypto_key", {
///     name: "kms-key",
///     keyRing: keyRing.id,
///     purpose: "ENCRYPT_DECRYPT",
/// });
/// const firestoreCmekKeyuser = new gcp.kms.CryptoKeyIAMBinding("firestore_cmek_keyuser", {
///     cryptoKeyId: cryptoKey.id,
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     members: [project.then(project => `serviceAccount:service-${project.number}@gcp-sa-firestore.iam.gserviceaccount.com`)],
/// });
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "cmek-database-id",
///     locationId: "nam5",
///     type: "DATASTORE_MODE",
///     concurrencyMode: "OPTIMISTIC",
///     appEngineIntegrationMode: "DISABLED",
///     pointInTimeRecoveryEnablement: "POINT_IN_TIME_RECOVERY_ENABLED",
///     deleteProtectionState: "DELETE_PROTECTION_ENABLED",
///     deletionPolicy: "DELETE",
///     cmekConfig: {
///         kmsKeyName: cryptoKey.id,
///     },
/// }, {
///     dependsOn: [firestoreCmekKeyuser],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// key_ring = gcp.kms.KeyRing("key_ring",
///     name="kms-key-ring",
///     location="us")
/// crypto_key = gcp.kms.CryptoKey("crypto_key",
///     name="kms-key",
///     key_ring=key_ring.id,
///     purpose="ENCRYPT_DECRYPT")
/// firestore_cmek_keyuser = gcp.kms.CryptoKeyIAMBinding("firestore_cmek_keyuser",
///     crypto_key_id=crypto_key.id,
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     members=[f"serviceAccount:service-{project.number}@gcp-sa-firestore.iam.gserviceaccount.com"])
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="cmek-database-id",
///     location_id="nam5",
///     type="DATASTORE_MODE",
///     concurrency_mode="OPTIMISTIC",
///     app_engine_integration_mode="DISABLED",
///     point_in_time_recovery_enablement="POINT_IN_TIME_RECOVERY_ENABLED",
///     delete_protection_state="DELETE_PROTECTION_ENABLED",
///     deletion_policy="DELETE",
///     cmek_config={
///         "kms_key_name": crypto_key.id,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[firestore_cmek_keyuser]))
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
///     var keyRing = new Gcp.Kms.KeyRing("key_ring", new()
///     {
///         Name = "kms-key-ring",
///         Location = "us",
///     });
///
///     var cryptoKey = new Gcp.Kms.CryptoKey("crypto_key", new()
///     {
///         Name = "kms-key",
///         KeyRing = keyRing.Id,
///         Purpose = "ENCRYPT_DECRYPT",
///     });
///
///     var firestoreCmekKeyuser = new Gcp.Kms.CryptoKeyIAMBinding("firestore_cmek_keyuser", new()
///     {
///         CryptoKeyId = cryptoKey.Id,
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Members = new[]
///         {
///             $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-firestore.iam.gserviceaccount.com",
///         },
///     });
///
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = "my-project-name",
///         Name = "cmek-database-id",
///         LocationId = "nam5",
///         Type = "DATASTORE_MODE",
///         ConcurrencyMode = "OPTIMISTIC",
///         AppEngineIntegrationMode = "DISABLED",
///         PointInTimeRecoveryEnablement = "POINT_IN_TIME_RECOVERY_ENABLED",
///         DeleteProtectionState = "DELETE_PROTECTION_ENABLED",
///         DeletionPolicy = "DELETE",
///         CmekConfig = new Gcp.Firestore.Inputs.DatabaseCmekConfigArgs
///         {
///             KmsKeyName = cryptoKey.Id,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             firestoreCmekKeyuser,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
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
/// 		keyRing, err := kms.NewKeyRing(ctx, "key_ring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("kms-key-ring"),
/// 			Location: pulumi.String("us"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKey(ctx, "crypto_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("kms-key"),
/// 			KeyRing: keyRing.ID(),
/// 			Purpose: pulumi.String("ENCRYPT_DECRYPT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		firestoreCmekKeyuser, err := kms.NewCryptoKeyIAMBinding(ctx, "firestore_cmek_keyuser", &kms.CryptoKeyIAMBindingArgs{
/// 			CryptoKeyId: cryptoKey.ID(),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-firestore.iam.gserviceaccount.com", project.Number),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:                       pulumi.String("my-project-name"),
/// 			Name:                          pulumi.String("cmek-database-id"),
/// 			LocationId:                    pulumi.String("nam5"),
/// 			Type:                          pulumi.String("DATASTORE_MODE"),
/// 			ConcurrencyMode:               pulumi.String("OPTIMISTIC"),
/// 			AppEngineIntegrationMode:      pulumi.String("DISABLED"),
/// 			PointInTimeRecoveryEnablement: pulumi.String("POINT_IN_TIME_RECOVERY_ENABLED"),
/// 			DeleteProtectionState:         pulumi.String("DELETE_PROTECTION_ENABLED"),
/// 			DeletionPolicy:                pulumi.String("DELETE"),
/// 			CmekConfig: &firestore.DatabaseCmekConfigArgs{
/// 				KmsKeyName: cryptoKey.ID(),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			firestoreCmekKeyuser,
/// 		}))
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
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMBinding;
/// import com.pulumi.gcp.kms.CryptoKeyIAMBindingArgs;
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.inputs.DatabaseCmekConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var keyRing = new KeyRing("keyRing", KeyRingArgs.builder()
///             .name("kms-key-ring")
///             .location("us")
///             .build());
///
///         var cryptoKey = new CryptoKey("cryptoKey", CryptoKeyArgs.builder()
///             .name("kms-key")
///             .keyRing(keyRing.id())
///             .purpose("ENCRYPT_DECRYPT")
///             .build());
///
///         var firestoreCmekKeyuser = new CryptoKeyIAMBinding("firestoreCmekKeyuser", CryptoKeyIAMBindingArgs.builder()
///             .cryptoKeyId(cryptoKey.id())
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .members(String.format("serviceAccount:service-%s@gcp-sa-firestore.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var database = new Database("database", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("cmek-database-id")
///             .locationId("nam5")
///             .type("DATASTORE_MODE")
///             .concurrencyMode("OPTIMISTIC")
///             .appEngineIntegrationMode("DISABLED")
///             .pointInTimeRecoveryEnablement("POINT_IN_TIME_RECOVERY_ENABLED")
///             .deleteProtectionState("DELETE_PROTECTION_ENABLED")
///             .deletionPolicy("DELETE")
///             .cmekConfig(DatabaseCmekConfigArgs.builder()
///                 .kmsKeyName(cryptoKey.id())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(firestoreCmekKeyuser)
///                 .build());
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
///       name: cmek-database-id
///       locationId: nam5
///       type: DATASTORE_MODE
///       concurrencyMode: OPTIMISTIC
///       appEngineIntegrationMode: DISABLED
///       pointInTimeRecoveryEnablement: POINT_IN_TIME_RECOVERY_ENABLED
///       deleteProtectionState: DELETE_PROTECTION_ENABLED
///       deletionPolicy: DELETE
///       cmekConfig:
///         kmsKeyName: ${cryptoKey.id}
///     options:
///       dependsOn:
///         - ${firestoreCmekKeyuser}
///   cryptoKey:
///     type: gcp:kms:CryptoKey
///     name: crypto_key
///     properties:
///       name: kms-key
///       keyRing: ${keyRing.id}
///       purpose: ENCRYPT_DECRYPT
///   keyRing:
///     type: gcp:kms:KeyRing
///     name: key_ring
///     properties:
///       name: kms-key-ring
///       location: us
///   firestoreCmekKeyuser:
///     type: gcp:kms:CryptoKeyIAMBinding
///     name: firestore_cmek_keyuser
///     properties:
///       cryptoKeyId: ${cryptoKey.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       members:
///         - serviceAccount:service-${project.number}@gcp-sa-firestore.iam.gserviceaccount.com
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Firestore Database Enterprise
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const enterprise_db = new gcp.firestore.Database("enterprise-db", {
///     project: "my-project-name",
///     name: "database-id",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
///     databaseEdition: "ENTERPRISE",
///     deletionPolicy: "DELETE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// enterprise_db = gcp.firestore.Database("enterprise-db",
///     project="my-project-name",
///     name="database-id",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     database_edition="ENTERPRISE",
///     deletion_policy="DELETE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var enterprise_db = new Gcp.Firestore.Database("enterprise-db", new()
///     {
///         Project = "my-project-name",
///         Name = "database-id",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///         DatabaseEdition = "ENTERPRISE",
///         DeletionPolicy = "DELETE",
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
/// 		_, err := firestore.NewDatabase(ctx, "enterprise-db", &firestore.DatabaseArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Name:            pulumi.String("database-id"),
/// 			LocationId:      pulumi.String("nam5"),
/// 			Type:            pulumi.String("FIRESTORE_NATIVE"),
/// 			DatabaseEdition: pulumi.String("ENTERPRISE"),
/// 			DeletionPolicy:  pulumi.String("DELETE"),
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
///         var enterprise_db = new Database("enterprise-db", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("database-id")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .databaseEdition("ENTERPRISE")
///             .deletionPolicy("DELETE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   enterprise-db:
///     type: gcp:firestore:Database
///     properties:
///       project: my-project-name
///       name: database-id
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///       databaseEdition: ENTERPRISE
///       deletionPolicy: DELETE
/// ```
///
///
/// ## Import
///
/// Database can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/databases/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Database can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firestore/database:Database default projects/{{project}}/databases/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firestore/database:Database default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firestore/database:Database default {{name}}
/// ```
class Database extends pulumi.CustomResource {
  /// The App Engine integration mode to use for this database.
  /// Possible values are: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String> appEngineIntegrationMode;

  /// The CMEK (Customer Managed Encryption Key) configuration for a Firestore
  /// database. If not present, the database is secured by the default Google
  /// encryption key.
  /// Structure is documented below.
  late final pulumi.Output<DatabaseCmekConfig?> cmekConfig;

  /// The concurrency control mode to use for this database.
  /// Possible values are: `OPTIMISTIC`, `PESSIMISTIC`, `OPTIMISTIC_WITH_ENTITY_GROUPS`.
  late final pulumi.Output<String> concurrencyMode;

  /// Output only. The timestamp at which this database was created.
  late final pulumi.Output<String> createTime;

  /// The database edition.
  /// Possible values are: `STANDARD`, `ENTERPRISE`.
  late final pulumi.Output<String> databaseEdition;
  late final pulumi.Output<String> deleteProtectionState;
  late final pulumi.Output<String?> deletionPolicy;

  /// Output only. The earliest timestamp at which older versions of the data can be read from the database. See versionRetentionPeriod above; this field is populated with now - versionRetentionPeriod.
  /// This value is continuously updated, and becomes stale the moment it is queried. If you are using this value to recover data, make sure to account for the time from the moment when the value is queried to the moment when you initiate the recovery.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> earliestVersionTime;

  /// Output only. This checksum is computed by the server based on the value of other fields,
  /// and may be sent on update and delete requests to ensure the client has an
  /// up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Output only. The keyPrefix for this database.
  /// This keyPrefix is used, in combination with the project id ("~") to construct the application id
  /// that is returned from the Cloud Datastore APIs in Google App Engine first generation runtimes.
  /// This value may be empty in which case the appid to use for URL-encoded keys is the project_id (eg: foo instead of v~foo).
  late final pulumi.Output<String> keyPrefix;

  /// The location of the database. Available locations are listed at
  /// https://cloud.google.com/firestore/docs/locations.
  late final pulumi.Output<String> locationId;

  /// The ID to use for the database, which will become the final
  /// component of the database's resource name. This value should be 4-63
  /// characters. Valid characters are /[a-z][0-9]-/ with first character
  /// a letter and the last a letter or a number. Must not be
  /// UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/.
  /// "(default)" database id is also valid.
  late final pulumi.Output<String> name;

  /// Whether to enable the PITR feature on this database.
  /// If `POINT_IN_TIME_RECOVERY_ENABLED` is selected, reads are supported on selected versions of the data from within the past 7 days.
  /// versionRetentionPeriod and earliestVersionTime can be used to determine the supported versions. These include reads against any timestamp within the past hour
  /// and reads against 1-minute snapshots beyond 1 hour and within 7 days.
  /// If `POINT_IN_TIME_RECOVERY_DISABLED` is selected, reads are supported on any version of the data from within the past 1 hour.
  /// Default value is `POINT_IN_TIME_RECOVERY_DISABLED`.
  /// Possible values are: `POINT_IN_TIME_RECOVERY_ENABLED`, `POINT_IN_TIME_RECOVERY_DISABLED`.
  late final pulumi.Output<String?> pointInTimeRecoveryEnablement;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Input only. A map of resource manager tags. Resource manager tag keys
  /// and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  /// The field is ignored when empty. The field is immutable and causes
  /// resource replacement when mutated. To apply tags to an existing resource, see
  /// the `gcp.tags.TagValue` resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the database.
  /// See https://cloud.google.com/datastore/docs/firestore-or-datastore
  /// for information about how to choose.
  /// Possible values are: `FIRESTORE_NATIVE`, `DATASTORE_MODE`.
  late final pulumi.Output<String> type;

  /// Output only. The system-generated UUID4 for this Database.
  late final pulumi.Output<String> uid;

  /// Output only. The timestamp at which this database was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Output only. The period during which past versions of data are retained in the database.
  /// Any read or query can specify a readTime within this window, and will read the state of the database at that time.
  /// If the PITR feature is enabled, the retention period is 7 days. Otherwise, the retention period is 1 hour.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final pulumi.Output<String> versionRetentionPeriod;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_firestore_database_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:firestore/database:Database',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.appEngineIntegrationMode = registerOutput<String>(
      'appEngineIntegrationMode',
    );
    this.cmekConfig = registerOutput<DatabaseCmekConfig?>('cmekConfig');
    this.concurrencyMode = registerOutput<String>('concurrencyMode');
    this.createTime = registerOutput<String>('createTime');
    this.databaseEdition = registerOutput<String>('databaseEdition');
    this.deleteProtectionState = registerOutput<String>(
      'deleteProtectionState',
    );
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.earliestVersionTime = registerOutput<String>('earliestVersionTime');
    this.etag = registerOutput<String>('etag');
    this.keyPrefix = registerOutput<String>('keyPrefix');
    this.locationId = registerOutput<String>('locationId');
    this.name = registerOutput<String>('name');
    this.pointInTimeRecoveryEnablement = registerOutput<String?>(
      'pointInTimeRecoveryEnablement',
    );
    this.project = registerOutput<String>('project');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.versionRetentionPeriod = registerOutput<String>(
      'versionRetentionPeriod',
    );
  }
}
