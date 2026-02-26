import 'package:pulumi/pulumi.dart';
import '../thing_group_metadata/thing_group_metadata.dart';
import '../thing_group_properties/thing_group_properties.dart';
import 'thing_group_args.dart';

/// Manages an AWS IoT Thing Group.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const parent = new aws.iot.ThingGroup("parent", {name: "parent"});
/// const example = new aws.iot.ThingGroup("example", {
/// name: "example",
/// parentGroupName: parent.name,
/// properties: {
/// attributePayload: {
/// attributes: {
/// One: "11111",
/// Two: "TwoTwo",
/// },
/// },
/// description: "This is my thing group",
/// },
/// tags: {
/// managed: "true",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// parent = aws.iot.ThingGroup("parent", name="parent")
/// example = aws.iot.ThingGroup("example",
/// name="example",
/// parent_group_name=parent.name,
/// properties={
/// "attribute_payload": {
/// "attributes": {
/// "One": "11111",
/// "Two": "TwoTwo",
/// },
/// },
/// "description": "This is my thing group",
/// },
/// tags={
/// "managed": "true",
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
/// var parent = new Aws.Iot.ThingGroup("parent", new()
/// {
/// Name = "parent",
/// });
///
/// var example = new Aws.Iot.ThingGroup("example", new()
/// {
/// Name = "example",
/// ParentGroupName = parent.Name,
/// Properties = new Aws.Iot.Inputs.ThingGroupPropertiesArgs
/// {
/// AttributePayload = new Aws.Iot.Inputs.ThingGroupPropertiesAttributePayloadArgs
/// {
/// Attributes =
/// {
/// { "One", "11111" },
/// { "Two", "TwoTwo" },
/// },
/// },
/// Description = "This is my thing group",
/// },
/// Tags =
/// {
/// { "managed", "true" },
/// },
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
/// parent, err := iot.NewThingGroup(ctx, "parent", &iot.ThingGroupArgs{
/// Name: pulumi.String("parent"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iot.NewThingGroup(ctx, "example", &iot.ThingGroupArgs{
/// Name:            pulumi.String("example"),
/// ParentGroupName: parent.Name,
/// Properties: &iot.ThingGroupPropertiesArgs{
/// AttributePayload: &iot.ThingGroupPropertiesAttributePayloadArgs{
/// Attributes: pulumi.StringMap{
/// "One": pulumi.String("11111"),
/// "Two": pulumi.String("TwoTwo"),
/// },
/// },
/// Description: pulumi.String("This is my thing group"),
/// },
/// Tags: pulumi.StringMap{
/// "managed": pulumi.String("true"),
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
/// import com.pulumi.aws.iot.ThingGroup;
/// import com.pulumi.aws.iot.ThingGroupArgs;
/// import com.pulumi.aws.iot.inputs.ThingGroupPropertiesArgs;
/// import com.pulumi.aws.iot.inputs.ThingGroupPropertiesAttributePayloadArgs;
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
/// var parent = new ThingGroup("parent", ThingGroupArgs.builder()
/// .name("parent")
/// .build());
///
/// var example = new ThingGroup("example", ThingGroupArgs.builder()
/// .name("example")
/// .parentGroupName(parent.name())
/// .properties(ThingGroupPropertiesArgs.builder()
/// .attributePayload(ThingGroupPropertiesAttributePayloadArgs.builder()
/// .attributes(Map.ofEntries(
/// Map.entry("One", "11111"),
/// Map.entry("Two", "TwoTwo")
/// ))
/// .build())
/// .description("This is my thing group")
/// .build())
/// .tags(Map.of("managed", "true"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// parent:
/// type: aws:iot:ThingGroup
/// properties:
/// name: parent
/// example:
/// type: aws:iot:ThingGroup
/// properties:
/// name: example
/// parentGroupName: ${parent.name}
/// properties:
/// attributePayload:
/// attributes:
/// One: '11111'
/// Two: TwoTwo
/// description: This is my thing group
/// tags:
/// managed: 'true'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import IoT Things Groups using the name. For example:
///
/// ```sh
/// $ pulumi import aws:iot/thingGroup:ThingGroup example example
/// ```
class ThingGroup extends CustomResource {
  /// The ARN of the Thing Group.
  late final Output<String> arn;
  late final Output<List<ThingGroupMetadata>> metadatas;

  /// The name of the Thing Group.
  late final Output<String> name;

  /// The name of the parent Thing Group.
  late final Output<String?> parentGroupName;

  /// The Thing Group properties. Defined below.
  late final Output<ThingGroupProperties?> properties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value mapping of resource tags
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The current version of the Thing Group record in the registry.
  late final Output<int> version;

  ThingGroup(
    String name, {
    ThingGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iot/thingGroup:ThingGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.metadatas = Output.createUnknown<List<ThingGroupMetadata>>();
    this.name = Output.createUnknown<String>();
    this.parentGroupName = Output.createUnknown<String?>();
    this.properties = Output.createUnknown<ThingGroupProperties?>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.version = Output.createUnknown<int>();
  }
}
