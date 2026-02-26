import 'package:pulumi/pulumi.dart';
import 'glossary_args.dart';

/// Represents a collection of categories and terms defined by the user. Glossary is a top level resource and is the GCP parent resource of all the categories and terms within it.
///
///
///
/// ## Example Usage
///
/// ### Dataplex Glossary Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const glossaryTestId = new gcp.dataplex.Glossary("glossary_test_id", {
/// glossaryId: "glossary-basic",
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// glossary_test_id = gcp.dataplex.Glossary("glossary_test_id",
/// glossary_id="glossary-basic",
/// location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var glossaryTestId = new Gcp.DataPlex.Glossary("glossary_test_id", new()
/// {
/// GlossaryId = "glossary-basic",
/// Location = "us-central1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataplex.NewGlossary(ctx, "glossary_test_id", &dataplex.GlossaryArgs{
/// GlossaryId: pulumi.String("glossary-basic"),
/// Location:   pulumi.String("us-central1"),
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
/// import com.pulumi.gcp.dataplex.Glossary;
/// import com.pulumi.gcp.dataplex.GlossaryArgs;
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
/// var glossaryTestId = new Glossary("glossaryTestId", GlossaryArgs.builder()
/// .glossaryId("glossary-basic")
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// glossaryTestId:
/// type: gcp:dataplex:Glossary
/// name: glossary_test_id
/// properties:
/// glossaryId: glossary-basic
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataplex Glossary Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const glossaryTestIdFull = new gcp.dataplex.Glossary("glossary_test_id_full", {
/// glossaryId: "glossary-full",
/// location: "us-central1",
/// labels: {
/// tag: "test-tf",
/// },
/// displayName: "terraform glossary",
/// description: "glossary created by Terraform",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// glossary_test_id_full = gcp.dataplex.Glossary("glossary_test_id_full",
/// glossary_id="glossary-full",
/// location="us-central1",
/// labels={
/// "tag": "test-tf",
/// },
/// display_name="terraform glossary",
/// description="glossary created by Terraform")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var glossaryTestIdFull = new Gcp.DataPlex.Glossary("glossary_test_id_full", new()
/// {
/// GlossaryId = "glossary-full",
/// Location = "us-central1",
/// Labels =
/// {
/// { "tag", "test-tf" },
/// },
/// DisplayName = "terraform glossary",
/// Description = "glossary created by Terraform",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataplex.NewGlossary(ctx, "glossary_test_id_full", &dataplex.GlossaryArgs{
/// GlossaryId: pulumi.String("glossary-full"),
/// Location:   pulumi.String("us-central1"),
/// Labels: pulumi.StringMap{
/// "tag": pulumi.String("test-tf"),
/// },
/// DisplayName: pulumi.String("terraform glossary"),
/// Description: pulumi.String("glossary created by Terraform"),
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
/// import com.pulumi.gcp.dataplex.Glossary;
/// import com.pulumi.gcp.dataplex.GlossaryArgs;
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
/// var glossaryTestIdFull = new Glossary("glossaryTestIdFull", GlossaryArgs.builder()
/// .glossaryId("glossary-full")
/// .location("us-central1")
/// .labels(Map.of("tag", "test-tf"))
/// .displayName("terraform glossary")
/// .description("glossary created by Terraform")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// glossaryTestIdFull:
/// type: gcp:dataplex:Glossary
/// name: glossary_test_id_full
/// properties:
/// glossaryId: glossary-full
/// location: us-central1
/// labels:
/// tag: test-tf
/// displayName: terraform glossary
/// description: glossary created by Terraform
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Glossary can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}`
///
/// * `{{project}}/{{location}}/{{glossary_id}}`
///
/// * `{{location}}/{{glossary_id}}`
///
/// When using the `pulumi import` command, Glossary can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossary:Glossary default projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossary:Glossary default {{project}}/{{location}}/{{glossary_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossary:Glossary default {{location}}/{{glossary_id}}
/// ```
class Glossary extends CustomResource {
  /// The number of categories in the glossary.
  late final Output<int> categoryCount;

  /// The time at which the glossary was created.
  late final Output<String> createTime;

  /// The user-mutable description of the glossary.
  late final Output<String?> description;

  /// User friendly display name of the glossary. This is user-mutable. This will be same as the glossaryId, if not specified.
  late final Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The glossary id for creation.
  late final Output<String> glossaryId;

  /// User-defined labels for the Glossary.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location where the glossary should reside.
  late final Output<String> location;

  /// The resource name of the Glossary. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The number of terms in the glossary.
  late final Output<int> termCount;

  /// System generated unique id for the Glossary. This ID will be different if the Glossary is deleted and re-created with the same name.
  late final Output<String> uid;

  /// The time at which the glossary was last updated.
  late final Output<String> updateTime;

  Glossary(
    String name, {
    GlossaryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/glossary:Glossary',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.categoryCount = registerOutput<int>('categoryCount');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.glossaryId = registerOutput<String>('glossaryId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.termCount = registerOutput<int>('termCount');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
