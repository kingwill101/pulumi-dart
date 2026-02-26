import 'package:pulumi/pulumi.dart';
import 'tag_binding_args.dart';

/// A TagBinding represents a connection between a TagValue and a cloud resource (currently project, folder, or organization). Once a TagBinding is created, the TagValue is applied to all the descendants of the cloud resource.
///
///
/// To get more information about TagBinding, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest/v3/tagBindings)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing)
///
/// ## Example Usage
///
/// ### Tag Binding Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.organizations.Project("project", {
/// projectId: "project_id",
/// name: "project_id",
/// orgId: "123456789",
/// deletionPolicy: "DELETE",
/// });
/// const key = new gcp.tags.TagKey("key", {
/// parent: "organizations/123456789",
/// shortName: "keyname",
/// description: "For keyname resources.",
/// });
/// const value = new gcp.tags.TagValue("value", {
/// parent: key.id,
/// shortName: "valuename",
/// description: "For valuename resources.",
/// });
/// const binding = new gcp.tags.TagBinding("binding", {
/// parent: pulumi.interpolate`//cloudresourcemanager.googleapis.com/projects/${project.number}`,
/// tagValue: value.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.Project("project",
/// project_id="project_id",
/// name="project_id",
/// org_id="123456789",
/// deletion_policy="DELETE")
/// key = gcp.tags.TagKey("key",
/// parent="organizations/123456789",
/// short_name="keyname",
/// description="For keyname resources.")
/// value = gcp.tags.TagValue("value",
/// parent=key.id,
/// short_name="valuename",
/// description="For valuename resources.")
/// binding = gcp.tags.TagBinding("binding",
/// parent=project.number.apply(lambda number: f"//cloudresourcemanager.googleapis.com/projects/{number}"),
/// tag_value=value.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = new Gcp.Organizations.Project("project", new()
/// {
/// ProjectId = "project_id",
/// Name = "project_id",
/// OrgId = "123456789",
/// DeletionPolicy = "DELETE",
/// });
///
/// var key = new Gcp.Tags.TagKey("key", new()
/// {
/// Parent = "organizations/123456789",
/// ShortName = "keyname",
/// Description = "For keyname resources.",
/// });
///
/// var @value = new Gcp.Tags.TagValue("value", new()
/// {
/// Parent = key.Id,
/// ShortName = "valuename",
/// Description = "For valuename resources.",
/// });
///
/// var binding = new Gcp.Tags.TagBinding("binding", new()
/// {
/// Parent = project.Number.Apply(number => $"//cloudresourcemanager.googleapis.com/projects/{number}"),
/// TagValue = @value.Id,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// ProjectId:      pulumi.String("project_id"),
/// Name:           pulumi.String("project_id"),
/// OrgId:          pulumi.String("123456789"),
/// DeletionPolicy: pulumi.String("DELETE"),
/// })
/// if err != nil {
/// return err
/// }
/// key, err := tags.NewTagKey(ctx, "key", &tags.TagKeyArgs{
/// Parent:      pulumi.String("organizations/123456789"),
/// ShortName:   pulumi.String("keyname"),
/// Description: pulumi.String("For keyname resources."),
/// })
/// if err != nil {
/// return err
/// }
/// value, err := tags.NewTagValue(ctx, "value", &tags.TagValueArgs{
/// Parent:      key.ID(),
/// ShortName:   pulumi.String("valuename"),
/// Description: pulumi.String("For valuename resources."),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = tags.NewTagBinding(ctx, "binding", &tags.TagBindingArgs{
/// Parent: project.Number.ApplyT(func(number string) (string, error) {
/// return fmt.Sprintf("//cloudresourcemanager.googleapis.com/projects/%v", number), nil
/// }).(pulumi.StringOutput),
/// TagValue: value.ID(),
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.tags.TagBinding;
/// import com.pulumi.gcp.tags.TagBindingArgs;
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
/// var project = new Project("project", ProjectArgs.builder()
/// .projectId("project_id")
/// .name("project_id")
/// .orgId("123456789")
/// .deletionPolicy("DELETE")
/// .build());
///
/// var key = new TagKey("key", TagKeyArgs.builder()
/// .parent("organizations/123456789")
/// .shortName("keyname")
/// .description("For keyname resources.")
/// .build());
///
/// var value = new TagValue("value", TagValueArgs.builder()
/// .parent(key.id())
/// .shortName("valuename")
/// .description("For valuename resources.")
/// .build());
///
/// var binding = new TagBinding("binding", TagBindingArgs.builder()
/// .parent(project.number().applyValue(_number -> String.format("//cloudresourcemanager.googleapis.com/projects/%s", _number)))
/// .tagValue(value.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:organizations:Project
/// properties:
/// projectId: project_id
/// name: project_id
/// orgId: '123456789'
/// deletionPolicy: DELETE
/// key:
/// type: gcp:tags:TagKey
/// properties:
/// parent: organizations/123456789
/// shortName: keyname
/// description: For keyname resources.
/// value:
/// type: gcp:tags:TagValue
/// properties:
/// parent: ${key.id}
/// shortName: valuename
/// description: For valuename resources.
/// binding:
/// type: gcp:tags:TagBinding
/// properties:
/// parent: //cloudresourcemanager.googleapis.com/projects/${project.number}
/// tagValue: ${value.id}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Tag Binding Using Dynamic Tag Value
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.organizations.Project("project", {
/// projectId: "project_id",
/// name: "project_id",
/// orgId: "123456789",
/// deletionPolicy: "DELETE",
/// });
/// const key = new gcp.tags.TagKey("key", {
/// parent: "organizations/123456789",
/// shortName: "keyname",
/// description: "For keyname resources.",
/// allowedValuesRegex: "^[a-z]+$",
/// });
/// const binding = new gcp.tags.TagBinding("binding", {
/// parent: pulumi.interpolate`//cloudresourcemanager.googleapis.com/projects/${project.number}`,
/// tagValue: pulumi.interpolate`${key.namespacedName}/test-value`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.Project("project",
/// project_id="project_id",
/// name="project_id",
/// org_id="123456789",
/// deletion_policy="DELETE")
/// key = gcp.tags.TagKey("key",
/// parent="organizations/123456789",
/// short_name="keyname",
/// description="For keyname resources.",
/// allowed_values_regex="^[a-z]+$")
/// binding = gcp.tags.TagBinding("binding",
/// parent=project.number.apply(lambda number: f"//cloudresourcemanager.googleapis.com/projects/{number}"),
/// tag_value=key.namespaced_name.apply(lambda namespaced_name: f"{namespaced_name}/test-value"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = new Gcp.Organizations.Project("project", new()
/// {
/// ProjectId = "project_id",
/// Name = "project_id",
/// OrgId = "123456789",
/// DeletionPolicy = "DELETE",
/// });
///
/// var key = new Gcp.Tags.TagKey("key", new()
/// {
/// Parent = "organizations/123456789",
/// ShortName = "keyname",
/// Description = "For keyname resources.",
/// AllowedValuesRegex = "^[a-z]+$",
/// });
///
/// var binding = new Gcp.Tags.TagBinding("binding", new()
/// {
/// Parent = project.Number.Apply(number => $"//cloudresourcemanager.googleapis.com/projects/{number}"),
/// TagValue = key.NamespacedName.Apply(namespacedName => $"{namespacedName}/test-value"),
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// ProjectId:      pulumi.String("project_id"),
/// Name:           pulumi.String("project_id"),
/// OrgId:          pulumi.String("123456789"),
/// DeletionPolicy: pulumi.String("DELETE"),
/// })
/// if err != nil {
/// return err
/// }
/// key, err := tags.NewTagKey(ctx, "key", &tags.TagKeyArgs{
/// Parent:             pulumi.String("organizations/123456789"),
/// ShortName:          pulumi.String("keyname"),
/// Description:        pulumi.String("For keyname resources."),
/// AllowedValuesRegex: pulumi.String("^[a-z]+$"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = tags.NewTagBinding(ctx, "binding", &tags.TagBindingArgs{
/// Parent: project.Number.ApplyT(func(number string) (string, error) {
/// return fmt.Sprintf("//cloudresourcemanager.googleapis.com/projects/%v", number), nil
/// }).(pulumi.StringOutput),
/// TagValue: key.NamespacedName.ApplyT(func(namespacedName string) (string, error) {
/// return fmt.Sprintf("%v/test-value", namespacedName), nil
/// }).(pulumi.StringOutput),
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagBinding;
/// import com.pulumi.gcp.tags.TagBindingArgs;
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
/// var project = new Project("project", ProjectArgs.builder()
/// .projectId("project_id")
/// .name("project_id")
/// .orgId("123456789")
/// .deletionPolicy("DELETE")
/// .build());
///
/// var key = new TagKey("key", TagKeyArgs.builder()
/// .parent("organizations/123456789")
/// .shortName("keyname")
/// .description("For keyname resources.")
/// .allowedValuesRegex("^[a-z]+$")
/// .build());
///
/// var binding = new TagBinding("binding", TagBindingArgs.builder()
/// .parent(project.number().applyValue(_number -> String.format("//cloudresourcemanager.googleapis.com/projects/%s", _number)))
/// .tagValue(key.namespacedName().applyValue(_namespacedName -> String.format("%s/test-value", _namespacedName)))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:organizations:Project
/// properties:
/// projectId: project_id
/// name: project_id
/// orgId: '123456789'
/// deletionPolicy: DELETE
/// key:
/// type: gcp:tags:TagKey
/// properties:
/// parent: organizations/123456789
/// shortName: keyname
/// description: For keyname resources.
/// allowedValuesRegex: ^[a-z]+$
/// binding:
/// type: gcp:tags:TagBinding
/// properties:
/// parent: //cloudresourcemanager.googleapis.com/projects/${project.number}
/// tagValue: ${key.namespacedName}/test-value
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// TagBinding can be imported using any of these accepted formats:
///
/// * `tagBindings/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TagBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:tags/tagBinding:TagBinding default tagBindings/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:tags/tagBinding:TagBinding default {{name}}
/// ```
class TagBinding extends CustomResource {
  /// The generated id for the TagBinding. This is a string of the form `tagBindings/{full-resource-name}/{tag-value-name}` or `tagBindings/{full-resource-name}/{tag-key-name}`
  late final Output<String> name;

  /// The full resource name of the resource the TagValue is bound to. E.g. //cloudresourcemanager.googleapis.com/projects/123
  late final Output<String> parent;

  /// The TagValue of the TagBinding. Must be either in id format `tagValues/{tag-value-id}`, or namespaced format `{parent-id}/{tag-key-short-name}/{tag-value-short-name}`.
  late final Output<String> tagValue;

  TagBinding(
    String name, {
    TagBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:tags/tagBinding:TagBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = Output.createUnknown<String>();
    this.parent = Output.createUnknown<String>();
    this.tagValue = Output.createUnknown<String>();
  }
}
