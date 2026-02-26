import 'package:pulumi/pulumi.dart';
import 'policy_tag_args.dart';

/// Denotes one policy tag in a taxonomy.
///
///
/// To get more information about PolicyTag, see:
///
/// * [API documentation](https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.taxonomies.policyTags)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/data-catalog/docs)
///
/// ## Example Usage
///
/// ### Data Catalog Taxonomies Policy Tag Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myTaxonomy = new gcp.datacatalog.Taxonomy("my_taxonomy", {
/// displayName: "taxonomy_display_name",
/// description: "A collection of policy tags",
/// activatedPolicyTypes: ["FINE_GRAINED_ACCESS_CONTROL"],
/// });
/// const basicPolicyTag = new gcp.datacatalog.PolicyTag("basic_policy_tag", {
/// taxonomy: myTaxonomy.id,
/// displayName: "Low security",
/// description: "A policy tag normally associated with low security items",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_taxonomy = gcp.datacatalog.Taxonomy("my_taxonomy",
/// display_name="taxonomy_display_name",
/// description="A collection of policy tags",
/// activated_policy_types=["FINE_GRAINED_ACCESS_CONTROL"])
/// basic_policy_tag = gcp.datacatalog.PolicyTag("basic_policy_tag",
/// taxonomy=my_taxonomy.id,
/// display_name="Low security",
/// description="A policy tag normally associated with low security items")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myTaxonomy = new Gcp.DataCatalog.Taxonomy("my_taxonomy", new()
/// {
/// DisplayName = "taxonomy_display_name",
/// Description = "A collection of policy tags",
/// ActivatedPolicyTypes = new[]
/// {
/// "FINE_GRAINED_ACCESS_CONTROL",
/// },
/// });
///
/// var basicPolicyTag = new Gcp.DataCatalog.PolicyTag("basic_policy_tag", new()
/// {
/// Taxonomy = myTaxonomy.Id,
/// DisplayName = "Low security",
/// Description = "A policy tag normally associated with low security items",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myTaxonomy, err := datacatalog.NewTaxonomy(ctx, "my_taxonomy", &datacatalog.TaxonomyArgs{
/// DisplayName: pulumi.String("taxonomy_display_name"),
/// Description: pulumi.String("A collection of policy tags"),
/// ActivatedPolicyTypes: pulumi.StringArray{
/// pulumi.String("FINE_GRAINED_ACCESS_CONTROL"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = datacatalog.NewPolicyTag(ctx, "basic_policy_tag", &datacatalog.PolicyTagArgs{
/// Taxonomy:    myTaxonomy.ID(),
/// DisplayName: pulumi.String("Low security"),
/// Description: pulumi.String("A policy tag normally associated with low security items"),
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
/// import com.pulumi.gcp.datacatalog.Taxonomy;
/// import com.pulumi.gcp.datacatalog.TaxonomyArgs;
/// import com.pulumi.gcp.datacatalog.PolicyTag;
/// import com.pulumi.gcp.datacatalog.PolicyTagArgs;
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
/// var myTaxonomy = new Taxonomy("myTaxonomy", TaxonomyArgs.builder()
/// .displayName("taxonomy_display_name")
/// .description("A collection of policy tags")
/// .activatedPolicyTypes("FINE_GRAINED_ACCESS_CONTROL")
/// .build());
///
/// var basicPolicyTag = new PolicyTag("basicPolicyTag", PolicyTagArgs.builder()
/// .taxonomy(myTaxonomy.id())
/// .displayName("Low security")
/// .description("A policy tag normally associated with low security items")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// basicPolicyTag:
/// type: gcp:datacatalog:PolicyTag
/// name: basic_policy_tag
/// properties:
/// taxonomy: ${myTaxonomy.id}
/// displayName: Low security
/// description: A policy tag normally associated with low security items
/// myTaxonomy:
/// type: gcp:datacatalog:Taxonomy
/// name: my_taxonomy
/// properties:
/// displayName: taxonomy_display_name
/// description: A collection of policy tags
/// activatedPolicyTypes:
/// - FINE_GRAINED_ACCESS_CONTROL
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Data Catalog Taxonomies Policy Tag Child Policies
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myTaxonomy = new gcp.datacatalog.Taxonomy("my_taxonomy", {
/// displayName: "taxonomy_display_name",
/// description: "A collection of policy tags",
/// activatedPolicyTypes: ["FINE_GRAINED_ACCESS_CONTROL"],
/// });
/// const parentPolicy = new gcp.datacatalog.PolicyTag("parent_policy", {
/// taxonomy: myTaxonomy.id,
/// displayName: "High",
/// description: "A policy tag category used for high security access",
/// });
/// const childPolicy = new gcp.datacatalog.PolicyTag("child_policy", {
/// taxonomy: myTaxonomy.id,
/// displayName: "ssn",
/// description: "A hash of the users ssn",
/// parentPolicyTag: parentPolicy.id,
/// });
/// const childPolicy2 = new gcp.datacatalog.PolicyTag("child_policy2", {
/// taxonomy: myTaxonomy.id,
/// displayName: "dob",
/// description: "The users date of birth",
/// parentPolicyTag: parentPolicy.id,
/// }, {
/// dependsOn: [childPolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_taxonomy = gcp.datacatalog.Taxonomy("my_taxonomy",
/// display_name="taxonomy_display_name",
/// description="A collection of policy tags",
/// activated_policy_types=["FINE_GRAINED_ACCESS_CONTROL"])
/// parent_policy = gcp.datacatalog.PolicyTag("parent_policy",
/// taxonomy=my_taxonomy.id,
/// display_name="High",
/// description="A policy tag category used for high security access")
/// child_policy = gcp.datacatalog.PolicyTag("child_policy",
/// taxonomy=my_taxonomy.id,
/// display_name="ssn",
/// description="A hash of the users ssn",
/// parent_policy_tag=parent_policy.id)
/// child_policy2 = gcp.datacatalog.PolicyTag("child_policy2",
/// taxonomy=my_taxonomy.id,
/// display_name="dob",
/// description="The users date of birth",
/// parent_policy_tag=parent_policy.id,
/// opts = pulumi.ResourceOptions(depends_on=[child_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myTaxonomy = new Gcp.DataCatalog.Taxonomy("my_taxonomy", new()
/// {
/// DisplayName = "taxonomy_display_name",
/// Description = "A collection of policy tags",
/// ActivatedPolicyTypes = new[]
/// {
/// "FINE_GRAINED_ACCESS_CONTROL",
/// },
/// });
///
/// var parentPolicy = new Gcp.DataCatalog.PolicyTag("parent_policy", new()
/// {
/// Taxonomy = myTaxonomy.Id,
/// DisplayName = "High",
/// Description = "A policy tag category used for high security access",
/// });
///
/// var childPolicy = new Gcp.DataCatalog.PolicyTag("child_policy", new()
/// {
/// Taxonomy = myTaxonomy.Id,
/// DisplayName = "ssn",
/// Description = "A hash of the users ssn",
/// ParentPolicyTag = parentPolicy.Id,
/// });
///
/// var childPolicy2 = new Gcp.DataCatalog.PolicyTag("child_policy2", new()
/// {
/// Taxonomy = myTaxonomy.Id,
/// DisplayName = "dob",
/// Description = "The users date of birth",
/// ParentPolicyTag = parentPolicy.Id,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// childPolicy,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myTaxonomy, err := datacatalog.NewTaxonomy(ctx, "my_taxonomy", &datacatalog.TaxonomyArgs{
/// DisplayName: pulumi.String("taxonomy_display_name"),
/// Description: pulumi.String("A collection of policy tags"),
/// ActivatedPolicyTypes: pulumi.StringArray{
/// pulumi.String("FINE_GRAINED_ACCESS_CONTROL"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// parentPolicy, err := datacatalog.NewPolicyTag(ctx, "parent_policy", &datacatalog.PolicyTagArgs{
/// Taxonomy:    myTaxonomy.ID(),
/// DisplayName: pulumi.String("High"),
/// Description: pulumi.String("A policy tag category used for high security access"),
/// })
/// if err != nil {
/// return err
/// }
/// childPolicy, err := datacatalog.NewPolicyTag(ctx, "child_policy", &datacatalog.PolicyTagArgs{
/// Taxonomy:        myTaxonomy.ID(),
/// DisplayName:     pulumi.String("ssn"),
/// Description:     pulumi.String("A hash of the users ssn"),
/// ParentPolicyTag: parentPolicy.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = datacatalog.NewPolicyTag(ctx, "child_policy2", &datacatalog.PolicyTagArgs{
/// Taxonomy:        myTaxonomy.ID(),
/// DisplayName:     pulumi.String("dob"),
/// Description:     pulumi.String("The users date of birth"),
/// ParentPolicyTag: parentPolicy.ID(),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// childPolicy,
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
/// import com.pulumi.gcp.datacatalog.Taxonomy;
/// import com.pulumi.gcp.datacatalog.TaxonomyArgs;
/// import com.pulumi.gcp.datacatalog.PolicyTag;
/// import com.pulumi.gcp.datacatalog.PolicyTagArgs;
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
/// var myTaxonomy = new Taxonomy("myTaxonomy", TaxonomyArgs.builder()
/// .displayName("taxonomy_display_name")
/// .description("A collection of policy tags")
/// .activatedPolicyTypes("FINE_GRAINED_ACCESS_CONTROL")
/// .build());
///
/// var parentPolicy = new PolicyTag("parentPolicy", PolicyTagArgs.builder()
/// .taxonomy(myTaxonomy.id())
/// .displayName("High")
/// .description("A policy tag category used for high security access")
/// .build());
///
/// var childPolicy = new PolicyTag("childPolicy", PolicyTagArgs.builder()
/// .taxonomy(myTaxonomy.id())
/// .displayName("ssn")
/// .description("A hash of the users ssn")
/// .parentPolicyTag(parentPolicy.id())
/// .build());
///
/// var childPolicy2 = new PolicyTag("childPolicy2", PolicyTagArgs.builder()
/// .taxonomy(myTaxonomy.id())
/// .displayName("dob")
/// .description("The users date of birth")
/// .parentPolicyTag(parentPolicy.id())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(childPolicy)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// parentPolicy:
/// type: gcp:datacatalog:PolicyTag
/// name: parent_policy
/// properties:
/// taxonomy: ${myTaxonomy.id}
/// displayName: High
/// description: A policy tag category used for high security access
/// childPolicy:
/// type: gcp:datacatalog:PolicyTag
/// name: child_policy
/// properties:
/// taxonomy: ${myTaxonomy.id}
/// displayName: ssn
/// description: A hash of the users ssn
/// parentPolicyTag: ${parentPolicy.id}
/// childPolicy2:
/// type: gcp:datacatalog:PolicyTag
/// name: child_policy2
/// properties:
/// taxonomy: ${myTaxonomy.id}
/// displayName: dob
/// description: The users date of birth
/// parentPolicyTag: ${parentPolicy.id}
/// options:
/// dependsOn:
/// - ${childPolicy}
/// myTaxonomy:
/// type: gcp:datacatalog:Taxonomy
/// name: my_taxonomy
/// properties:
/// displayName: taxonomy_display_name
/// description: A collection of policy tags
/// activatedPolicyTypes:
/// - FINE_GRAINED_ACCESS_CONTROL
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// PolicyTag can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, PolicyTag can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:datacatalog/policyTag:PolicyTag default {{name}}
/// ```
class PolicyTag extends CustomResource {
  /// Resource names of child policy tags of this policy tag.
  late final Output<List<String>> childPolicyTags;

  /// Description of this policy tag. It must: contain only unicode characters, tabs,
  /// newlines, carriage returns and page breaks; and be at most 2000 bytes long when
  /// encoded in UTF-8. If not set, defaults to an empty description.
  /// If not set, defaults to an empty description.
  late final Output<String?> description;

  /// User defined name of this policy tag. It must: be unique within the parent
  /// taxonomy; contain only unicode letters, numbers, underscores, dashes and spaces;
  /// not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8.
  late final Output<String> displayName;

  /// Resource name of this policy tag, whose format is:
  /// "projects/{project}/locations/{region}/taxonomies/{taxonomy}/policyTags/{policytag}"
  late final Output<String> name;

  /// Resource name of this policy tag's parent policy tag.
  /// If empty, it means this policy tag is a top level policy tag.
  /// If not set, defaults to an empty string.
  late final Output<String?> parentPolicyTag;

  /// Taxonomy the policy tag is associated with
  late final Output<String> taxonomy;

  PolicyTag(
    String name, {
    PolicyTagArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:datacatalog/policyTag:PolicyTag',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.childPolicyTags = Output.createUnknown<List<String>>();
    this.description = Output.createUnknown<String?>();
    this.displayName = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.parentPolicyTag = Output.createUnknown<String?>();
    this.taxonomy = Output.createUnknown<String>();
  }
}
