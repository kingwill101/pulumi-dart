import 'package:pulumi/pulumi.dart' as pulumi;
import 'organizational_unit_account.dart';
import 'organizational_unit_args.dart';

/// Provides a resource to create an organizational unit.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.organizations.OrganizationalUnit("example", {
///     name: "example",
///     parentId: exampleAwsOrganizationsOrganization.roots[0].id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.OrganizationalUnit("example",
///     name="example",
///     parent_id=example_aws_organizations_organization["roots"][0]["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Organizations.OrganizationalUnit("example", new()
///     {
///         Name = "example",
///         ParentId = exampleAwsOrganizationsOrganization.Roots[0].Id,
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
/// 		_, err := organizations.NewOrganizationalUnit(ctx, "example", &organizations.OrganizationalUnitArgs{
/// 			Name:     pulumi.String("example"),
/// 			ParentId: pulumi.Any(exampleAwsOrganizationsOrganization.Roots[0].Id),
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
/// import com.pulumi.aws.organizations.OrganizationalUnit;
/// import com.pulumi.aws.organizations.OrganizationalUnitArgs;
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
///         var example = new OrganizationalUnit("example", OrganizationalUnitArgs.builder()
///             .name("example")
///             .parentId(exampleAwsOrganizationsOrganization.roots()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:organizations:OrganizationalUnit
///     properties:
///       name: example
///       parentId: ${exampleAwsOrganizationsOrganization.roots[0].id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) ID of the organizational unit.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import AWS Organizations Organizational Units using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:organizations/organizationalUnit:OrganizationalUnit example ou-1234567
/// ```
class OrganizationalUnit extends pulumi.CustomResource {
  /// List of child accounts for this Organizational Unit. Does not return account information for child Organizational Units. All elements have these attributes:
  late final pulumi.Output<List<OrganizationalUnitAccount>> accounts;

  /// ARN of the organizational unit
  late final pulumi.Output<String> arn;

  /// The name for the organizational unit
  late final pulumi.Output<String> name;

  /// ID of the parent organizational unit, which may be the root
  late final pulumi.Output<String> parentId;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [OrganizationalUnit].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationalUnit]. {@macro pulumi_organizations_organizational_unit_organizational_unit_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationalUnit(
    String name, {
    OrganizationalUnitArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:organizations/organizationalUnit:OrganizationalUnit',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.accounts = registerOutput<List<OrganizationalUnitAccount>>('accounts');
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.parentId = registerOutput<String>('parentId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
