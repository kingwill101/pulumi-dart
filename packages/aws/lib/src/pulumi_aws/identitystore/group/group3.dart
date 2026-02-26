import 'package:pulumi/pulumi.dart';
import '../group_external_id/group_external_id.dart';
import 'group_args3.dart';

/// Resource for managing an AWS IdentityStore Group.
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
/// const _this = new aws.identitystore.Group("this", {
/// displayName: "Example group",
/// description: "Example description",
/// identityStoreId: example.identityStoreIds[0],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// this = aws.identitystore.Group("this",
/// display_name="Example group",
/// description="Example description",
/// identity_store_id=example["identityStoreIds"][0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @this = new Aws.IdentityStore.Group("this", new()
/// {
/// DisplayName = "Example group",
/// Description = "Example description",
/// IdentityStoreId = example.IdentityStoreIds[0],
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/identitystore"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := identitystore.NewGroup(ctx, "this", &identitystore.GroupArgs{
/// DisplayName:     pulumi.String("Example group"),
/// Description:     pulumi.String("Example description"),
/// IdentityStoreId: pulumi.Any(example.IdentityStoreIds[0]),
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
/// import com.pulumi.aws.identitystore.Group;
/// import com.pulumi.aws.identitystore.GroupArgs;
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
/// var this_ = new Group("this", GroupArgs.builder()
/// .displayName("Example group")
/// .description("Example description")
/// .identityStoreId(example.identityStoreIds()[0])
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// this:
/// type: aws:identitystore:Group
/// properties:
/// displayName: Example group
/// description: Example description
/// identityStoreId: ${example.identityStoreIds[0]}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import an Identity Store Group using the combination `identity_store_id/group_id`. For example:
///
/// ```sh
/// $ pulumi import aws:identitystore/group:Group example d-9c6705e95c/b8a1c340-8031-7071-a2fb-7dc540320c30
/// ```
class Group3 extends CustomResource {
  /// ARN of the Group.
  late final Output<String> arn;

  /// A string containing the description of the group.
  late final Output<String?> description;

  /// A string containing the name of the group. This value is commonly displayed when the group is referenced.
  late final Output<String> displayName;

  /// A list of external IDs that contains the identifiers issued to this resource by an external identity provider. See External IDs below.
  late final Output<List<GroupExternalId>> externalIds;

  /// The identifier of the newly created group in the identity store.
  late final Output<String> groupId;

  /// The globally unique identifier for the identity store.
  ///
  /// The following arguments are optional:
  late final Output<String> identityStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Group3(
    String name, {
    GroupArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:identitystore/group:Group',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.externalIds = registerOutput<List<GroupExternalId>>('externalIds');
    this.groupId = registerOutput<String>('groupId');
    this.identityStoreId = registerOutput<String>('identityStoreId');
    this.region = registerOutput<String>('region');
  }
}
