import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_args.dart';
import 'tag_state.dart';

/// Manages an individual Organizations resource tag. This resource should only be used in cases where Organizations resources are created outside Terraform (e.g., Organizations Accounts implicitly created by AWS Control Tower).
///
/// > **NOTE:** This tagging resource should not be combined with the Terraform resource for managing the parent resource. For example, using `aws.organizations.Account` and `aws.organizations.Tag` to manage tags of the same Organizations account will cause a perpetual difference where the `aws.organizations.Account` resource will try to remove the tag being added by the `aws.organizations.Tag` resource. However, if the parent resource is created in the same configuration (i.e., if you have no other choice), you should add `ignore_changes = [tags]` in the parent resource's lifecycle block. This ensures that Terraform ignores differences in tags managed via the separate tagging resource, avoiding the perpetual difference mentioned above.
///
/// > **NOTE:** This tagging resource does not use the provider `ignore_tags` configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.organizations.getOrganization({});
/// const exampleOrganizationalUnit = new aws.organizations.OrganizationalUnit("example", {
///     name: "ExampleOU",
///     parentId: example.then(example => example.roots?.[0]?.id),
/// });
/// const exampleTag = new aws.organizations.Tag("example", {
///     resourceId: exampleOrganizationalUnit.id,
///     key: "ExampleKey",
///     value: "ExampleValue",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.get_organization()
/// example_organizational_unit = aws.organizations.OrganizationalUnit("example",
///     name="ExampleOU",
///     parent_id=example.roots[0].id)
/// example_tag = aws.organizations.Tag("example",
///     resource_id=example_organizational_unit.id,
///     key="ExampleKey",
///     value="ExampleValue")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Organizations.GetOrganization.Invoke();
///
///     var exampleOrganizationalUnit = new Aws.Organizations.OrganizationalUnit("example", new()
///     {
///         Name = "ExampleOU",
///         ParentId = example.Apply(getOrganizationResult => getOrganizationResult.Roots[0]?.Id),
///     });
///
///     var exampleTag = new Aws.Organizations.Tag("example", new()
///     {
///         ResourceId = exampleOrganizationalUnit.Id,
///         Key = "ExampleKey",
///         Value = "ExampleValue",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := organizations.LookupOrganization(ctx, &organizations.LookupOrganizationArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleOrganizationalUnit, err := organizations.NewOrganizationalUnit(ctx, "example", &organizations.OrganizationalUnitArgs{
/// 			Name:     pulumi.String("ExampleOU"),
/// 			ParentId: pulumi.String(example.Roots[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.NewTag(ctx, "example", &organizations.TagArgs{
/// 			ResourceId: exampleOrganizationalUnit.ID(),
/// 			Key:        pulumi.String("ExampleKey"),
/// 			Value:      pulumi.String("ExampleValue"),
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
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetOrganizationArgs;
/// import com.pulumi.aws.organizations.OrganizationalUnit;
/// import com.pulumi.aws.organizations.OrganizationalUnitArgs;
/// import com.pulumi.aws.organizations.Tag;
/// import com.pulumi.aws.organizations.TagArgs;
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
///         final var example = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
///             .build());
///
///         var exampleOrganizationalUnit = new OrganizationalUnit("exampleOrganizationalUnit", OrganizationalUnitArgs.builder()
///             .name("ExampleOU")
///             .parentId(example.roots()[0].id())
///             .build());
///
///         var exampleTag = new Tag("exampleTag", TagArgs.builder()
///             .resourceId(exampleOrganizationalUnit.id())
///             .key("ExampleKey")
///             .value("ExampleValue")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleOrganizationalUnit:
///     type: aws:organizations:OrganizationalUnit
///     name: example
///     properties:
///       name: ExampleOU
///       parentId: ${example.roots[0].id}
///   exampleTag:
///     type: aws:organizations:Tag
///     name: example
///     properties:
///       resourceId: ${exampleOrganizationalUnit.id}
///       key: ExampleKey
///       value: ExampleValue
/// variables:
///   example:
///     fn::invoke:
///       function: aws:organizations:getOrganization
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.organizations.Tag` using the Organizations resource identifier and key, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:organizations/tag:Tag example ou-1234567,ExampleKey
/// ```
class Tag extends pulumi.CustomResource {
  /// Tag name.
  late final pulumi.Output<String> key;
  /// Id of the Organizations resource to tag.
  late final pulumi.Output<String> resourceId;
  /// Tag value.
  late final pulumi.Output<String> value;

  /// Creates a new [Tag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tag]. {@macro pulumi_organizations_tag_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tag(
    String name, {
    TagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:organizations/tag:Tag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.key = registerOutput<String>('key');
    this.resourceId = registerOutput<String>('resourceId');
    this.value = registerOutput<String>('value');
  }

  /// Gets an existing [Tag] resource's state with the given [name] and [id].
  static Tag get(
    String name,
    pulumi.Input<String> id, {
    TagState? state,
  }) {
    return Tag._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Tag._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:organizations/tag:Tag',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.key = registerOutput<String>('key');
    this.resourceId = registerOutput<String>('resourceId');
    this.value = registerOutput<String>('value');
  }
}
