import 'package:pulumi/pulumi.dart';
import 'glossary_term_args.dart';

/// Represents a collection of terms within a Glossary that are related to each other.
///
///
///
/// ## Example Usage
///
/// ### Dataplex Glossary Term Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const termTestId = new gcp.dataplex.Glossary("term_test_id", {
/// glossaryId: "tf-test-glossary_37559",
/// location: "us-central1",
/// });
/// const termTestIdGlossaryTerm = new gcp.dataplex.GlossaryTerm("term_test_id", {
/// parent: pulumi.interpolate`projects/${termTestId.project}/locations/us-central1/glossaries/${termTestId.glossaryId}`,
/// glossaryId: termTestId.glossaryId,
/// location: "us-central1",
/// termId: "tf-test-term-basic_91980",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// term_test_id = gcp.dataplex.Glossary("term_test_id",
/// glossary_id="tf-test-glossary_37559",
/// location="us-central1")
/// term_test_id_glossary_term = gcp.dataplex.GlossaryTerm("term_test_id",
/// parent=pulumi.Output.all(
/// project=term_test_id.project,
/// glossary_id=term_test_id.glossary_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us-central1/glossaries/{resolved_outputs['glossary_id']}")
/// ,
/// glossary_id=term_test_id.glossary_id,
/// location="us-central1",
/// term_id="tf-test-term-basic_91980")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var termTestId = new Gcp.DataPlex.Glossary("term_test_id", new()
/// {
/// GlossaryId = "tf-test-glossary_37559",
/// Location = "us-central1",
/// });
///
/// var termTestIdGlossaryTerm = new Gcp.DataPlex.GlossaryTerm("term_test_id", new()
/// {
/// Parent = Output.Tuple(termTestId.Project, termTestId.GlossaryId).Apply(values =>
/// {
/// var project = values.Item1;
/// var glossaryId = values.Item2;
/// return $"projects/{project}/locations/us-central1/glossaries/{glossaryId}";
/// }),
/// GlossaryId = termTestId.GlossaryId,
/// Location = "us-central1",
/// TermId = "tf-test-term-basic_91980",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// termTestId, err := dataplex.NewGlossary(ctx, "term_test_id", &dataplex.GlossaryArgs{
/// GlossaryId: pulumi.String("tf-test-glossary_37559"),
/// Location:   pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = dataplex.NewGlossaryTerm(ctx, "term_test_id", &dataplex.GlossaryTermArgs{
/// Parent: pulumi.All(termTestId.Project, termTestId.GlossaryId).ApplyT(func(_args []interface{}) (string, error) {
/// project := _args[0].(string)
/// glossaryId := _args[1].(string)
/// return fmt.Sprintf("projects/%v/locations/us-central1/glossaries/%v", project, glossaryId), nil
/// }).(pulumi.StringOutput),
/// GlossaryId: termTestId.GlossaryId,
/// Location:   pulumi.String("us-central1"),
/// TermId:     pulumi.String("tf-test-term-basic_91980"),
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
/// import com.pulumi.gcp.dataplex.GlossaryTerm;
/// import com.pulumi.gcp.dataplex.GlossaryTermArgs;
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
/// var termTestId = new Glossary("termTestId", GlossaryArgs.builder()
/// .glossaryId("tf-test-glossary_37559")
/// .location("us-central1")
/// .build());
///
/// var termTestIdGlossaryTerm = new GlossaryTerm("termTestIdGlossaryTerm", GlossaryTermArgs.builder()
/// .parent(Output.tuple(termTestId.project(), termTestId.glossaryId()).applyValue(values -> {
/// var project = values.t1;
/// var glossaryId = values.t2;
/// return String.format("projects/%s/locations/us-central1/glossaries/%s", project,glossaryId);
/// }))
/// .glossaryId(termTestId.glossaryId())
/// .location("us-central1")
/// .termId("tf-test-term-basic_91980")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// termTestId:
/// type: gcp:dataplex:Glossary
/// name: term_test_id
/// properties:
/// glossaryId: tf-test-glossary_37559
/// location: us-central1
/// termTestIdGlossaryTerm:
/// type: gcp:dataplex:GlossaryTerm
/// name: term_test_id
/// properties:
/// parent: projects/${termTestId.project}/locations/us-central1/glossaries/${termTestId.glossaryId}
/// glossaryId: ${termTestId.glossaryId}
/// location: us-central1
/// termId: tf-test-term-basic_91980
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataplex Glossary Term Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const termTestIdFull = new gcp.dataplex.Glossary("term_test_id_full", {
/// glossaryId: "tf-test-glossary_37118",
/// location: "us-central1",
/// });
/// const termTestIdFullGlossaryTerm = new gcp.dataplex.GlossaryTerm("term_test_id_full", {
/// parent: pulumi.interpolate`projects/${termTestIdFull.project}/locations/us-central1/glossaries/${termTestIdFull.glossaryId}`,
/// glossaryId: termTestIdFull.glossaryId,
/// location: "us-central1",
/// termId: "tf-test-term-full_80332",
/// labels: {
/// tag: "test-tf",
/// },
/// displayName: "terraform term",
/// description: "term created by Terraform",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// term_test_id_full = gcp.dataplex.Glossary("term_test_id_full",
/// glossary_id="tf-test-glossary_37118",
/// location="us-central1")
/// term_test_id_full_glossary_term = gcp.dataplex.GlossaryTerm("term_test_id_full",
/// parent=pulumi.Output.all(
/// project=term_test_id_full.project,
/// glossary_id=term_test_id_full.glossary_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us-central1/glossaries/{resolved_outputs['glossary_id']}")
/// ,
/// glossary_id=term_test_id_full.glossary_id,
/// location="us-central1",
/// term_id="tf-test-term-full_80332",
/// labels={
/// "tag": "test-tf",
/// },
/// display_name="terraform term",
/// description="term created by Terraform")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var termTestIdFull = new Gcp.DataPlex.Glossary("term_test_id_full", new()
/// {
/// GlossaryId = "tf-test-glossary_37118",
/// Location = "us-central1",
/// });
///
/// var termTestIdFullGlossaryTerm = new Gcp.DataPlex.GlossaryTerm("term_test_id_full", new()
/// {
/// Parent = Output.Tuple(termTestIdFull.Project, termTestIdFull.GlossaryId).Apply(values =>
/// {
/// var project = values.Item1;
/// var glossaryId = values.Item2;
/// return $"projects/{project}/locations/us-central1/glossaries/{glossaryId}";
/// }),
/// GlossaryId = termTestIdFull.GlossaryId,
/// Location = "us-central1",
/// TermId = "tf-test-term-full_80332",
/// Labels =
/// {
/// { "tag", "test-tf" },
/// },
/// DisplayName = "terraform term",
/// Description = "term created by Terraform",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// termTestIdFull, err := dataplex.NewGlossary(ctx, "term_test_id_full", &dataplex.GlossaryArgs{
/// GlossaryId: pulumi.String("tf-test-glossary_37118"),
/// Location:   pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = dataplex.NewGlossaryTerm(ctx, "term_test_id_full", &dataplex.GlossaryTermArgs{
/// Parent: pulumi.All(termTestIdFull.Project, termTestIdFull.GlossaryId).ApplyT(func(_args []interface{}) (string, error) {
/// project := _args[0].(string)
/// glossaryId := _args[1].(string)
/// return fmt.Sprintf("projects/%v/locations/us-central1/glossaries/%v", project, glossaryId), nil
/// }).(pulumi.StringOutput),
/// GlossaryId: termTestIdFull.GlossaryId,
/// Location:   pulumi.String("us-central1"),
/// TermId:     pulumi.String("tf-test-term-full_80332"),
/// Labels: pulumi.StringMap{
/// "tag": pulumi.String("test-tf"),
/// },
/// DisplayName: pulumi.String("terraform term"),
/// Description: pulumi.String("term created by Terraform"),
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
/// import com.pulumi.gcp.dataplex.GlossaryTerm;
/// import com.pulumi.gcp.dataplex.GlossaryTermArgs;
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
/// var termTestIdFull = new Glossary("termTestIdFull", GlossaryArgs.builder()
/// .glossaryId("tf-test-glossary_37118")
/// .location("us-central1")
/// .build());
///
/// var termTestIdFullGlossaryTerm = new GlossaryTerm("termTestIdFullGlossaryTerm", GlossaryTermArgs.builder()
/// .parent(Output.tuple(termTestIdFull.project(), termTestIdFull.glossaryId()).applyValue(values -> {
/// var project = values.t1;
/// var glossaryId = values.t2;
/// return String.format("projects/%s/locations/us-central1/glossaries/%s", project,glossaryId);
/// }))
/// .glossaryId(termTestIdFull.glossaryId())
/// .location("us-central1")
/// .termId("tf-test-term-full_80332")
/// .labels(Map.of("tag", "test-tf"))
/// .displayName("terraform term")
/// .description("term created by Terraform")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// termTestIdFull:
/// type: gcp:dataplex:Glossary
/// name: term_test_id_full
/// properties:
/// glossaryId: tf-test-glossary_37118
/// location: us-central1
/// termTestIdFullGlossaryTerm:
/// type: gcp:dataplex:GlossaryTerm
/// name: term_test_id_full
/// properties:
/// parent: projects/${termTestIdFull.project}/locations/us-central1/glossaries/${termTestIdFull.glossaryId}
/// glossaryId: ${termTestIdFull.glossaryId}
/// location: us-central1
/// termId: tf-test-term-full_80332
/// labels:
/// tag: test-tf
/// displayName: terraform term
/// description: term created by Terraform
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// GlossaryTerm can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}/terms/{{term_id}}`
///
/// * `{{project}}/{{location}}/{{glossary_id}}/{{term_id}}`
///
/// * `{{location}}/{{glossary_id}}/{{term_id}}`
///
/// When using the `pulumi import` command, GlossaryTerm can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryTerm:GlossaryTerm default projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}/terms/{{term_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryTerm:GlossaryTerm default {{project}}/{{location}}/{{glossary_id}}/{{term_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryTerm:GlossaryTerm default {{location}}/{{glossary_id}}/{{term_id}}
/// ```
class GlossaryTerm extends CustomResource {
  /// The time at which the GlossaryTerm was created.
  late final Output<String> createTime;

  /// The user-mutable description of the GlossaryTerm.
  late final Output<String?> description;

  /// User friendly display name of the GlossaryTerm. This is user-mutable. This will be same as the termId, if not specified.
  late final Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The glossary id for creation.
  late final Output<String?> glossaryId;

  /// User-defined labels for the GlossaryTerm.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location where the glossary term should reside.
  late final Output<String> location;

  /// The resource name of the GlossaryTerm. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{termId}
  late final Output<String> name;

  /// The immediate parent of the GlossaryTerm in the resource-hierarchy. It can either be a Glossary or a Term. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId} OR projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/terms/{termId}
  late final Output<String> parent;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The term id for creation.
  late final Output<String?> termId;

  /// System generated unique id for the GlossaryTerm. This ID will be different if the GlossaryTerm is deleted and re-created with the same name.
  late final Output<String> uid;

  /// The time at which the GlossaryTerm was last updated.
  late final Output<String> updateTime;

  GlossaryTerm(
    String name, {
    GlossaryTermArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/glossaryTerm:GlossaryTerm',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.displayName = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.glossaryId = Output.createUnknown<String?>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.parent = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.termId = Output.createUnknown<String?>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
