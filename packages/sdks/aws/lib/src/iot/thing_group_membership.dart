import 'package:pulumi/pulumi.dart' as pulumi;
import 'thing_group_membership_args.dart';
import 'thing_group_membership_state.dart';

/// Adds an IoT Thing to an IoT Thing Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iot.ThingGroupMembership("example", {
///     thingName: "example-thing",
///     thingGroupName: "example-group",
///     overrideDynamicGroup: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iot.ThingGroupMembership("example",
///     thing_name="example-thing",
///     thing_group_name="example-group",
///     override_dynamic_group=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Iot.ThingGroupMembership("example", new()
///     {
///         ThingName = "example-thing",
///         ThingGroupName = "example-group",
///         OverrideDynamicGroup = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iot.NewThingGroupMembership(ctx, "example", &iot.ThingGroupMembershipArgs{
/// 			ThingName:            pulumi.String("example-thing"),
/// 			ThingGroupName:       pulumi.String("example-group"),
/// 			OverrideDynamicGroup: pulumi.Bool(true),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ThingGroupMembership("example", ThingGroupMembershipArgs.builder()
///             .thingName("example-thing")
///             .thingGroupName("example-group")
///             .overrideDynamicGroup(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iot:ThingGroupMembership
///     properties:
///       thingName: example-thing
///       thingGroupName: example-group
///       overrideDynamicGroup: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IoT Thing Group Membership using the thing group name and thing name. For example:
///
/// ```sh
/// $ pulumi import aws:iot/thingGroupMembership:ThingGroupMembership example thing_group_name/thing_name
/// ```
class ThingGroupMembership extends pulumi.CustomResource {
  /// Override dynamic thing groups with static thing groups when 10-group limit is reached. If a thing belongs to 10 thing groups, and one or more of those groups are dynamic thing groups, adding a thing to a static group removes the thing from the last dynamic group.
  late final pulumi.Output<bool?> overrideDynamicGroup;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The name of the group to which you are adding a thing.
  late final pulumi.Output<String> thingGroupName;

  /// The name of the thing to add to a group.
  late final pulumi.Output<String> thingName;

  /// Creates a new [ThingGroupMembership].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ThingGroupMembership]. {@macro pulumi_iot_thing_group_membership_thing_group_membership_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ThingGroupMembership(
    String name, {
    ThingGroupMembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:iot/thingGroupMembership:ThingGroupMembership',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    overrideDynamicGroup = registerOutput<bool?>('overrideDynamicGroup');
    region = registerOutput<String>('region');
    thingGroupName = registerOutput<String>('thingGroupName');
    thingName = registerOutput<String>('thingName');
  }

  /// Gets an existing [ThingGroupMembership] resource's state with the given [name] and [id].
  static ThingGroupMembership get(
    String name,
    pulumi.Input<String> id, {
    ThingGroupMembershipState? state,
  }) {
    return ThingGroupMembership._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ThingGroupMembership._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:iot/thingGroupMembership:ThingGroupMembership',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    overrideDynamicGroup = registerOutput<bool?>('overrideDynamicGroup');
    region = registerOutput<String>('region');
    thingGroupName = registerOutput<String>('thingGroupName');
    thingName = registerOutput<String>('thingName');
  }
}
