import 'package:pulumi/pulumi.dart';
import 'appregistry_attribute_group_args.dart';

/// Resource for managing an AWS Service Catalog AppRegistry Attribute Group.
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
/// const example = new aws.servicecatalog.AppregistryAttributeGroup("example", {
/// name: "example",
/// description: "example description",
/// attributes: JSON.stringify({
/// app: "exampleapp",
/// group: "examplegroup",
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.AppregistryAttributeGroup("example",
/// name="example",
/// description="example description",
/// attributes=json.dumps({
/// "app": "exampleapp",
/// "group": "examplegroup",
/// }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ServiceCatalog.AppregistryAttributeGroup("example", new()
/// {
/// Name = "example",
/// Description = "example description",
/// Attributes = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["app"] = "exampleapp",
/// ["group"] = "examplegroup",
/// }),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "app":   "exampleapp",
/// "group": "examplegroup",
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = servicecatalog.NewAppregistryAttributeGroup(ctx, "example", &servicecatalog.AppregistryAttributeGroupArgs{
/// Name:        pulumi.String("example"),
/// Description: pulumi.String("example description"),
/// Attributes:  pulumi.String(json0),
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
/// import com.pulumi.aws.servicecatalog.AppregistryAttributeGroup;
/// import com.pulumi.aws.servicecatalog.AppregistryAttributeGroupArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// var example = new AppregistryAttributeGroup("example", AppregistryAttributeGroupArgs.builder()
/// .name("example")
/// .description("example description")
/// .attributes(serializeJson(
/// jsonObject(
/// jsonProperty("app", "exampleapp"),
/// jsonProperty("group", "examplegroup")
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:servicecatalog:AppregistryAttributeGroup
/// properties:
/// name: example
/// description: example description
/// attributes:
/// fn::toJSON:
/// app: exampleapp
/// group: examplegroup
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Service Catalog AppRegistry Attribute Group using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/appregistryAttributeGroup:AppregistryAttributeGroup example 1234567890abcfedhijk09876s
/// ```
class AppregistryAttributeGroup extends CustomResource {
  /// ARN of the Attribute Group.
  late final Output<String> arn;

  /// A JSON string of nested key-value pairs that represents the attributes of the group.
  ///
  /// The following arguments are optional:
  late final Output<String> attributes;

  /// Description of the Attribute Group.
  late final Output<String?> description;

  /// Name of the Attribute Group.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags assigned to the Attribute Group. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  AppregistryAttributeGroup(
    String name, {
    AppregistryAttributeGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/appregistryAttributeGroup:AppregistryAttributeGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.attributes = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
