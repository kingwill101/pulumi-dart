import 'package:pulumi/pulumi.dart';
import 'thing_group_membership_args.dart';

/// Adds an IoT Thing to an IoT Thing Group.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iot.ThingGroupMembership("example", {
/// thingName: "example-thing",
/// thingGroupName: "example-group",
/// overrideDynamicGroup: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iot.ThingGroupMembership("example",
/// thing_name="example-thing",
/// thing_group_name="example-group",
/// override_dynamic_group=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Iot.ThingGroupMembership("example", new()
/// {
/// ThingName = "example-thing",
/// ThingGroupName = "example-group",
/// OverrideDynamicGroup = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iot.NewThingGroupMembership(ctx, "example", &iot.ThingGroupMembershipArgs{
/// ThingName:            pulumi.String("example-thing"),
/// ThingGroupName:       pulumi.String("example-group"),
/// OverrideDynamicGroup: pulumi.Bool(true),
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
/// import com.pulumi.aws.iot.ThingGroupMembership;
/// import com.pulumi.aws.iot.ThingGroupMembershipArgs;
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
/// var example = new ThingGroupMembership("example", ThingGroupMembershipArgs.builder()
/// .thingName("example-thing")
/// .thingGroupName("example-group")
/// .overrideDynamicGroup(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iot:ThingGroupMembership
/// properties:
/// thingName: example-thing
/// thingGroupName: example-group
/// overrideDynamicGroup: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import IoT Thing Group Membership using the thing group name and thing name. For example:
///
/// ```sh
/// $ pulumi import aws:iot/thingGroupMembership:ThingGroupMembership example thing_group_name/thing_name
/// ```
class ThingGroupMembership extends CustomResource {
  /// Override dynamic thing groups with static thing groups when 10-group limit is reached. If a thing belongs to 10 thing groups, and one or more of those groups are dynamic thing groups, adding a thing to a static group removes the thing from the last dynamic group.
  late final Output<bool?> overrideDynamicGroup;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the group to which you are adding a thing.
  late final Output<String> thingGroupName;

  /// The name of the thing to add to a group.
  late final Output<String> thingName;

  ThingGroupMembership(
    String name, {
    ThingGroupMembershipArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iot/thingGroupMembership:ThingGroupMembership',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.overrideDynamicGroup = registerOutput<bool?>('overrideDynamicGroup');
    this.region = registerOutput<String>('region');
    this.thingGroupName = registerOutput<String>('thingGroupName');
    this.thingName = registerOutput<String>('thingName');
  }
}
