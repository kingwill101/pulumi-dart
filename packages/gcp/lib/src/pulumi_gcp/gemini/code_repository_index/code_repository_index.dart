import 'package:pulumi/pulumi.dart';
import 'code_repository_index_args.dart';

/// The resource for managing Code Repository Index for Gemini Code Assist.
///
///
/// To get more information about CodeRepositoryIndex, see:
///
/// * [API documentation](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.codeRepositoryIndexes)
/// * How-to Guides
/// * [Gemini Code Assist overview](https://cloud.google.com/gemini/docs/codeassist/overview)
///
/// ## Example Usage
///
/// ### Gemini Code Repository Index Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.gemini.CodeRepositoryIndex("example", {
/// location: "us-central1",
/// codeRepositoryIndexId: "code-repository-index-example",
/// kmsKey: "projects/projectExample/locations/locationExample/keyRings/keyRingExample/cryptoKeys/cryptoKeyExample",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gemini.CodeRepositoryIndex("example",
/// location="us-central1",
/// code_repository_index_id="code-repository-index-example",
/// kms_key="projects/projectExample/locations/locationExample/keyRings/keyRingExample/cryptoKeys/cryptoKeyExample")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Gcp.Gemini.CodeRepositoryIndex("example", new()
/// {
/// Location = "us-central1",
/// CodeRepositoryIndexId = "code-repository-index-example",
/// KmsKey = "projects/projectExample/locations/locationExample/keyRings/keyRingExample/cryptoKeys/cryptoKeyExample",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gemini"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gemini.NewCodeRepositoryIndex(ctx, "example", &gemini.CodeRepositoryIndexArgs{
/// Location:              pulumi.String("us-central1"),
/// CodeRepositoryIndexId: pulumi.String("code-repository-index-example"),
/// KmsKey:                pulumi.String("projects/projectExample/locations/locationExample/keyRings/keyRingExample/cryptoKeys/cryptoKeyExample"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gemini.CodeRepositoryIndex;
/// import com.pulumi.gcp.gemini.CodeRepositoryIndexArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new CodeRepositoryIndex("example", CodeRepositoryIndexArgs.builder()
/// .location("us-central1")
/// .codeRepositoryIndexId("code-repository-index-example")
/// .kmsKey("projects/projectExample/locations/locationExample/keyRings/keyRingExample/cryptoKeys/cryptoKeyExample")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:gemini:CodeRepositoryIndex
/// properties:
/// location: us-central1
/// codeRepositoryIndexId: code-repository-index-example
/// kmsKey: projects/projectExample/locations/locationExample/keyRings/keyRingExample/cryptoKeys/cryptoKeyExample
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// CodeRepositoryIndex can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index_id}}`
///
/// * `{{project}}/{{location}}/{{code_repository_index_id}}`
///
/// * `{{location}}/{{code_repository_index_id}}`
///
/// When using the `pulumi import` command, CodeRepositoryIndex can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/codeRepositoryIndex:CodeRepositoryIndex default projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/codeRepositoryIndex:CodeRepositoryIndex default {{project}}/{{location}}/{{code_repository_index_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/codeRepositoryIndex:CodeRepositoryIndex default {{location}}/{{code_repository_index_id}}
/// ```
class CodeRepositoryIndex extends CustomResource {
  /// Required. Id of the Code Repository Index.
  late final Output<String> codeRepositoryIndexId;

  /// Output only. Create time stamp.
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// If set to true, will allow deletion of the CodeRepositoryIndex even if there are existing RepositoryGroups for the resource. These RepositoryGroups will also be deleted.
  late final Output<bool?> forceDestroy;

  /// Optional. Immutable. Customer-managed encryption key name, in the format
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  late final Output<String?> kmsKey;

  /// Optional. Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location of the Code Repository Index, for example `us-central1`.
  late final Output<String> location;

  /// Immutable. Identifier. Name of Code Repository Index.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Output only. Code Repository Index instance State.
  /// Possible values are: `STATE_UNSPECIFIED`, `CREATING`, `ACTIVE`, `DELETING`, `SUSPENDED`.
  late final Output<String> state;

  /// Output only. Update time stamp.
  late final Output<String> updateTime;

  CodeRepositoryIndex(
    String name, {
    CodeRepositoryIndexArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/codeRepositoryIndex:CodeRepositoryIndex',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.codeRepositoryIndexId =
        registerOutput<String>('codeRepositoryIndexId');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
