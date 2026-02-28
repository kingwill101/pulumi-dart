import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_args.dart';
import 'secret_replication.dart';
import 'secret_rotation.dart';
import 'secret_topic.dart';

/// A Secret is a logical secret whose value and versions can be accessed.
///
///
/// To get more information about Secret, see:
///
/// * [API documentation](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.secrets)
/// * How-to Guides
/// * [Create and deploy a Secret](https://cloud.google.com/secret-manager/docs/creating-and-accessing-secrets)
///
/// ## Example Usage
///
/// ### Secret Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret_basic = new gcp.secretmanager.Secret("secret-basic", {
///     secretId: "secret",
///     labels: {
///         label: "my-label",
///     },
///     replication: {
///         userManaged: {
///             replicas: [
///                 {
///                     location: "us-central1",
///                 },
///                 {
///                     location: "us-east1",
///                 },
///             ],
///         },
///     },
///     deletionProtection: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret_basic = gcp.secretmanager.Secret("secret-basic",
///     secret_id="secret",
///     labels={
///         "label": "my-label",
///     },
///     replication={
///         "user_managed": {
///             "replicas": [
///                 {
///                     "location": "us-central1",
///                 },
///                 {
///                     "location": "us-east1",
///                 },
///             ],
///         },
///     },
///     deletion_protection=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret_basic = new Gcp.SecretManager.Secret("secret-basic", new()
///     {
///         SecretId = "secret",
///         Labels =
///         {
///             { "label", "my-label" },
///         },
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             UserManaged = new Gcp.SecretManager.Inputs.SecretReplicationUserManagedArgs
///             {
///                 Replicas = new[]
///                 {
///                     new Gcp.SecretManager.Inputs.SecretReplicationUserManagedReplicaArgs
///                     {
///                         Location = "us-central1",
///                     },
///                     new Gcp.SecretManager.Inputs.SecretReplicationUserManagedReplicaArgs
///                     {
///                         Location = "us-east1",
///                     },
///                 },
///             },
///         },
///         DeletionProtection = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretmanager.NewSecret(ctx, "secret-basic", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("my-label"),
/// 			},
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				UserManaged: &secretmanager.SecretReplicationUserManagedArgs{
/// 					Replicas: secretmanager.SecretReplicationUserManagedReplicaArray{
/// 						&secretmanager.SecretReplicationUserManagedReplicaArgs{
/// 							Location: pulumi.String("us-central1"),
/// 						},
/// 						&secretmanager.SecretReplicationUserManagedReplicaArgs{
/// 							Location: pulumi.String("us-east1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationUserManagedArgs;
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
///         var secret_basic = new Secret("secret-basic", SecretArgs.builder()
///             .secretId("secret")
///             .labels(Map.of("label", "my-label"))
///             .replication(SecretReplicationArgs.builder()
///                 .userManaged(SecretReplicationUserManagedArgs.builder()
///                     .replicas(
///                         SecretReplicationUserManagedReplicaArgs.builder()
///                             .location("us-central1")
///                             .build(),
///                         SecretReplicationUserManagedReplicaArgs.builder()
///                             .location("us-east1")
///                             .build())
///                     .build())
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret-basic:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret
///       labels:
///         label: my-label
///       replication:
///         userManaged:
///           replicas:
///             - location: us-central1
///             - location: us-east1
///       deletionProtection: false
/// ```
///
/// ### Secret With Annotations
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret_with_annotations = new gcp.secretmanager.Secret("secret-with-annotations", {
///     secretId: "secret",
///     labels: {
///         label: "my-label",
///     },
///     annotations: {
///         key1: "someval",
///         key2: "someval2",
///         key3: "someval3",
///         key4: "someval4",
///         key5: "someval5",
///     },
///     replication: {
///         auto: {},
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret_with_annotations = gcp.secretmanager.Secret("secret-with-annotations",
///     secret_id="secret",
///     labels={
///         "label": "my-label",
///     },
///     annotations={
///         "key1": "someval",
///         "key2": "someval2",
///         "key3": "someval3",
///         "key4": "someval4",
///         "key5": "someval5",
///     },
///     replication={
///         "auto": {},
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
///     var secret_with_annotations = new Gcp.SecretManager.Secret("secret-with-annotations", new()
///     {
///         SecretId = "secret",
///         Labels =
///         {
///             { "label", "my-label" },
///         },
///         Annotations =
///         {
///             { "key1", "someval" },
///             { "key2", "someval2" },
///             { "key3", "someval3" },
///             { "key4", "someval4" },
///             { "key5", "someval5" },
///         },
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretmanager.NewSecret(ctx, "secret-with-annotations", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("my-label"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"key1": pulumi.String("someval"),
/// 				"key2": pulumi.String("someval2"),
/// 				"key3": pulumi.String("someval3"),
/// 				"key4": pulumi.String("someval4"),
/// 				"key5": pulumi.String("someval5"),
/// 			},
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
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
///         var secret_with_annotations = new Secret("secret-with-annotations", SecretArgs.builder()
///             .secretId("secret")
///             .labels(Map.of("label", "my-label"))
///             .annotations(Map.ofEntries(
///                 Map.entry("key1", "someval"),
///                 Map.entry("key2", "someval2"),
///                 Map.entry("key3", "someval3"),
///                 Map.entry("key4", "someval4"),
///                 Map.entry("key5", "someval5")
///             ))
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret-with-annotations:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret
///       labels:
///         label: my-label
///       annotations:
///         key1: someval
///         key2: someval2
///         key3: someval3
///         key4: someval4
///         key5: someval5
///       replication:
///         auto: {}
/// ```
///
/// ### Secret With Version Destroy Ttl
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret_with_version_destroy_ttl = new gcp.secretmanager.Secret("secret-with-version-destroy-ttl", {
///     secretId: "secret",
///     versionDestroyTtl: "2592000s",
///     replication: {
///         auto: {},
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret_with_version_destroy_ttl = gcp.secretmanager.Secret("secret-with-version-destroy-ttl",
///     secret_id="secret",
///     version_destroy_ttl="2592000s",
///     replication={
///         "auto": {},
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
///     var secret_with_version_destroy_ttl = new Gcp.SecretManager.Secret("secret-with-version-destroy-ttl", new()
///     {
///         SecretId = "secret",
///         VersionDestroyTtl = "2592000s",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretmanager.NewSecret(ctx, "secret-with-version-destroy-ttl", &secretmanager.SecretArgs{
/// 			SecretId:          pulumi.String("secret"),
/// 			VersionDestroyTtl: pulumi.String("2592000s"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
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
///         var secret_with_version_destroy_ttl = new Secret("secret-with-version-destroy-ttl", SecretArgs.builder()
///             .secretId("secret")
///             .versionDestroyTtl("2592000s")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret-with-version-destroy-ttl:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret
///       versionDestroyTtl: 2592000s
///       replication:
///         auto: {}
/// ```
///
/// ### Secret With Automatic Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const kms_secret_binding = new gcp.kms.CryptoKeyIAMMember("kms-secret-binding", {
///     cryptoKeyId: "kms-key",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-secretmanager.iam.gserviceaccount.com`),
/// });
/// const secret_with_automatic_cmek = new gcp.secretmanager.Secret("secret-with-automatic-cmek", {
///     secretId: "secret",
///     replication: {
///         auto: {
///             customerManagedEncryption: {
///                 kmsKeyName: "kms-key",
///             },
///         },
///     },
/// }, {
///     dependsOn: [kms_secret_binding],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// kms_secret_binding = gcp.kms.CryptoKeyIAMMember("kms-secret-binding",
///     crypto_key_id="kms-key",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-secretmanager.iam.gserviceaccount.com")
/// secret_with_automatic_cmek = gcp.secretmanager.Secret("secret-with-automatic-cmek",
///     secret_id="secret",
///     replication={
///         "auto": {
///             "customer_managed_encryption": {
///                 "kms_key_name": "kms-key",
///             },
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[kms_secret_binding]))
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
///     var kms_secret_binding = new Gcp.Kms.CryptoKeyIAMMember("kms-secret-binding", new()
///     {
///         CryptoKeyId = "kms-key",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-secretmanager.iam.gserviceaccount.com",
///     });
///
///     var secret_with_automatic_cmek = new Gcp.SecretManager.Secret("secret-with-automatic-cmek", new()
///     {
///         SecretId = "secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = new Gcp.SecretManager.Inputs.SecretReplicationAutoArgs
///             {
///                 CustomerManagedEncryption = new Gcp.SecretManager.Inputs.SecretReplicationAutoCustomerManagedEncryptionArgs
///                 {
///                     KmsKeyName = "kms-key",
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             kms_secret_binding,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		kms_secret_binding, err := kms.NewCryptoKeyIAMMember(ctx, "kms-secret-binding", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("kms-key"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-secretmanager.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecret(ctx, "secret-with-automatic-cmek", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{
/// 					CustomerManagedEncryption: &secretmanager.SecretReplicationAutoCustomerManagedEncryptionArgs{
/// 						KmsKeyName: pulumi.String("kms-key"),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			kms_secret_binding,
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
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoCustomerManagedEncryptionArgs;
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
///         var kms_secret_binding = new CryptoKeyIAMMember("kms-secret-binding", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("kms-key")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-secretmanager.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var secret_with_automatic_cmek = new Secret("secret-with-automatic-cmek", SecretArgs.builder()
///             .secretId("secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .customerManagedEncryption(SecretReplicationAutoCustomerManagedEncryptionArgs.builder()
///                         .kmsKeyName("kms-key")
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(kms_secret_binding)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   kms-secret-binding:
///     type: gcp:kms:CryptoKeyIAMMember
///     properties:
///       cryptoKeyId: kms-key
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${project.number}@gcp-sa-secretmanager.iam.gserviceaccount.com
///   secret-with-automatic-cmek:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret
///       replication:
///         auto:
///           customerManagedEncryption:
///             kmsKeyName: kms-key
///     options:
///       dependsOn:
///         - ${["kms-secret-binding"]}
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
/// Secret can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/secrets/{{secret_id}}`
///
/// * `{{project}}/{{secret_id}}`
///
/// * `{{secret_id}}`
///
/// When using the `pulumi import` command, Secret can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:secretmanager/secret:Secret default projects/{{project}}/secrets/{{secret_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:secretmanager/secret:Secret default {{project}}/{{secret_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:secretmanager/secret:Secret default {{secret_id}}
/// ```
class Secret extends pulumi.CustomResource {
  /// Custom metadata about the secret.
  /// Annotations are distinct from various forms of labels. Annotations exist to allow
  /// client tools to store their own state information without requiring a database.
  /// Annotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of
  /// maximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and
  /// may have dashes (-), underscores (_), dots (.), and alphanumerics in between these
  /// symbols.
  /// The total size of annotation keys and values must be less than 16KiB.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// The time at which the Secret was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<bool?> deletionProtection;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Timestamp in UTC when the Secret is scheduled to expire. This is always provided on output, regardless of what was sent on input.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  /// Only one of `expire_time` or `ttl` can be provided.
  late final pulumi.Output<String> expireTime;

  /// The labels assigned to this Secret.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be assigned to a given resource.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The resource name of the Secret. Format:
  /// `projects/{{project}}/secrets/{{secret_id}}`
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The replication policy of the secret data attached to the Secret. It cannot be changed
  /// after the Secret has been created.
  /// Structure is documented below.
  late final pulumi.Output<SecretReplication> replication;

  /// The rotation time and period for a Secret. At `next_rotation_time`, Secret Manager will send a Pub/Sub notification to the topics configured on the Secret. `topics` must be set to configure rotation.
  /// Structure is documented below.
  late final pulumi.Output<SecretRotation?> rotation;

  /// This must be unique within the project.
  late final pulumi.Output<String> secretId;

  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions.
  /// Structure is documented below.
  late final pulumi.Output<List<SecretTopic>?> topics;

  /// The TTL for the Secret.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  /// Only one of `ttl` or `expire_time` can be provided.
  late final pulumi.Output<String?> ttl;

  /// Mapping from version alias to version name.
  /// A version alias is a string with a maximum length of 63 characters and can contain
  /// uppercase and lowercase letters, numerals, and the hyphen (-) and underscore ('_')
  /// characters. An alias string must start with a letter and cannot be the string
  /// 'latest' or 'NEW'. No more than 50 aliases can be assigned to a given secret.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  late final pulumi.Output<Map<String, String>?> versionAliases;

  /// Secret Version TTL after destruction request.
  /// This is a part of the delayed delete feature on Secret Version.
  /// For secret with versionDestroyTtl>0, version destruction doesn't happen immediately
  /// on calling destroy instead the version goes to a disabled state and
  /// the actual destruction happens after this TTL expires.
  late final pulumi.Output<String?> versionDestroyTtl;

  /// Creates a new [Secret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Secret]. {@macro pulumi_secretmanager_secret_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Secret(
    String name, {
    SecretArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:secretmanager/secret:Secret',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.expireTime = registerOutput<String>('expireTime');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.replication = registerOutput<SecretReplication>('replication');
    this.rotation = registerOutput<SecretRotation?>('rotation');
    this.secretId = registerOutput<String>('secretId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.topics = registerOutput<List<SecretTopic>?>('topics');
    this.ttl = registerOutput<String?>('ttl');
    this.versionAliases =
        registerOutput<Map<String, String>?>('versionAliases');
    this.versionDestroyTtl = registerOutput<String?>('versionDestroyTtl');
  }
}
