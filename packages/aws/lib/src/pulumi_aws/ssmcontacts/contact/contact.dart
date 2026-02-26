import 'package:pulumi/pulumi.dart';
import 'contact_args.dart';

/// Resource for managing an AWS SSM Contact.
///
/// > **NOTE:** A contact implicitly depends on a replication set. If you configured your replication set in Pulumi, we recommend you add it to the <span pulumi-lang-nodejs="`dependsOn`" pulumi-lang-dotnet="`DependsOn`" pulumi-lang-go="`dependsOn`" pulumi-lang-python="`depends_on`" pulumi-lang-yaml="`dependsOn`" pulumi-lang-java="`dependsOn`">`depends_on`</span> argument for the Contact Resource.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssmcontacts.Contact("example", {
/// alias: "alias",
/// type: "PERSONAL",
/// }, {
/// dependsOn: [exampleAwsSsmincidentsReplicationSet],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssmcontacts.Contact("example",
/// alias="alias",
/// type="PERSONAL",
/// opts = pulumi.ResourceOptions(depends_on=[example_aws_ssmincidents_replication_set]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SsmContacts.Contact("example", new()
/// {
/// Alias = "alias",
/// Type = "PERSONAL",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleAwsSsmincidentsReplicationSet,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmcontacts"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssmcontacts.NewContact(ctx, "example", &ssmcontacts.ContactArgs{
/// Alias: pulumi.String("alias"),
/// Type:  pulumi.String("PERSONAL"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleAwsSsmincidentsReplicationSet,
/// }))
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
/// import com.pulumi.aws.ssmcontacts.Contact;
/// import com.pulumi.aws.ssmcontacts.ContactArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var example = new Contact("example", ContactArgs.builder()
/// .alias("alias")
/// .type("PERSONAL")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleAwsSsmincidentsReplicationSet)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ssmcontacts:Contact
/// properties:
/// alias: alias
/// type: PERSONAL
/// options:
/// dependsOn:
/// - ${exampleAwsSsmincidentsReplicationSet}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Usage With All Fields
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssmcontacts.Contact("example", {
/// alias: "alias",
/// displayName: "displayName",
/// type: "ESCALATION",
/// tags: {
/// key: "value",
/// },
/// }, {
/// dependsOn: [exampleAwsSsmincidentsReplicationSet],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssmcontacts.Contact("example",
/// alias="alias",
/// display_name="displayName",
/// type="ESCALATION",
/// tags={
/// "key": "value",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[example_aws_ssmincidents_replication_set]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SsmContacts.Contact("example", new()
/// {
/// Alias = "alias",
/// DisplayName = "displayName",
/// Type = "ESCALATION",
/// Tags =
/// {
/// { "key", "value" },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleAwsSsmincidentsReplicationSet,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmcontacts"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssmcontacts.NewContact(ctx, "example", &ssmcontacts.ContactArgs{
/// Alias:       pulumi.String("alias"),
/// DisplayName: pulumi.String("displayName"),
/// Type:        pulumi.String("ESCALATION"),
/// Tags: pulumi.StringMap{
/// "key": pulumi.String("value"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleAwsSsmincidentsReplicationSet,
/// }))
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
/// import com.pulumi.aws.ssmcontacts.Contact;
/// import com.pulumi.aws.ssmcontacts.ContactArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var example = new Contact("example", ContactArgs.builder()
/// .alias("alias")
/// .displayName("displayName")
/// .type("ESCALATION")
/// .tags(Map.of("key", "value"))
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleAwsSsmincidentsReplicationSet)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ssmcontacts:Contact
/// properties:
/// alias: alias
/// displayName: displayName
/// type: ESCALATION
/// tags:
/// key: value
/// options:
/// dependsOn:
/// - ${exampleAwsSsmincidentsReplicationSet}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the contact.
///
///
/// Using `pulumi import`, import SSM Contact using the `ARN`. For example:
///
/// ```sh
/// $ pulumi import aws:ssmcontacts/contact:Contact example {ARNValue}
/// ```
class Contact extends CustomResource {
  /// A unique and identifiable alias for the contact or escalation plan. Must be between 1 and 255 characters, and may contain alphanumerics, underscores (`_`), and hyphens (`-`).
  late final Output<String> alias;

  /// The Amazon Resource Name (ARN) of the contact or escalation plan.
  late final Output<String> arn;

  /// Full friendly name of the contact or escalation plan. If set, must be between 1 and 255 characters, and may contain alphanumerics, underscores (`_`), hyphens (`-`), periods (`.`), and spaces.
  late final Output<String?> displayName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value tags for the monitor. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The type of contact engaged. A single contact is type PERSONAL and an escalation
  /// plan is type ESCALATION.
  ///
  /// The following arguments are optional:
  late final Output<String> type;

  Contact(
    String name, {
    ContactArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssmcontacts/contact:Contact',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alias = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.type = Output.createUnknown<String>();
  }
}
