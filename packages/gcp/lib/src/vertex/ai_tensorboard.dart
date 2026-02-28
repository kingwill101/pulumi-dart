import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_tensorboard_args.dart';
import 'ai_tensorboard_encryption_spec.dart';

/// Tensorboard is a physical database that stores users' training metrics. A default Tensorboard is provided in each region of a GCP project. If needed users can also create extra Tensorboards in their projects.
///
///
/// To get more information about Tensorboard, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.tensorboards)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Tensorboard
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tensorboard = new gcp.vertex.AiTensorboard("tensorboard", {
///     displayName: "terraform",
///     description: "sample description",
///     labels: {
///         key1: "value1",
///         key2: "value2",
///     },
///     region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tensorboard = gcp.vertex.AiTensorboard("tensorboard",
///     display_name="terraform",
///     description="sample description",
///     labels={
///         "key1": "value1",
///         "key2": "value2",
///     },
///     region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tensorboard = new Gcp.Vertex.AiTensorboard("tensorboard", new()
///     {
///         DisplayName = "terraform",
///         Description = "sample description",
///         Labels =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
///         },
///         Region = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiTensorboard(ctx, "tensorboard", &vertex.AiTensorboardArgs{
/// 			DisplayName: pulumi.String("terraform"),
/// 			Description: pulumi.String("sample description"),
/// 			Labels: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
/// 			},
/// 			Region: pulumi.String("us-central1"),
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
/// import com.pulumi.gcp.vertex.AiTensorboard;
/// import com.pulumi.gcp.vertex.AiTensorboardArgs;
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
///         var tensorboard = new AiTensorboard("tensorboard", AiTensorboardArgs.builder()
///             .displayName("terraform")
///             .description("sample description")
///             .labels(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
///             ))
///             .region("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tensorboard:
///     type: gcp:vertex:AiTensorboard
///     properties:
///       displayName: terraform
///       description: sample description
///       labels:
///         key1: value1
///         key2: value2
///       region: us-central1
/// ```
///
/// ### Vertex Ai Tensorboard Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const cryptoKey = new gcp.kms.CryptoKeyIAMMember("crypto_key", {
///     cryptoKeyId: "kms-name",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com`),
/// });
/// const tensorboard = new gcp.vertex.AiTensorboard("tensorboard", {
///     displayName: "terraform",
///     description: "sample description",
///     labels: {
///         key1: "value1",
///         key2: "value2",
///     },
///     region: "us-central1",
///     encryptionSpec: {
///         kmsKeyName: "kms-name",
///     },
/// }, {
///     dependsOn: [cryptoKey],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// crypto_key = gcp.kms.CryptoKeyIAMMember("crypto_key",
///     crypto_key_id="kms-name",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com")
/// tensorboard = gcp.vertex.AiTensorboard("tensorboard",
///     display_name="terraform",
///     description="sample description",
///     labels={
///         "key1": "value1",
///         "key2": "value2",
///     },
///     region="us-central1",
///     encryption_spec={
///         "kms_key_name": "kms-name",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[crypto_key]))
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
///     var cryptoKey = new Gcp.Kms.CryptoKeyIAMMember("crypto_key", new()
///     {
///         CryptoKeyId = "kms-name",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-aiplatform.iam.gserviceaccount.com",
///     });
///
///     var tensorboard = new Gcp.Vertex.AiTensorboard("tensorboard", new()
///     {
///         DisplayName = "terraform",
///         Description = "sample description",
///         Labels =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
///         },
///         Region = "us-central1",
///         EncryptionSpec = new Gcp.Vertex.Inputs.AiTensorboardEncryptionSpecArgs
///         {
///             KmsKeyName = "kms-name",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cryptoKey,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("kms-name"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-aiplatform.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiTensorboard(ctx, "tensorboard", &vertex.AiTensorboardArgs{
/// 			DisplayName: pulumi.String("terraform"),
/// 			Description: pulumi.String("sample description"),
/// 			Labels: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
/// 			},
/// 			Region: pulumi.String("us-central1"),
/// 			EncryptionSpec: &vertex.AiTensorboardEncryptionSpecArgs{
/// 				KmsKeyName: pulumi.String("kms-name"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cryptoKey,
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
/// import com.pulumi.gcp.vertex.AiTensorboard;
/// import com.pulumi.gcp.vertex.AiTensorboardArgs;
/// import com.pulumi.gcp.vertex.inputs.AiTensorboardEncryptionSpecArgs;
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
///         var cryptoKey = new CryptoKeyIAMMember("cryptoKey", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("kms-name")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-aiplatform.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var tensorboard = new AiTensorboard("tensorboard", AiTensorboardArgs.builder()
///             .displayName("terraform")
///             .description("sample description")
///             .labels(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
///             ))
///             .region("us-central1")
///             .encryptionSpec(AiTensorboardEncryptionSpecArgs.builder()
///                 .kmsKeyName("kms-name")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cryptoKey)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tensorboard:
///     type: gcp:vertex:AiTensorboard
///     properties:
///       displayName: terraform
///       description: sample description
///       labels:
///         key1: value1
///         key2: value2
///       region: us-central1
///       encryptionSpec:
///         kmsKeyName: kms-name
///     options:
///       dependsOn:
///         - ${cryptoKey}
///   cryptoKey:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: crypto_key
///     properties:
///       cryptoKeyId: kms-name
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com
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
/// Tensorboard can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/tensorboards/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Tensorboard can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiTensorboard:AiTensorboard default projects/{{project}}/locations/{{region}}/tensorboards/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiTensorboard:AiTensorboard default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiTensorboard:AiTensorboard default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiTensorboard:AiTensorboard default {{name}}
/// ```
class AiTensorboard extends pulumi.CustomResource {
  /// Consumer project Cloud Storage path prefix used to store blob data, which can either be a bucket or directory. Does not end with a '/'.
  late final pulumi.Output<String> blobStoragePathPrefix;
  /// The timestamp of when the Tensorboard was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;
  /// Description of this Tensorboard.
  late final pulumi.Output<String?> description;
  /// User provided name of this Tensorboard.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key.
  /// Structure is documented below.
  late final pulumi.Output<AiTensorboardEncryptionSpec?> encryptionSpec;
  /// The labels with user-defined metadata to organize your Tensorboards.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Name of the Tensorboard.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of the tensorboard. eg us-central1
  late final pulumi.Output<String> region;
  /// The number of Runs stored in this Tensorboard.
  late final pulumi.Output<String> runCount;
  /// The timestamp of when the Tensorboard was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiTensorboard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiTensorboard]. {@macro pulumi_vertex_ai_tensorboard_ai_tensorboard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiTensorboard(
    String name, {
    AiTensorboardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiTensorboard:AiTensorboard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blobStoragePathPrefix = registerOutput<String>('blobStoragePathPrefix');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.encryptionSpec = registerOutput<AiTensorboardEncryptionSpec?>('encryptionSpec');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.runCount = registerOutput<String>('runCount');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
