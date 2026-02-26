import 'package:pulumi/pulumi.dart';
import '../ruleset_metadata/ruleset_metadata.dart';
import '../ruleset_source/ruleset_source.dart';
import 'ruleset_args.dart';

/// For more information, see:
/// * [Get started with Firebase Security Rules](https://firebase.google.com/docs/rules/get-started)
/// ## Example Usage
///
/// ### Basic_ruleset
/// Creates a basic Firestore ruleset
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.firebaserules.Ruleset("primary", {
/// source: {
/// files: [{
/// content: "service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }",
/// name: "firestore.rules",
/// fingerprint: "",
/// }],
/// language: "",
/// },
/// project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.firebaserules.Ruleset("primary",
/// source={
/// "files": [{
/// "content": "service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }",
/// "name": "firestore.rules",
/// "fingerprint": "",
/// }],
/// "language": "",
/// },
/// project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var primary = new Gcp.Firebaserules.Ruleset("primary", new()
/// {
/// Source = new Gcp.Firebaserules.Inputs.RulesetSourceArgs
/// {
/// Files = new[]
/// {
/// new Gcp.Firebaserules.Inputs.RulesetSourceFileArgs
/// {
/// Content = "service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }",
/// Name = "firestore.rules",
/// Fingerprint = "",
/// },
/// },
/// Language = "",
/// },
/// Project = "my-project-name",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebaserules"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := firebaserules.NewRuleset(ctx, "primary", &firebaserules.RulesetArgs{
/// Source: &firebaserules.RulesetSourceArgs{
/// Files: firebaserules.RulesetSourceFileArray{
/// &firebaserules.RulesetSourceFileArgs{
/// Content:     pulumi.String("service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }"),
/// Name:        pulumi.String("firestore.rules"),
/// Fingerprint: pulumi.String(""),
/// },
/// },
/// Language: pulumi.String(""),
/// },
/// Project: pulumi.String("my-project-name"),
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
/// import com.pulumi.gcp.firebaserules.Ruleset;
/// import com.pulumi.gcp.firebaserules.RulesetArgs;
/// import com.pulumi.gcp.firebaserules.inputs.RulesetSourceArgs;
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
/// var primary = new Ruleset("primary", RulesetArgs.builder()
/// .source(RulesetSourceArgs.builder()
/// .files(RulesetSourceFileArgs.builder()
/// .content("service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }")
/// .name("firestore.rules")
/// .fingerprint("")
/// .build())
/// .language("")
/// .build())
/// .project("my-project-name")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// primary:
/// type: gcp:firebaserules:Ruleset
/// properties:
/// source:
/// files:
/// - content: 'service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }'
/// name: firestore.rules
/// fingerprint: ""
/// language: ""
/// project: my-project-name
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Minimal_ruleset
/// Creates a minimal Firestore ruleset
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.firebaserules.Ruleset("primary", {
/// source: {
/// files: [{
/// content: "service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }",
/// name: "firestore.rules",
/// }],
/// },
/// project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.firebaserules.Ruleset("primary",
/// source={
/// "files": [{
/// "content": "service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }",
/// "name": "firestore.rules",
/// }],
/// },
/// project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var primary = new Gcp.Firebaserules.Ruleset("primary", new()
/// {
/// Source = new Gcp.Firebaserules.Inputs.RulesetSourceArgs
/// {
/// Files = new[]
/// {
/// new Gcp.Firebaserules.Inputs.RulesetSourceFileArgs
/// {
/// Content = "service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }",
/// Name = "firestore.rules",
/// },
/// },
/// },
/// Project = "my-project-name",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebaserules"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := firebaserules.NewRuleset(ctx, "primary", &firebaserules.RulesetArgs{
/// Source: &firebaserules.RulesetSourceArgs{
/// Files: firebaserules.RulesetSourceFileArray{
/// &firebaserules.RulesetSourceFileArgs{
/// Content: pulumi.String("service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }"),
/// Name:    pulumi.String("firestore.rules"),
/// },
/// },
/// },
/// Project: pulumi.String("my-project-name"),
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
/// import com.pulumi.gcp.firebaserules.Ruleset;
/// import com.pulumi.gcp.firebaserules.RulesetArgs;
/// import com.pulumi.gcp.firebaserules.inputs.RulesetSourceArgs;
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
/// var primary = new Ruleset("primary", RulesetArgs.builder()
/// .source(RulesetSourceArgs.builder()
/// .files(RulesetSourceFileArgs.builder()
/// .content("service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }")
/// .name("firestore.rules")
/// .build())
/// .build())
/// .project("my-project-name")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// primary:
/// type: gcp:firebaserules:Ruleset
/// properties:
/// source:
/// files:
/// - content: 'service cloud.firestore {match /databases/{database}/documents { match /{document=**} { allow read, write: if false; } } }'
/// name: firestore.rules
/// project: my-project-name
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Ruleset can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/rulesets/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Ruleset can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebaserules/ruleset:Ruleset default projects/{{project}}/rulesets/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebaserules/ruleset:Ruleset default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebaserules/ruleset:Ruleset default {{name}}
/// ```
class Ruleset extends CustomResource {
  /// Output only. Time the `Ruleset` was created.
  late final Output<String> createTime;

  /// Output only. The metadata for this ruleset.
  late final Output<List<RulesetMetadata>> metadatas;

  /// Output only. Name of the `Ruleset`. The<span pulumi-lang-nodejs=" rulesetId " pulumi-lang-dotnet=" RulesetId " pulumi-lang-go=" rulesetId " pulumi-lang-python=" ruleset_id " pulumi-lang-yaml=" rulesetId " pulumi-lang-java=" rulesetId "> ruleset_id </span>is auto generated by the service. Format: `projects/{project_id}/rulesets/{ruleset_id}`
  late final Output<String> name;

  /// The project for the resource
  late final Output<String> project;

  /// `Source` for the `Ruleset`.
  late final Output<RulesetSource> source;

  Ruleset(
    String name, {
    RulesetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebaserules/ruleset:Ruleset',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.metadatas = registerOutput<List<RulesetMetadata>>('metadatas');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.source = registerOutput<RulesetSource>('source');
  }
}
