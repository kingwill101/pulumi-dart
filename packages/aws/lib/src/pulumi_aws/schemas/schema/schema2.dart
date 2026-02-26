import 'package:pulumi/pulumi.dart';
import 'schema_args2.dart';

/// Provides an EventBridge Schema resource.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.schemas.Registry("test", {name: "my_own_registry"});
/// const testSchema = new aws.schemas.Schema("test", {
/// name: "my_schema",
/// registryName: test.name,
/// type: "OpenApi3",
/// description: "The schema definition for my event",
/// content: JSON.stringify({
/// openapi: "3.0.0",
/// info: {
/// version: "1.0.0",
/// title: "Event",
/// },
/// paths: {},
/// components: {
/// schemas: {
/// Event: {
/// type: "object",
/// properties: {
/// name: {
/// type: "string",
/// },
/// },
/// },
/// },
/// },
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// test = aws.schemas.Registry("test", name="my_own_registry")
/// test_schema = aws.schemas.Schema("test",
/// name="my_schema",
/// registry_name=test.name,
/// type="OpenApi3",
/// description="The schema definition for my event",
/// content=json.dumps({
/// "openapi": "3.0.0",
/// "info": {
/// "version": "1.0.0",
/// "title": "Event",
/// },
/// "paths": {},
/// "components": {
/// "schemas": {
/// "Event": {
/// "type": "object",
/// "properties": {
/// "name": {
/// "type": "string",
/// },
/// },
/// },
/// },
/// },
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
/// var test = new Aws.Schemas.Registry("test", new()
/// {
/// Name = "my_own_registry",
/// });
///
/// var testSchema = new Aws.Schemas.Schema("test", new()
/// {
/// Name = "my_schema",
/// RegistryName = test.Name,
/// Type = "OpenApi3",
/// Description = "The schema definition for my event",
/// Content = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["openapi"] = "3.0.0",
/// ["info"] = new Dictionary<string, object?>
/// {
/// ["version"] = "1.0.0",
/// ["title"] = "Event",
/// },
/// ["paths"] = new Dictionary<string, object?>
/// {
/// },
/// ["components"] = new Dictionary<string, object?>
/// {
/// ["schemas"] = new Dictionary<string, object?>
/// {
/// ["Event"] = new Dictionary<string, object?>
/// {
/// ["type"] = "object",
/// ["properties"] = new Dictionary<string, object?>
/// {
/// ["name"] = new Dictionary<string, object?>
/// {
/// ["type"] = "string",
/// },
/// },
/// },
/// },
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/schemas"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := schemas.NewRegistry(ctx, "test", &schemas.RegistryArgs{
/// Name: pulumi.String("my_own_registry"),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "openapi": "3.0.0",
/// "info": map[string]interface{}{
/// "version": "1.0.0",
/// "title":   "Event",
/// },
/// "paths": map[string]interface{}{},
/// "components": map[string]interface{}{
/// "schemas": map[string]interface{}{
/// "Event": map[string]interface{}{
/// "type": "object",
/// "properties": map[string]interface{}{
/// "name": map[string]interface{}{
/// "type": "string",
/// },
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = schemas.NewSchema(ctx, "test", &schemas.SchemaArgs{
/// Name:         pulumi.String("my_schema"),
/// RegistryName: test.Name,
/// Type:         pulumi.String("OpenApi3"),
/// Description:  pulumi.String("The schema definition for my event"),
/// Content:      pulumi.String(json0),
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
/// import com.pulumi.aws.schemas.Registry;
/// import com.pulumi.aws.schemas.RegistryArgs;
/// import com.pulumi.aws.schemas.Schema;
/// import com.pulumi.aws.schemas.SchemaArgs;
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
/// var test = new Registry("test", RegistryArgs.builder()
/// .name("my_own_registry")
/// .build());
///
/// var testSchema = new Schema("testSchema", SchemaArgs.builder()
/// .name("my_schema")
/// .registryName(test.name())
/// .type("OpenApi3")
/// .description("The schema definition for my event")
/// .content(serializeJson(
/// jsonObject(
/// jsonProperty("openapi", "3.0.0"),
/// jsonProperty("info", jsonObject(
/// jsonProperty("version", "1.0.0"),
/// jsonProperty("title", "Event")
/// )),
/// jsonProperty("paths", jsonObject(
///
/// )),
/// jsonProperty("components", jsonObject(
/// jsonProperty("schemas", jsonObject(
/// jsonProperty("Event", jsonObject(
/// jsonProperty("type", "object"),
/// jsonProperty("properties", jsonObject(
/// jsonProperty("name", jsonObject(
/// jsonProperty("type", "string")
/// ))
/// ))
/// ))
/// ))
/// ))
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:schemas:Registry
/// properties:
/// name: my_own_registry
/// testSchema:
/// type: aws:schemas:Schema
/// name: test
/// properties:
/// name: my_schema
/// registryName: ${test.name}
/// type: OpenApi3
/// description: The schema definition for my event
/// content:
/// fn::toJSON:
/// openapi: 3.0.0
/// info:
/// version: 1.0.0
/// title: Event
/// paths: {}
/// components:
/// schemas:
/// Event:
/// type: object
/// properties:
/// name:
/// type: string
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import EventBridge schema using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> and <span pulumi-lang-nodejs="`registryName`" pulumi-lang-dotnet="`RegistryName`" pulumi-lang-go="`registryName`" pulumi-lang-python="`registry_name`" pulumi-lang-yaml="`registryName`" pulumi-lang-java="`registryName`">`registry_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:schemas/schema:Schema test name/registry
/// ```
class Schema2 extends CustomResource {
  /// The Amazon Resource Name (ARN) of the discoverer.
  late final Output<String> arn;

  /// The schema specification. Must be a valid Open API 3.0 spec.
  late final Output<String> content;

  /// The description of the schema. Maximum of 256 characters.
  late final Output<String?> description;

  /// The last modified date of the schema.
  late final Output<String> lastModified;

  /// The name of the schema. Maximum of 385 characters consisting of lower case letters, upper case letters, ., -, _, @.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the registry in which this schema belongs.
  late final Output<String> registryName;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The type of the schema. Valid values: `OpenApi3` or `JSONSchemaDraft4`.
  late final Output<String> type;

  /// The version of the schema.
  late final Output<String> version;

  /// The created date of the version of the schema.
  late final Output<String> versionCreatedDate;

  Schema2(
    String name, {
    SchemaArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:schemas/schema:Schema',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.content = registerOutput<String>('content');
    this.description = registerOutput<String?>('description');
    this.lastModified = registerOutput<String>('lastModified');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.registryName = registerOutput<String>('registryName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
    this.version = registerOutput<String>('version');
    this.versionCreatedDate = registerOutput<String>('versionCreatedDate');
  }
}
