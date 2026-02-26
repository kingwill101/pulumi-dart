import 'package:pulumi/pulumi.dart';
import '../user_hierarchy_group_hierarchy_path/user_hierarchy_group_hierarchy_path.dart';
import 'user_hierarchy_group_args.dart';

/// Provides an Amazon Connect User Hierarchy Group resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// > **NOTE:** The User Hierarchy Structure must be created before creating a User Hierarchy Group.
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.UserHierarchyGroup("example", {
/// instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// name: "example",
/// tags: {
/// Name: "Example User Hierarchy Group",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.UserHierarchyGroup("example",
/// instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// name="example",
/// tags={
/// "Name": "Example User Hierarchy Group",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Connect.UserHierarchyGroup("example", new()
/// {
/// InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// Name = "example",
/// Tags =
/// {
/// { "Name", "Example User Hierarchy Group" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.NewUserHierarchyGroup(ctx, "example", &connect.UserHierarchyGroupArgs{
/// InstanceId: pulumi.String("aaaaaaaa-bbbb-cccc-dddd-111111111111"),
/// Name:       pulumi.String("example"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Example User Hierarchy Group"),
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
/// import com.pulumi.aws.connect.UserHierarchyGroup;
/// import com.pulumi.aws.connect.UserHierarchyGroupArgs;
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
/// var example = new UserHierarchyGroup("example", UserHierarchyGroupArgs.builder()
/// .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
/// .name("example")
/// .tags(Map.of("Name", "Example User Hierarchy Group"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:connect:UserHierarchyGroup
/// properties:
/// instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
/// name: example
/// tags:
/// Name: Example User Hierarchy Group
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With a parent group
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const parent = new aws.connect.UserHierarchyGroup("parent", {
/// instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// name: "parent",
/// tags: {
/// Name: "Example User Hierarchy Group Parent",
/// },
/// });
/// const child = new aws.connect.UserHierarchyGroup("child", {
/// instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// name: "child",
/// parentGroupId: parent.hierarchyGroupId,
/// tags: {
/// Name: "Example User Hierarchy Group Child",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// parent = aws.connect.UserHierarchyGroup("parent",
/// instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// name="parent",
/// tags={
/// "Name": "Example User Hierarchy Group Parent",
/// })
/// child = aws.connect.UserHierarchyGroup("child",
/// instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// name="child",
/// parent_group_id=parent.hierarchy_group_id,
/// tags={
/// "Name": "Example User Hierarchy Group Child",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var parent = new Aws.Connect.UserHierarchyGroup("parent", new()
/// {
/// InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// Name = "parent",
/// Tags =
/// {
/// { "Name", "Example User Hierarchy Group Parent" },
/// },
/// });
///
/// var child = new Aws.Connect.UserHierarchyGroup("child", new()
/// {
/// InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// Name = "child",
/// ParentGroupId = parent.HierarchyGroupId,
/// Tags =
/// {
/// { "Name", "Example User Hierarchy Group Child" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// parent, err := connect.NewUserHierarchyGroup(ctx, "parent", &connect.UserHierarchyGroupArgs{
/// InstanceId: pulumi.String("aaaaaaaa-bbbb-cccc-dddd-111111111111"),
/// Name:       pulumi.String("parent"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Example User Hierarchy Group Parent"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = connect.NewUserHierarchyGroup(ctx, "child", &connect.UserHierarchyGroupArgs{
/// InstanceId:    pulumi.String("aaaaaaaa-bbbb-cccc-dddd-111111111111"),
/// Name:          pulumi.String("child"),
/// ParentGroupId: parent.HierarchyGroupId,
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Example User Hierarchy Group Child"),
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
/// import com.pulumi.aws.connect.UserHierarchyGroup;
/// import com.pulumi.aws.connect.UserHierarchyGroupArgs;
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
/// var parent = new UserHierarchyGroup("parent", UserHierarchyGroupArgs.builder()
/// .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
/// .name("parent")
/// .tags(Map.of("Name", "Example User Hierarchy Group Parent"))
/// .build());
///
/// var child = new UserHierarchyGroup("child", UserHierarchyGroupArgs.builder()
/// .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
/// .name("child")
/// .parentGroupId(parent.hierarchyGroupId())
/// .tags(Map.of("Name", "Example User Hierarchy Group Child"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// parent:
/// type: aws:connect:UserHierarchyGroup
/// properties:
/// instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
/// name: parent
/// tags:
/// Name: Example User Hierarchy Group Parent
/// child:
/// type: aws:connect:UserHierarchyGroup
/// properties:
/// instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
/// name: child
/// parentGroupId: ${parent.hierarchyGroupId}
/// tags:
/// Name: Example User Hierarchy Group Child
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect User Hierarchy Groups using the <span pulumi-lang-nodejs="`instanceId`" pulumi-lang-dotnet="`InstanceId`" pulumi-lang-go="`instanceId`" pulumi-lang-python="`instance_id`" pulumi-lang-yaml="`instanceId`" pulumi-lang-java="`instanceId`">`instance_id`</span> and <span pulumi-lang-nodejs="`hierarchyGroupId`" pulumi-lang-dotnet="`HierarchyGroupId`" pulumi-lang-go="`hierarchyGroupId`" pulumi-lang-python="`hierarchy_group_id`" pulumi-lang-yaml="`hierarchyGroupId`" pulumi-lang-java="`hierarchyGroupId`">`hierarchy_group_id`</span> separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/userHierarchyGroup:UserHierarchyGroup example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class UserHierarchyGroup extends CustomResource {
  /// The Amazon Resource Name (ARN) of the hierarchy group.
  late final Output<String> arn;

  /// The identifier for the hierarchy group.
  late final Output<String> hierarchyGroupId;

  /// A block that contains information about the levels in the hierarchy group. The <span pulumi-lang-nodejs="`hierarchyPath`" pulumi-lang-dotnet="`HierarchyPath`" pulumi-lang-go="`hierarchyPath`" pulumi-lang-python="`hierarchy_path`" pulumi-lang-yaml="`hierarchyPath`" pulumi-lang-java="`hierarchyPath`">`hierarchy_path`</span> block is documented below.
  late final Output<List<UserHierarchyGroupHierarchyPath>> hierarchyPaths;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final Output<String> instanceId;

  /// The identifier of the level in the hierarchy group.
  late final Output<String> levelId;

  /// The name of the user hierarchy group. Must not be more than 100 characters.
  late final Output<String> name;

  /// The identifier for the parent hierarchy group. The user hierarchy is created at level one if the parent group ID is null.
  late final Output<String?> parentGroupId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Tags to apply to the hierarchy group. If configured with a provider
  /// <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  UserHierarchyGroup(
    String name, {
    UserHierarchyGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:connect/userHierarchyGroup:UserHierarchyGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.hierarchyGroupId = registerOutput<String>('hierarchyGroupId');
    this.hierarchyPaths =
        registerOutput<List<UserHierarchyGroupHierarchyPath>>('hierarchyPaths');
    this.instanceId = registerOutput<String>('instanceId');
    this.levelId = registerOutput<String>('levelId');
    this.name = registerOutput<String>('name');
    this.parentGroupId = registerOutput<String?>('parentGroupId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
