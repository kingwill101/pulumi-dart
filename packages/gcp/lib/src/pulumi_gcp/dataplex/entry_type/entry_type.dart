import 'package:pulumi/pulumi.dart';
import '../entry_type_required_aspect/entry_type_required_aspect.dart';
import 'entry_type_args.dart';

/// An Entry Type is a template for creating Entries.
///
///
///
/// ## Example Usage
///
/// ### Dataplex Entry Type Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testEntryTypeBasic = new gcp.dataplex.EntryType("test_entry_type_basic", {
/// entryTypeId: "entry-type-basic",
/// project: "my-project-name",
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_entry_type_basic = gcp.dataplex.EntryType("test_entry_type_basic",
/// entry_type_id="entry-type-basic",
/// project="my-project-name",
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
/// var testEntryTypeBasic = new Gcp.DataPlex.EntryType("test_entry_type_basic", new()
/// {
/// EntryTypeId = "entry-type-basic",
/// Project = "my-project-name",
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
/// _, err := dataplex.NewEntryType(ctx, "test_entry_type_basic", &dataplex.EntryTypeArgs{
/// EntryTypeId: pulumi.String("entry-type-basic"),
/// Project:     pulumi.String("my-project-name"),
/// Location:    pulumi.String("us-central1"),
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
/// import com.pulumi.gcp.dataplex.EntryType;
/// import com.pulumi.gcp.dataplex.EntryTypeArgs;
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
/// var testEntryTypeBasic = new EntryType("testEntryTypeBasic", EntryTypeArgs.builder()
/// .entryTypeId("entry-type-basic")
/// .project("my-project-name")
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testEntryTypeBasic:
/// type: gcp:dataplex:EntryType
/// name: test_entry_type_basic
/// properties:
/// entryTypeId: entry-type-basic
/// project: my-project-name
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataplex Entry Type Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testEntryTypeFull = new gcp.dataplex.AspectType("test_entry_type_full", {
/// aspectTypeId: "tf-test-aspect-type_40785",
/// location: "us-central1",
/// project: "my-project-name",
/// metadataTemplate: `{
/// \\"name\\": \\"tf-test-template\\",
/// \\"type\\": \\"record\\",
/// \\"recordFields\\": [
/// {
/// \\"name\\": \\"type\\",
/// \\"type\\": \\"enum\\",
/// \\"annotations\\": {
/// \\"displayName\\": \\"Type\\",
/// \\"description\\": \\"Specifies the type of view represented by the entry.\\"
/// },
/// \\"index\\": 1,
/// \\"constraints\\": {
/// \\"required\\": true
/// },
/// \\"enumValues\\": [
/// {
/// \\"name\\": \\"VIEW\\",
/// \\"index\\": 1
/// }
/// ]
/// }
/// ]
/// }
/// `,
/// });
/// const testEntryTypeFullEntryType = new gcp.dataplex.EntryType("test_entry_type_full", {
/// entryTypeId: "entry-type-full",
/// project: "my-project-name",
/// location: "us-central1",
/// labels: {
/// tag: "test-tf",
/// },
/// displayName: "terraform entry type",
/// description: "entry type created by Terraform",
/// typeAliases: [
/// "TABLE",
/// "DATABASE",
/// ],
/// platform: "GCS",
/// system: "CloudSQL",
/// requiredAspects: [{
/// type: testEntryTypeFull.name,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_entry_type_full = gcp.dataplex.AspectType("test_entry_type_full",
/// aspect_type_id="tf-test-aspect-type_40785",
/// location="us-central1",
/// project="my-project-name",
/// metadata_template="""{
/// \"name\": \"tf-test-template\",
/// \"type\": \"record\",
/// \"recordFields\": [
/// {
/// \"name\": \"type\",
/// \"type\": \"enum\",
/// \"annotations\": {
/// \"displayName\": \"Type\",
/// \"description\": \"Specifies the type of view represented by the entry.\"
/// },
/// \"index\": 1,
/// \"constraints\": {
/// \"required\": true
/// },
/// \"enumValues\": [
/// {
/// \"name\": \"VIEW\",
/// \"index\": 1
/// }
/// ]
/// }
/// ]
/// }
/// """)
/// test_entry_type_full_entry_type = gcp.dataplex.EntryType("test_entry_type_full",
/// entry_type_id="entry-type-full",
/// project="my-project-name",
/// location="us-central1",
/// labels={
/// "tag": "test-tf",
/// },
/// display_name="terraform entry type",
/// description="entry type created by Terraform",
/// type_aliases=[
/// "TABLE",
/// "DATABASE",
/// ],
/// platform="GCS",
/// system="CloudSQL",
/// required_aspects=[{
/// "type": test_entry_type_full.name,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testEntryTypeFull = new Gcp.DataPlex.AspectType("test_entry_type_full", new()
/// {
/// AspectTypeId = "tf-test-aspect-type_40785",
/// Location = "us-central1",
/// Project = "my-project-name",
/// MetadataTemplate = @"{
/// \""name\"": \""tf-test-template\"",
/// \""type\"": \""record\"",
/// \""recordFields\"": [
/// {
/// \""name\"": \""type\"",
/// \""type\"": \""enum\"",
/// \""annotations\"": {
/// \""displayName\"": \""Type\"",
/// \""description\"": \""Specifies the type of view represented by the entry.\""
/// },
/// \""index\"": 1,
/// \""constraints\"": {
/// \""required\"": true
/// },
/// \""enumValues\"": [
/// {
/// \""name\"": \""VIEW\"",
/// \""index\"": 1
/// }
/// ]
/// }
/// ]
/// }
/// ",
/// });
///
/// var testEntryTypeFullEntryType = new Gcp.DataPlex.EntryType("test_entry_type_full", new()
/// {
/// EntryTypeId = "entry-type-full",
/// Project = "my-project-name",
/// Location = "us-central1",
/// Labels =
/// {
/// { "tag", "test-tf" },
/// },
/// DisplayName = "terraform entry type",
/// Description = "entry type created by Terraform",
/// TypeAliases = new[]
/// {
/// "TABLE",
/// "DATABASE",
/// },
/// Platform = "GCS",
/// System = "CloudSQL",
/// RequiredAspects = new[]
/// {
/// new Gcp.DataPlex.Inputs.EntryTypeRequiredAspectArgs
/// {
/// Type = testEntryTypeFull.Name,
/// },
/// },
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
/// testEntryTypeFull, err := dataplex.NewAspectType(ctx, "test_entry_type_full", &dataplex.AspectTypeArgs{
/// AspectTypeId: pulumi.String("tf-test-aspect-type_40785"),
/// Location:     pulumi.String("us-central1"),
/// Project:      pulumi.String("my-project-name"),
/// MetadataTemplate: pulumi.String(`{
/// \"name\": \"tf-test-template\",
/// \"type\": \"record\",
/// \"recordFields\": [
/// {
/// \"name\": \"type\",
/// \"type\": \"enum\",
/// \"annotations\": {
/// \"displayName\": \"Type\",
/// \"description\": \"Specifies the type of view represented by the entry.\"
/// },
/// \"index\": 1,
/// \"constraints\": {
/// \"required\": true
/// },
/// \"enumValues\": [
/// {
/// \"name\": \"VIEW\",
/// \"index\": 1
/// }
/// ]
/// }
/// ]
/// }
/// `),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = dataplex.NewEntryType(ctx, "test_entry_type_full", &dataplex.EntryTypeArgs{
/// EntryTypeId: pulumi.String("entry-type-full"),
/// Project:     pulumi.String("my-project-name"),
/// Location:    pulumi.String("us-central1"),
/// Labels: pulumi.StringMap{
/// "tag": pulumi.String("test-tf"),
/// },
/// DisplayName: pulumi.String("terraform entry type"),
/// Description: pulumi.String("entry type created by Terraform"),
/// TypeAliases: pulumi.StringArray{
/// pulumi.String("TABLE"),
/// pulumi.String("DATABASE"),
/// },
/// Platform: pulumi.String("GCS"),
/// System:   pulumi.String("CloudSQL"),
/// RequiredAspects: dataplex.EntryTypeRequiredAspectArray{
/// &dataplex.EntryTypeRequiredAspectArgs{
/// Type: testEntryTypeFull.Name,
/// },
/// },
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
/// import com.pulumi.gcp.dataplex.AspectType;
/// import com.pulumi.gcp.dataplex.AspectTypeArgs;
/// import com.pulumi.gcp.dataplex.EntryType;
/// import com.pulumi.gcp.dataplex.EntryTypeArgs;
/// import com.pulumi.gcp.dataplex.inputs.EntryTypeRequiredAspectArgs;
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
/// var testEntryTypeFull = new AspectType("testEntryTypeFull", AspectTypeArgs.builder()
/// .aspectTypeId("tf-test-aspect-type_40785")
/// .location("us-central1")
/// .project("my-project-name")
/// .metadataTemplate("""
/// {
/// \"name\": \"tf-test-template\",
/// \"type\": \"record\",
/// \"recordFields\": [
/// {
/// \"name\": \"type\",
/// \"type\": \"enum\",
/// \"annotations\": {
/// \"displayName\": \"Type\",
/// \"description\": \"Specifies the type of view represented by the entry.\"
/// },
/// \"index\": 1,
/// \"constraints\": {
/// \"required\": true
/// },
/// \"enumValues\": [
/// {
/// \"name\": \"VIEW\",
/// \"index\": 1
/// }
/// ]
/// }
/// ]
/// }
/// """)
/// .build());
///
/// var testEntryTypeFullEntryType = new EntryType("testEntryTypeFullEntryType", EntryTypeArgs.builder()
/// .entryTypeId("entry-type-full")
/// .project("my-project-name")
/// .location("us-central1")
/// .labels(Map.of("tag", "test-tf"))
/// .displayName("terraform entry type")
/// .description("entry type created by Terraform")
/// .typeAliases(
/// "TABLE",
/// "DATABASE")
/// .platform("GCS")
/// .system("CloudSQL")
/// .requiredAspects(EntryTypeRequiredAspectArgs.builder()
/// .type(testEntryTypeFull.name())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testEntryTypeFull:
/// type: gcp:dataplex:AspectType
/// name: test_entry_type_full
/// properties:
/// aspectTypeId: tf-test-aspect-type_40785
/// location: us-central1
/// project: my-project-name
/// metadataTemplate: |
/// {
/// \"name\": \"tf-test-template\",
/// \"type\": \"record\",
/// \"recordFields\": [
/// {
/// \"name\": \"type\",
/// \"type\": \"enum\",
/// \"annotations\": {
/// \"displayName\": \"Type\",
/// \"description\": \"Specifies the type of view represented by the entry.\"
/// },
/// \"index\": 1,
/// \"constraints\": {
/// \"required\": true
/// },
/// \"enumValues\": [
/// {
/// \"name\": \"VIEW\",
/// \"index\": 1
/// }
/// ]
/// }
/// ]
/// }
/// testEntryTypeFullEntryType:
/// type: gcp:dataplex:EntryType
/// name: test_entry_type_full
/// properties:
/// entryTypeId: entry-type-full
/// project: my-project-name
/// location: us-central1
/// labels:
/// tag: test-tf
/// displayName: terraform entry type
/// description: entry type created by Terraform
/// typeAliases:
/// - TABLE
/// - DATABASE
/// platform: GCS
/// system: CloudSQL
/// requiredAspects:
/// - type: ${testEntryTypeFull.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// EntryType can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/entryTypes/{{entry_type_id}}`
///
/// * `{{project}}/{{location}}/{{entry_type_id}}`
///
/// * `{{location}}/{{entry_type_id}}`
///
/// When using the `pulumi import` command, EntryType can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryType:EntryType default projects/{{project}}/locations/{{location}}/entryTypes/{{entry_type_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryType:EntryType default {{project}}/{{location}}/{{entry_type_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryType:EntryType default {{location}}/{{entry_type_id}}
/// ```
class EntryType extends CustomResource {
  /// The time when the EntryType was created.
  late final Output<String> createTime;

  /// Description of the EntryType.
  late final Output<String?> description;

  /// User friendly display name.
  late final Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The entry type id of the entry type.
  late final Output<String?> entryTypeId;

  /// User-defined labels for the EntryType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location where entry type will be created in.
  late final Output<String?> location;

  /// The relative resource name of the EntryType, of the form: projects/{project_number}/locations/{location_id}/entryTypes/{entry_type_id}
  late final Output<String> name;

  /// The platform that Entries of this type belongs to.
  late final Output<String?> platform;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// AspectInfo for the entry type.
  /// Structure is documented below.
  late final Output<List<EntryTypeRequiredAspect>?> requiredAspects;

  /// The system that Entries of this type belongs to.
  late final Output<String?> system;

  /// Indicates the class this Entry Type belongs to, for example, TABLE, DATABASE, MODEL.
  late final Output<List<String>?> typeAliases;

  /// System generated globally unique ID for the EntryType. This ID will be different if the EntryType is deleted and re-created with the same name.
  late final Output<String> uid;

  /// The time when the EntryType was last updated.
  late final Output<String> updateTime;

  EntryType(
    String name, {
    EntryTypeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/entryType:EntryType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.displayName = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.entryTypeId = Output.createUnknown<String?>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.platform = Output.createUnknown<String?>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.requiredAspects =
        Output.createUnknown<List<EntryTypeRequiredAspect>?>();
    this.system = Output.createUnknown<String?>();
    this.typeAliases = Output.createUnknown<List<String>?>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
