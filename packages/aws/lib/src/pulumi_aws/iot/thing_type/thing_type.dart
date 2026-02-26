import 'package:pulumi/pulumi.dart';
import '../thing_type_properties/thing_type_properties.dart';
import 'thing_type_args.dart';

/// Creates and manages an AWS IoT Thing Type.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.iot.ThingType("foo", {name: "my_iot_thing"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.iot.ThingType("foo", name="my_iot_thing")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = new Aws.Iot.ThingType("foo", new()
/// {
/// Name = "my_iot_thing",
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
/// _, err := iot.NewThingType(ctx, "foo", &iot.ThingTypeArgs{
/// Name: pulumi.String("my_iot_thing"),
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
/// import com.pulumi.aws.iot.ThingType;
/// import com.pulumi.aws.iot.ThingTypeArgs;
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
/// var foo = new ThingType("foo", ThingTypeArgs.builder()
/// .name("my_iot_thing")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: aws:iot:ThingType
/// properties:
/// name: my_iot_thing
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import IOT Thing Types using the name. For example:
///
/// ```sh
/// $ pulumi import aws:iot/thingType:ThingType example example
/// ```
class ThingType extends CustomResource {
  /// The ARN of the created AWS IoT Thing Type.
  late final Output<String> arn;

  /// Whether the thing type is deprecated. If true, no new things could be associated with this type.
  late final Output<bool?> deprecated;

  /// The name of the thing type.
  late final Output<String> name;

  /// , Configuration block that can contain the following properties of the thing type:
  late final Output<ThingTypeProperties?> properties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ThingType(
    String name, {
    ThingTypeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iot/thingType:ThingType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.deprecated = Output.createUnknown<bool?>();
    this.name = Output.createUnknown<String>();
    this.properties = Output.createUnknown<ThingTypeProperties?>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
