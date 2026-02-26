import 'package:pulumi/pulumi.dart';
import '../tool_client_function/tool_client_function.dart';
import '../tool_data_store_tool/tool_data_store_tool.dart';
import '../tool_google_search_tool/tool_google_search_tool.dart';
import '../tool_open_api_tool/tool_open_api_tool.dart';
import '../tool_python_function/tool_python_function.dart';
import '../tool_system_tool/tool_system_tool.dart';
import 'tool_args.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Ces Tool Client Function Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_app = new gcp.ces.App("my-app", {
/// location: "us",
/// displayName: "my-app",
/// appId: "app-id",
/// timeZoneSettings: {
/// timeZone: "America/Los_Angeles",
/// },
/// });
/// const cesToolClientFunctionBasic = new gcp.ces.Tool("ces_tool_client_function_basic", {
/// location: "us",
/// app: my_app.name,
/// toolId: "ces_tool_basic1",
/// executionType: "SYNCHRONOUS",
/// clientFunction: {
/// name: "ces_tool_client_function_basic",
/// description: "example-description",
/// parameters: {
/// additionalProperties: JSON.stringify({
/// type: "BOOLEAN",
/// }),
/// anyOf: JSON.stringify([{
/// type: "STRING",
/// description: "any_of option 1: string",
/// }]),
/// "default": JSON.stringify(false),
/// defs: JSON.stringify({
/// SimpleString: {
/// type: "STRING",
/// description: "A simple string definition",
/// },
/// }),
/// description: "schema description",
/// enums: [
/// "VALUE_A",
/// "VALUE_B",
/// ],
/// items: JSON.stringify({
/// type: "ARRAY",
/// description: "An array",
/// }),
/// maxItems: 32,
/// maximum: 64,
/// minItems: 1,
/// minimum: 2,
/// nullable: true,
/// prefixItems: JSON.stringify([{
/// type: "ARRAY",
/// description: "prefix item 1",
/// }]),
/// properties: JSON.stringify({
/// name: {
/// type: "STRING",
/// description: "A name",
/// },
/// }),
/// ref: "#/defs/MyDefinition",
/// requireds: ["some_property"],
/// title: "Title",
/// type: "ARRAY",
/// uniqueItems: true,
/// },
/// response: {
/// additionalProperties: JSON.stringify({
/// type: "BOOLEAN",
/// }),
/// anyOf: JSON.stringify([{
/// type: "STRING",
/// description: "any_of option 1: string",
/// }]),
/// "default": JSON.stringify(false),
/// defs: JSON.stringify({
/// SimpleString: {
/// type: "STRING",
/// description: "A simple string definition",
/// },
/// }),
/// description: "schema description",
/// enums: [
/// "VALUE_A",
/// "VALUE_B",
/// ],
/// items: JSON.stringify({
/// type: "ARRAY",
/// description: "An array",
/// }),
/// maxItems: 32,
/// maximum: 64,
/// minItems: 1,
/// minimum: 2,
/// nullable: true,
/// prefixItems: JSON.stringify([{
/// type: "ARRAY",
/// description: "prefix item 1",
/// }]),
/// properties: JSON.stringify({
/// name: {
/// type: "STRING",
/// description: "A name",
/// },
/// }),
/// ref: "#/defs/MyDefinition",
/// requireds: ["some_property"],
/// title: "Title",
/// type: "ARRAY",
/// uniqueItems: true,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// my_app = gcp.ces.App("my-app",
/// location="us",
/// display_name="my-app",
/// app_id="app-id",
/// time_zone_settings={
/// "time_zone": "America/Los_Angeles",
/// })
/// ces_tool_client_function_basic = gcp.ces.Tool("ces_tool_client_function_basic",
/// location="us",
/// app=my_app.name,
/// tool_id="ces_tool_basic1",
/// execution_type="SYNCHRONOUS",
/// client_function={
/// "name": "ces_tool_client_function_basic",
/// "description": "example-description",
/// "parameters": {
/// "additional_properties": json.dumps({
/// "type": "BOOLEAN",
/// }),
/// "any_of": json.dumps([{
/// "type": "STRING",
/// "description": "any_of option 1: string",
/// }]),
/// "default": json.dumps(False),
/// "defs": json.dumps({
/// "SimpleString": {
/// "type": "STRING",
/// "description": "A simple string definition",
/// },
/// }),
/// "description": "schema description",
/// "enums": [
/// "VALUE_A",
/// "VALUE_B",
/// ],
/// "items": json.dumps({
/// "type": "ARRAY",
/// "description": "An array",
/// }),
/// "max_items": 32,
/// "maximum": 64,
/// "min_items": 1,
/// "minimum": 2,
/// "nullable": True,
/// "prefix_items": json.dumps([{
/// "type": "ARRAY",
/// "description": "prefix item 1",
/// }]),
/// "properties": json.dumps({
/// "name": {
/// "type": "STRING",
/// "description": "A name",
/// },
/// }),
/// "ref": "#/defs/MyDefinition",
/// "requireds": ["some_property"],
/// "title": "Title",
/// "type": "ARRAY",
/// "unique_items": True,
/// },
/// "response": {
/// "additional_properties": json.dumps({
/// "type": "BOOLEAN",
/// }),
/// "any_of": json.dumps([{
/// "type": "STRING",
/// "description": "any_of option 1: string",
/// }]),
/// "default": json.dumps(False),
/// "defs": json.dumps({
/// "SimpleString": {
/// "type": "STRING",
/// "description": "A simple string definition",
/// },
/// }),
/// "description": "schema description",
/// "enums": [
/// "VALUE_A",
/// "VALUE_B",
/// ],
/// "items": json.dumps({
/// "type": "ARRAY",
/// "description": "An array",
/// }),
/// "max_items": 32,
/// "maximum": 64,
/// "min_items": 1,
/// "minimum": 2,
/// "nullable": True,
/// "prefix_items": json.dumps([{
/// "type": "ARRAY",
/// "description": "prefix item 1",
/// }]),
/// "properties": json.dumps({
/// "name": {
/// "type": "STRING",
/// "description": "A name",
/// },
/// }),
/// "ref": "#/defs/MyDefinition",
/// "requireds": ["some_property"],
/// "title": "Title",
/// "type": "ARRAY",
/// "unique_items": True,
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_app = new Gcp.Ces.App("my-app", new()
/// {
/// Location = "us",
/// DisplayName = "my-app",
/// AppId = "app-id",
/// TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
/// {
/// TimeZone = "America/Los_Angeles",
/// },
/// });
///
/// var cesToolClientFunctionBasic = new Gcp.Ces.Tool("ces_tool_client_function_basic", new()
/// {
/// Location = "us",
/// App = my_app.Name,
/// ToolId = "ces_tool_basic1",
/// ExecutionType = "SYNCHRONOUS",
/// ClientFunction = new Gcp.Ces.Inputs.ToolClientFunctionArgs
/// {
/// Name = "ces_tool_client_function_basic",
/// Description = "example-description",
/// Parameters = new Gcp.Ces.Inputs.ToolClientFunctionParametersArgs
/// {
/// AdditionalProperties = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["type"] = "BOOLEAN",
/// }),
/// AnyOf = JsonSerializer.Serialize(new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["type"] = "STRING",
/// ["description"] = "any_of option 1: string",
/// },
/// }),
/// Default = JsonSerializer.Serialize(false),
/// Defs = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["SimpleString"] = new Dictionary<string, object?>
/// {
/// ["type"] = "STRING",
/// ["description"] = "A simple string definition",
/// },
/// }),
/// Description = "schema description",
/// Enums = new[]
/// {
/// "VALUE_A",
/// "VALUE_B",
/// },
/// Items = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["type"] = "ARRAY",
/// ["description"] = "An array",
/// }),
/// MaxItems = 32,
/// Maximum = 64,
/// MinItems = 1,
/// Minimum = 2,
/// Nullable = true,
/// PrefixItems = JsonSerializer.Serialize(new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["type"] = "ARRAY",
/// ["description"] = "prefix item 1",
/// },
/// }),
/// Properties = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["name"] = new Dictionary<string, object?>
/// {
/// ["type"] = "STRING",
/// ["description"] = "A name",
/// },
/// }),
/// Ref = "#/defs/MyDefinition",
/// Requireds = new[]
/// {
/// "some_property",
/// },
/// Title = "Title",
/// Type = "ARRAY",
/// UniqueItems = true,
/// },
/// Response = new Gcp.Ces.Inputs.ToolClientFunctionResponseArgs
/// {
/// AdditionalProperties = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["type"] = "BOOLEAN",
/// }),
/// AnyOf = JsonSerializer.Serialize(new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["type"] = "STRING",
/// ["description"] = "any_of option 1: string",
/// },
/// }),
/// Default = JsonSerializer.Serialize(false),
/// Defs = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["SimpleString"] = new Dictionary<string, object?>
/// {
/// ["type"] = "STRING",
/// ["description"] = "A simple string definition",
/// },
/// }),
/// Description = "schema description",
/// Enums = new[]
/// {
/// "VALUE_A",
/// "VALUE_B",
/// },
/// Items = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["type"] = "ARRAY",
/// ["description"] = "An array",
/// }),
/// MaxItems = 32,
/// Maximum = 64,
/// MinItems = 1,
/// Minimum = 2,
/// Nullable = true,
/// PrefixItems = JsonSerializer.Serialize(new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["type"] = "ARRAY",
/// ["description"] = "prefix item 1",
/// },
/// }),
/// Properties = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["name"] = new Dictionary<string, object?>
/// {
/// ["type"] = "STRING",
/// ["description"] = "A name",
/// },
/// }),
/// Ref = "#/defs/MyDefinition",
/// Requireds = new[]
/// {
/// "some_property",
/// },
/// Title = "Title",
/// Type = "ARRAY",
/// UniqueItems = true,
/// },
/// },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// my_app, err := ces.NewApp(ctx, "my-app", &ces.AppArgs{
/// Location:    pulumi.String("us"),
/// DisplayName: pulumi.String("my-app"),
/// AppId:       pulumi.String("app-id"),
/// TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// TimeZone: pulumi.String("America/Los_Angeles"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "type": "BOOLEAN",
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// tmpJSON1, err := json.Marshal([]map[string]interface{}{
/// map[string]interface{}{
/// "type":        "STRING",
/// "description": "any_of option 1: string",
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json1 := string(tmpJSON1)
/// tmpJSON2, err := json.Marshal(false)
/// if err != nil {
/// return err
/// }
/// json2 := string(tmpJSON2)
/// tmpJSON3, err := json.Marshal(map[string]interface{}{
/// "SimpleString": map[string]interface{}{
/// "type":        "STRING",
/// "description": "A simple string definition",
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json3 := string(tmpJSON3)
/// tmpJSON4, err := json.Marshal(map[string]interface{}{
/// "type":        "ARRAY",
/// "description": "An array",
/// })
/// if err != nil {
/// return err
/// }
/// json4 := string(tmpJSON4)
/// tmpJSON5, err := json.Marshal([]map[string]interface{}{
/// map[string]interface{}{
/// "type":        "ARRAY",
/// "description": "prefix item 1",
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json5 := string(tmpJSON5)
/// tmpJSON6, err := json.Marshal(map[string]interface{}{
/// "name": map[string]interface{}{
/// "type":        "STRING",
/// "description": "A name",
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json6 := string(tmpJSON6)
/// tmpJSON7, err := json.Marshal(map[string]interface{}{
/// "type": "BOOLEAN",
/// })
/// if err != nil {
/// return err
/// }
/// json7 := string(tmpJSON7)
/// tmpJSON8, err := json.Marshal([]map[string]interface{}{
/// map[string]interface{}{
/// "type":        "STRING",
/// "description": "any_of option 1: string",
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json8 := string(tmpJSON8)
/// tmpJSON9, err := json.Marshal(false)
/// if err != nil {
/// return err
/// }
/// json9 := string(tmpJSON9)
/// tmpJSON10, err := json.Marshal(map[string]interface{}{
/// "SimpleString": map[string]interface{}{
/// "type":        "STRING",
/// "description": "A simple string definition",
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json10 := string(tmpJSON10)
/// tmpJSON11, err := json.Marshal(map[string]interface{}{
/// "type":        "ARRAY",
/// "description": "An array",
/// })
/// if err != nil {
/// return err
/// }
/// json11 := string(tmpJSON11)
/// tmpJSON12, err := json.Marshal([]map[string]interface{}{
/// map[string]interface{}{
/// "type":        "ARRAY",
/// "description": "prefix item 1",
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json12 := string(tmpJSON12)
/// tmpJSON13, err := json.Marshal(map[string]interface{}{
/// "name": map[string]interface{}{
/// "type":        "STRING",
/// "description": "A name",
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json13 := string(tmpJSON13)
/// _, err = ces.NewTool(ctx, "ces_tool_client_function_basic", &ces.ToolArgs{
/// Location:      pulumi.String("us"),
/// App:           my_app.Name,
/// ToolId:        pulumi.String("ces_tool_basic1"),
/// ExecutionType: pulumi.String("SYNCHRONOUS"),
/// ClientFunction: &ces.ToolClientFunctionArgs{
/// Name:        pulumi.String("ces_tool_client_function_basic"),
/// Description: pulumi.String("example-description"),
/// Parameters: &ces.ToolClientFunctionParametersArgs{
/// AdditionalProperties: pulumi.String(json0),
/// AnyOf:                pulumi.String(json1),
/// Default:              pulumi.String(json2),
/// Defs:                 pulumi.String(json3),
/// Description:          pulumi.String("schema description"),
/// Enums: pulumi.StringArray{
/// pulumi.String("VALUE_A"),
/// pulumi.String("VALUE_B"),
/// },
/// Items:       pulumi.String(json4),
/// MaxItems:    pulumi.Int(32),
/// Maximum:     pulumi.Float64(64),
/// MinItems:    pulumi.Int(1),
/// Minimum:     pulumi.Float64(2),
/// Nullable:    pulumi.Bool(true),
/// PrefixItems: pulumi.String(json5),
/// Properties:  pulumi.String(json6),
/// Ref:         pulumi.String("#/defs/MyDefinition"),
/// Requireds: pulumi.StringArray{
/// pulumi.String("some_property"),
/// },
/// Title:       pulumi.String("Title"),
/// Type:        pulumi.String("ARRAY"),
/// UniqueItems: pulumi.Bool(true),
/// },
/// Response: &ces.ToolClientFunctionResponseArgs{
/// AdditionalProperties: pulumi.String(json7),
/// AnyOf:                pulumi.String(json8),
/// Default:              pulumi.String(json9),
/// Defs:                 pulumi.String(json10),
/// Description:          pulumi.String("schema description"),
/// Enums: pulumi.StringArray{
/// pulumi.String("VALUE_A"),
/// pulumi.String("VALUE_B"),
/// },
/// Items:       pulumi.String(json11),
/// MaxItems:    pulumi.Int(32),
/// Maximum:     pulumi.Float64(64),
/// MinItems:    pulumi.Int(1),
/// Minimum:     pulumi.Float64(2),
/// Nullable:    pulumi.Bool(true),
/// PrefixItems: pulumi.String(json12),
/// Properties:  pulumi.String(json13),
/// Ref:         pulumi.String("#/defs/MyDefinition"),
/// Requireds: pulumi.StringArray{
/// pulumi.String("some_property"),
/// },
/// Title:       pulumi.String("Title"),
/// Type:        pulumi.String("ARRAY"),
/// UniqueItems: pulumi.Bool(true),
/// },
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
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Tool;
/// import com.pulumi.gcp.ces.ToolArgs;
/// import com.pulumi.gcp.ces.inputs.ToolClientFunctionArgs;
/// import com.pulumi.gcp.ces.inputs.ToolClientFunctionParametersArgs;
/// import com.pulumi.gcp.ces.inputs.ToolClientFunctionResponseArgs;
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
/// var my_app = new App("my-app", AppArgs.builder()
/// .location("us")
/// .displayName("my-app")
/// .appId("app-id")
/// .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
/// .timeZone("America/Los_Angeles")
/// .build())
/// .build());
///
/// var cesToolClientFunctionBasic = new Tool("cesToolClientFunctionBasic", ToolArgs.builder()
/// .location("us")
/// .app(my_app.name())
/// .toolId("ces_tool_basic1")
/// .executionType("SYNCHRONOUS")
/// .clientFunction(ToolClientFunctionArgs.builder()
/// .name("ces_tool_client_function_basic")
/// .description("example-description")
/// .parameters(ToolClientFunctionParametersArgs.builder()
/// .additionalProperties(serializeJson(
/// jsonObject(
/// jsonProperty("type", "BOOLEAN")
/// )))
/// .anyOf(serializeJson(
/// jsonArray(jsonObject(
/// jsonProperty("type", "STRING"),
/// jsonProperty("description", "any_of option 1: string")
/// ))))
/// .default_(serializeJson(
/// false))
/// .defs(serializeJson(
/// jsonObject(
/// jsonProperty("SimpleString", jsonObject(
/// jsonProperty("type", "STRING"),
/// jsonProperty("description", "A simple string definition")
/// ))
/// )))
/// .description("schema description")
/// .enums(
/// "VALUE_A",
/// "VALUE_B")
/// .items(serializeJson(
/// jsonObject(
/// jsonProperty("type", "ARRAY"),
/// jsonProperty("description", "An array")
/// )))
/// .maxItems(32)
/// .maximum(64.0)
/// .minItems(1)
/// .minimum(2.0)
/// .nullable(true)
/// .prefixItems(serializeJson(
/// jsonArray(jsonObject(
/// jsonProperty("type", "ARRAY"),
/// jsonProperty("description", "prefix item 1")
/// ))))
/// .properties(serializeJson(
/// jsonObject(
/// jsonProperty("name", jsonObject(
/// jsonProperty("type", "STRING"),
/// jsonProperty("description", "A name")
/// ))
/// )))
/// .ref("#/defs/MyDefinition")
/// .requireds("some_property")
/// .title("Title")
/// .type("ARRAY")
/// .uniqueItems(true)
/// .build())
/// .response(ToolClientFunctionResponseArgs.builder()
/// .additionalProperties(serializeJson(
/// jsonObject(
/// jsonProperty("type", "BOOLEAN")
/// )))
/// .anyOf(serializeJson(
/// jsonArray(jsonObject(
/// jsonProperty("type", "STRING"),
/// jsonProperty("description", "any_of option 1: string")
/// ))))
/// .default_(serializeJson(
/// false))
/// .defs(serializeJson(
/// jsonObject(
/// jsonProperty("SimpleString", jsonObject(
/// jsonProperty("type", "STRING"),
/// jsonProperty("description", "A simple string definition")
/// ))
/// )))
/// .description("schema description")
/// .enums(
/// "VALUE_A",
/// "VALUE_B")
/// .items(serializeJson(
/// jsonObject(
/// jsonProperty("type", "ARRAY"),
/// jsonProperty("description", "An array")
/// )))
/// .maxItems(32)
/// .maximum(64.0)
/// .minItems(1)
/// .minimum(2.0)
/// .nullable(true)
/// .prefixItems(serializeJson(
/// jsonArray(jsonObject(
/// jsonProperty("type", "ARRAY"),
/// jsonProperty("description", "prefix item 1")
/// ))))
/// .properties(serializeJson(
/// jsonObject(
/// jsonProperty("name", jsonObject(
/// jsonProperty("type", "STRING"),
/// jsonProperty("description", "A name")
/// ))
/// )))
/// .ref("#/defs/MyDefinition")
/// .requireds("some_property")
/// .title("Title")
/// .type("ARRAY")
/// .uniqueItems(true)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// my-app:
/// type: gcp:ces:App
/// properties:
/// location: us
/// displayName: my-app
/// appId: app-id
/// timeZoneSettings:
/// timeZone: America/Los_Angeles
/// cesToolClientFunctionBasic:
/// type: gcp:ces:Tool
/// name: ces_tool_client_function_basic
/// properties:
/// location: us
/// app: ${["my-app"].name}
/// toolId: ces_tool_basic1
/// executionType: SYNCHRONOUS
/// clientFunction:
/// name: ces_tool_client_function_basic
/// description: example-description
/// parameters:
/// additionalProperties:
/// fn::toJSON:
/// type: BOOLEAN
/// anyOf:
/// fn::toJSON:
/// - type: STRING
/// description: 'any_of option 1: string'
/// default:
/// fn::toJSON: false
/// defs:
/// fn::toJSON:
/// SimpleString:
/// type: STRING
/// description: A simple string definition
/// description: schema description
/// enums:
/// - VALUE_A
/// - VALUE_B
/// items:
/// fn::toJSON:
/// type: ARRAY
/// description: An array
/// maxItems: 32
/// maximum: 64
/// minItems: 1
/// minimum: 2
/// nullable: true
/// prefixItems:
/// fn::toJSON:
/// - type: ARRAY
/// description: prefix item 1
/// properties:
/// fn::toJSON:
/// name:
/// type: STRING
/// description: A name
/// ref: '#/defs/MyDefinition'
/// requireds:
/// - some_property
/// title: Title
/// type: ARRAY
/// uniqueItems: true
/// response:
/// additionalProperties:
/// fn::toJSON:
/// type: BOOLEAN
/// anyOf:
/// fn::toJSON:
/// - type: STRING
/// description: 'any_of option 1: string'
/// default:
/// fn::toJSON: false
/// defs:
/// fn::toJSON:
/// SimpleString:
/// type: STRING
/// description: A simple string definition
/// description: schema description
/// enums:
/// - VALUE_A
/// - VALUE_B
/// items:
/// fn::toJSON:
/// type: ARRAY
/// description: An array
/// maxItems: 32
/// maximum: 64
/// minItems: 1
/// minimum: 2
/// nullable: true
/// prefixItems:
/// fn::toJSON:
/// - type: ARRAY
/// description: prefix item 1
/// properties:
/// fn::toJSON:
/// name:
/// type: STRING
/// description: A name
/// ref: '#/defs/MyDefinition'
/// requireds:
/// - some_property
/// title: Title
/// type: ARRAY
/// uniqueItems: true
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Ces Tool Data Store Tool Engine Source Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.discoveryengine.DataStore("basic", {
/// location: "global",
/// dataStoreId: "tool_data_store_id",
/// displayName: "tf-test-structured-datastore",
/// industryVertical: "GENERIC",
/// contentConfig: "NO_CONTENT",
/// solutionTypes: ["SOLUTION_TYPE_SEARCH"],
/// createAdvancedSiteSearch: false,
/// });
/// const basicSearchEngine = new gcp.discoveryengine.SearchEngine("basic", {
/// engineId: "tool_engine_id",
/// collectionId: "default_collection",
/// location: basic.location,
/// displayName: "Example Display Name",
/// dataStoreIds: [basic.dataStoreId],
/// searchEngineConfig: {},
/// });
/// const my_app = new gcp.ces.App("my-app", {
/// location: "us",
/// displayName: "my-app",
/// appId: "app-id",
/// timeZoneSettings: {
/// timeZone: "America/Los_Angeles",
/// },
/// });
/// const cesToolDataStoreToolEngineSourceBasic = new gcp.ces.Tool("ces_tool_data_store_tool_engine_source_basic", {
/// location: "us",
/// app: my_app.name,
/// toolId: "ces_tool_basic2",
/// executionType: "SYNCHRONOUS",
/// dataStoreTool: {
/// name: "example-tool",
/// description: "example-description",
/// boostSpecs: [{
/// dataStores: [basic.name],
/// specs: [{
/// conditionBoostSpecs: [{
/// condition: "(lang_code: ANY(\"en\", \"fr\"))",
/// boost: 1,
/// boostControlSpec: {
/// fieldName: "example-field",
/// attributeType: "NUMERICAL",
/// interpolationType: "LINEAR",
/// controlPoints: [{
/// attributeValue: "1",
/// boostAmount: 1,
/// }],
/// },
/// }],
/// }],
/// }],
/// modalityConfigs: [{
/// modalityType: "TEXT",
/// rewriterConfig: {
/// modelSettings: {
/// model: "gemini-2.5-flash",
/// temperature: 1,
/// },
/// prompt: "example-prompt",
/// disabled: false,
/// },
/// summarizationConfig: {
/// modelSettings: {
/// model: "gemini-2.5-flash",
/// temperature: 1,
/// },
/// prompt: "example-prompt",
/// disabled: false,
/// },
/// groundingConfig: {
/// groundingLevel: 3,
/// disabled: false,
/// },
/// }],
/// engineSource: {
/// engine: basicSearchEngine.name,
/// dataStoreSources: [{
/// filter: "example_field: ANY(\"specific_example\")",
/// dataStore: {
/// name: basic.name,
/// },
/// }],
/// filter: "example_field: ANY(\"specific_example\")",
/// },
/// maxResults: 5,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.discoveryengine.DataStore("basic",
/// location="global",
/// data_store_id="tool_data_store_id",
/// display_name="tf-test-structured-datastore",
/// industry_vertical="GENERIC",
/// content_config="NO_CONTENT",
/// solution_types=["SOLUTION_TYPE_SEARCH"],
/// create_advanced_site_search=False)
/// basic_search_engine = gcp.discoveryengine.SearchEngine("basic",
/// engine_id="tool_engine_id",
/// collection_id="default_collection",
/// location=basic.location,
/// display_name="Example Display Name",
/// data_store_ids=[basic.data_store_id],
/// search_engine_config={})
/// my_app = gcp.ces.App("my-app",
/// location="us",
/// display_name="my-app",
/// app_id="app-id",
/// time_zone_settings={
/// "time_zone": "America/Los_Angeles",
/// })
/// ces_tool_data_store_tool_engine_source_basic = gcp.ces.Tool("ces_tool_data_store_tool_engine_source_basic",
/// location="us",
/// app=my_app.name,
/// tool_id="ces_tool_basic2",
/// execution_type="SYNCHRONOUS",
/// data_store_tool={
/// "name": "example-tool",
/// "description": "example-description",
/// "boost_specs": [{
/// "data_stores": [basic.name],
/// "specs": [{
/// "condition_boost_specs": [{
/// "condition": "(lang_code: ANY(\"en\", \"fr\"))",
/// "boost": 1,
/// "boost_control_spec": {
/// "field_name": "example-field",
/// "attribute_type": "NUMERICAL",
/// "interpolation_type": "LINEAR",
/// "control_points": [{
/// "attribute_value": "1",
/// "boost_amount": 1,
/// }],
/// },
/// }],
/// }],
/// }],
/// "modality_configs": [{
/// "modality_type": "TEXT",
/// "rewriter_config": {
/// "model_settings": {
/// "model": "gemini-2.5-flash",
/// "temperature": 1,
/// },
/// "prompt": "example-prompt",
/// "disabled": False,
/// },
/// "summarization_config": {
/// "model_settings": {
/// "model": "gemini-2.5-flash",
/// "temperature": 1,
/// },
/// "prompt": "example-prompt",
/// "disabled": False,
/// },
/// "grounding_config": {
/// "grounding_level": 3,
/// "disabled": False,
/// },
/// }],
/// "engine_source": {
/// "engine": basic_search_engine.name,
/// "data_store_sources": [{
/// "filter": "example_field: ANY(\"specific_example\")",
/// "data_store": {
/// "name": basic.name,
/// },
/// }],
/// "filter": "example_field: ANY(\"specific_example\")",
/// },
/// "max_results": 5,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var basic = new Gcp.DiscoveryEngine.DataStore("basic", new()
/// {
/// Location = "global",
/// DataStoreId = "tool_data_store_id",
/// DisplayName = "tf-test-structured-datastore",
/// IndustryVertical = "GENERIC",
/// ContentConfig = "NO_CONTENT",
/// SolutionTypes = new[]
/// {
/// "SOLUTION_TYPE_SEARCH",
/// },
/// CreateAdvancedSiteSearch = false,
/// });
///
/// var basicSearchEngine = new Gcp.DiscoveryEngine.SearchEngine("basic", new()
/// {
/// EngineId = "tool_engine_id",
/// CollectionId = "default_collection",
/// Location = basic.Location,
/// DisplayName = "Example Display Name",
/// DataStoreIds = new[]
/// {
/// basic.DataStoreId,
/// },
/// SearchEngineConfig = null,
/// });
///
/// var my_app = new Gcp.Ces.App("my-app", new()
/// {
/// Location = "us",
/// DisplayName = "my-app",
/// AppId = "app-id",
/// TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
/// {
/// TimeZone = "America/Los_Angeles",
/// },
/// });
///
/// var cesToolDataStoreToolEngineSourceBasic = new Gcp.Ces.Tool("ces_tool_data_store_tool_engine_source_basic", new()
/// {
/// Location = "us",
/// App = my_app.Name,
/// ToolId = "ces_tool_basic2",
/// ExecutionType = "SYNCHRONOUS",
/// DataStoreTool = new Gcp.Ces.Inputs.ToolDataStoreToolArgs
/// {
/// Name = "example-tool",
/// Description = "example-description",
/// BoostSpecs = new[]
/// {
/// new Gcp.Ces.Inputs.ToolDataStoreToolBoostSpecArgs
/// {
/// DataStores = new[]
/// {
/// basic.Name,
/// },
/// Specs = new[]
/// {
/// new Gcp.Ces.Inputs.ToolDataStoreToolBoostSpecSpecArgs
/// {
/// ConditionBoostSpecs = new[]
/// {
/// new Gcp.Ces.Inputs.ToolDataStoreToolBoostSpecSpecConditionBoostSpecArgs
/// {
/// Condition = "(lang_code: ANY(\"en\", \"fr\"))",
/// Boost = 1,
/// BoostControlSpec = new Gcp.Ces.Inputs.ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecArgs
/// {
/// FieldName = "example-field",
/// AttributeType = "NUMERICAL",
/// InterpolationType = "LINEAR",
/// ControlPoints = new[]
/// {
/// new Gcp.Ces.Inputs.ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPointArgs
/// {
/// AttributeValue = "1",
/// BoostAmount = 1,
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// ModalityConfigs = new[]
/// {
/// new Gcp.Ces.Inputs.ToolDataStoreToolModalityConfigArgs
/// {
/// ModalityType = "TEXT",
/// RewriterConfig = new Gcp.Ces.Inputs.ToolDataStoreToolModalityConfigRewriterConfigArgs
/// {
/// ModelSettings = new Gcp.Ces.Inputs.ToolDataStoreToolModalityConfigRewriterConfigModelSettingsArgs
/// {
/// Model = "gemini-2.5-flash",
/// Temperature = 1,
/// },
/// Prompt = "example-prompt",
/// Disabled = false,
/// },
/// SummarizationConfig = new Gcp.Ces.Inputs.ToolDataStoreToolModalityConfigSummarizationConfigArgs
/// {
/// ModelSettings = new Gcp.Ces.Inputs.ToolDataStoreToolModalityConfigSummarizationConfigModelSettingsArgs
/// {
/// Model = "gemini-2.5-flash",
/// Temperature = 1,
/// },
/// Prompt = "example-prompt",
/// Disabled = false,
/// },
/// GroundingConfig = new Gcp.Ces.Inputs.ToolDataStoreToolModalityConfigGroundingConfigArgs
/// {
/// GroundingLevel = 3,
/// Disabled = false,
/// },
/// },
/// },
/// EngineSource = new Gcp.Ces.Inputs.ToolDataStoreToolEngineSourceArgs
/// {
/// Engine = basicSearchEngine.Name,
/// DataStoreSources = new[]
/// {
/// new Gcp.Ces.Inputs.ToolDataStoreToolEngineSourceDataStoreSourceArgs
/// {
/// Filter = "example_field: ANY(\"specific_example\")",
/// DataStore = new Gcp.Ces.Inputs.ToolDataStoreToolEngineSourceDataStoreSourceDataStoreArgs
/// {
/// Name = basic.Name,
/// },
/// },
/// },
/// Filter = "example_field: ANY(\"specific_example\")",
/// },
/// MaxResults = 5,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// basic, err := discoveryengine.NewDataStore(ctx, "basic", &discoveryengine.DataStoreArgs{
/// Location:         pulumi.String("global"),
/// DataStoreId:      pulumi.String("tool_data_store_id"),
/// DisplayName:      pulumi.String("tf-test-structured-datastore"),
/// IndustryVertical: pulumi.String("GENERIC"),
/// ContentConfig:    pulumi.String("NO_CONTENT"),
/// SolutionTypes: pulumi.StringArray{
/// pulumi.String("SOLUTION_TYPE_SEARCH"),
/// },
/// CreateAdvancedSiteSearch: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// basicSearchEngine, err := discoveryengine.NewSearchEngine(ctx, "basic", &discoveryengine.SearchEngineArgs{
/// EngineId:     pulumi.String("tool_engine_id"),
/// CollectionId: pulumi.String("default_collection"),
/// Location:     basic.Location,
/// DisplayName:  pulumi.String("Example Display Name"),
/// DataStoreIds: pulumi.StringArray{
/// basic.DataStoreId,
/// },
/// SearchEngineConfig: &discoveryengine.SearchEngineSearchEngineConfigArgs{},
/// })
/// if err != nil {
/// return err
/// }
/// my_app, err := ces.NewApp(ctx, "my-app", &ces.AppArgs{
/// Location:    pulumi.String("us"),
/// DisplayName: pulumi.String("my-app"),
/// AppId:       pulumi.String("app-id"),
/// TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// TimeZone: pulumi.String("America/Los_Angeles"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ces.NewTool(ctx, "ces_tool_data_store_tool_engine_source_basic", &ces.ToolArgs{
/// Location:      pulumi.String("us"),
/// App:           my_app.Name,
/// ToolId:        pulumi.String("ces_tool_basic2"),
/// ExecutionType: pulumi.String("SYNCHRONOUS"),
/// DataStoreTool: &ces.ToolDataStoreToolArgs{
/// Name:        pulumi.String("example-tool"),
/// Description: pulumi.String("example-description"),
/// BoostSpecs: ces.ToolDataStoreToolBoostSpecArray{
/// &ces.ToolDataStoreToolBoostSpecArgs{
/// DataStores: pulumi.StringArray{
/// basic.Name,
/// },
/// Specs: ces.ToolDataStoreToolBoostSpecSpecArray{
/// &ces.ToolDataStoreToolBoostSpecSpecArgs{
/// ConditionBoostSpecs: ces.ToolDataStoreToolBoostSpecSpecConditionBoostSpecArray{
/// &ces.ToolDataStoreToolBoostSpecSpecConditionBoostSpecArgs{
/// Condition: pulumi.String("(lang_code: ANY(\"en\", \"fr\"))"),
/// Boost:     pulumi.Float64(1),
/// BoostControlSpec: &ces.ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecArgs{
/// FieldName:         pulumi.String("example-field"),
/// AttributeType:     pulumi.String("NUMERICAL"),
/// InterpolationType: pulumi.String("LINEAR"),
/// ControlPoints: ces.ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPointArray{
/// &ces.ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPointArgs{
/// AttributeValue: pulumi.String("1"),
/// BoostAmount:    pulumi.Float64(1),
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// ModalityConfigs: ces.ToolDataStoreToolModalityConfigArray{
/// &ces.ToolDataStoreToolModalityConfigArgs{
/// ModalityType: pulumi.String("TEXT"),
/// RewriterConfig: &ces.ToolDataStoreToolModalityConfigRewriterConfigArgs{
/// ModelSettings: &ces.ToolDataStoreToolModalityConfigRewriterConfigModelSettingsArgs{
/// Model:       pulumi.String("gemini-2.5-flash"),
/// Temperature: pulumi.Float64(1),
/// },
/// Prompt:   pulumi.String("example-prompt"),
/// Disabled: pulumi.Bool(false),
/// },
/// SummarizationConfig: &ces.ToolDataStoreToolModalityConfigSummarizationConfigArgs{
/// ModelSettings: &ces.ToolDataStoreToolModalityConfigSummarizationConfigModelSettingsArgs{
/// Model:       pulumi.String("gemini-2.5-flash"),
/// Temperature: pulumi.Float64(1),
/// },
/// Prompt:   pulumi.String("example-prompt"),
/// Disabled: pulumi.Bool(false),
/// },
/// GroundingConfig: &ces.ToolDataStoreToolModalityConfigGroundingConfigArgs{
/// GroundingLevel: pulumi.Float64(3),
/// Disabled:       pulumi.Bool(false),
/// },
/// },
/// },
/// EngineSource: &ces.ToolDataStoreToolEngineSourceArgs{
/// Engine: basicSearchEngine.Name,
/// DataStoreSources: ces.ToolDataStoreToolEngineSourceDataStoreSourceArray{
/// &ces.ToolDataStoreToolEngineSourceDataStoreSourceArgs{
/// Filter: pulumi.String("example_field: ANY(\"specific_example\")"),
/// DataStore: &ces.ToolDataStoreToolEngineSourceDataStoreSourceDataStoreArgs{
/// Name: basic.Name,
/// },
/// },
/// },
/// Filter: pulumi.String("example_field: ANY(\"specific_example\")"),
/// },
/// MaxResults: pulumi.Int(5),
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
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
/// import com.pulumi.gcp.discoveryengine.SearchEngine;
/// import com.pulumi.gcp.discoveryengine.SearchEngineArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.SearchEngineSearchEngineConfigArgs;
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Tool;
/// import com.pulumi.gcp.ces.ToolArgs;
/// import com.pulumi.gcp.ces.inputs.ToolDataStoreToolArgs;
/// import com.pulumi.gcp.ces.inputs.ToolDataStoreToolEngineSourceArgs;
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
/// var basic = new DataStore("basic", DataStoreArgs.builder()
/// .location("global")
/// .dataStoreId("tool_data_store_id")
/// .displayName("tf-test-structured-datastore")
/// .industryVertical("GENERIC")
/// .contentConfig("NO_CONTENT")
/// .solutionTypes("SOLUTION_TYPE_SEARCH")
/// .createAdvancedSiteSearch(false)
/// .build());
///
/// var basicSearchEngine = new SearchEngine("basicSearchEngine", SearchEngineArgs.builder()
/// .engineId("tool_engine_id")
/// .collectionId("default_collection")
/// .location(basic.location())
/// .displayName("Example Display Name")
/// .dataStoreIds(basic.dataStoreId())
/// .searchEngineConfig(SearchEngineSearchEngineConfigArgs.builder()
/// .build())
/// .build());
///
/// var my_app = new App("my-app", AppArgs.builder()
/// .location("us")
/// .displayName("my-app")
/// .appId("app-id")
/// .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
/// .timeZone("America/Los_Angeles")
/// .build())
/// .build());
///
/// var cesToolDataStoreToolEngineSourceBasic = new Tool("cesToolDataStoreToolEngineSourceBasic", ToolArgs.builder()
/// .location("us")
/// .app(my_app.name())
/// .toolId("ces_tool_basic2")
/// .executionType("SYNCHRONOUS")
/// .dataStoreTool(ToolDataStoreToolArgs.builder()
/// .name("example-tool")
/// .description("example-description")
/// .boostSpecs(ToolDataStoreToolBoostSpecArgs.builder()
/// .dataStores(basic.name())
/// .specs(ToolDataStoreToolBoostSpecSpecArgs.builder()
/// .conditionBoostSpecs(ToolDataStoreToolBoostSpecSpecConditionBoostSpecArgs.builder()
/// .condition("(lang_code: ANY(\"en\", \"fr\"))")
/// .boost(1.0)
/// .boostControlSpec(ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecArgs.builder()
/// .fieldName("example-field")
/// .attributeType("NUMERICAL")
/// .interpolationType("LINEAR")
/// .controlPoints(ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPointArgs.builder()
/// .attributeValue("1")
/// .boostAmount(1.0)
/// .build())
/// .build())
/// .build())
/// .build())
/// .build())
/// .modalityConfigs(ToolDataStoreToolModalityConfigArgs.builder()
/// .modalityType("TEXT")
/// .rewriterConfig(ToolDataStoreToolModalityConfigRewriterConfigArgs.builder()
/// .modelSettings(ToolDataStoreToolModalityConfigRewriterConfigModelSettingsArgs.builder()
/// .model("gemini-2.5-flash")
/// .temperature(1.0)
/// .build())
/// .prompt("example-prompt")
/// .disabled(false)
/// .build())
/// .summarizationConfig(ToolDataStoreToolModalityConfigSummarizationConfigArgs.builder()
/// .modelSettings(ToolDataStoreToolModalityConfigSummarizationConfigModelSettingsArgs.builder()
/// .model("gemini-2.5-flash")
/// .temperature(1.0)
/// .build())
/// .prompt("example-prompt")
/// .disabled(false)
/// .build())
/// .groundingConfig(ToolDataStoreToolModalityConfigGroundingConfigArgs.builder()
/// .groundingLevel(3.0)
/// .disabled(false)
/// .build())
/// .build())
/// .engineSource(ToolDataStoreToolEngineSourceArgs.builder()
/// .engine(basicSearchEngine.name())
/// .dataStoreSources(ToolDataStoreToolEngineSourceDataStoreSourceArgs.builder()
/// .filter("example_field: ANY(\"specific_example\")")
/// .dataStore(ToolDataStoreToolEngineSourceDataStoreSourceDataStoreArgs.builder()
/// .name(basic.name())
/// .build())
/// .build())
/// .filter("example_field: ANY(\"specific_example\")")
/// .build())
/// .maxResults(5)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// basic:
/// type: gcp:discoveryengine:DataStore
/// properties:
/// location: global
/// dataStoreId: tool_data_store_id
/// displayName: tf-test-structured-datastore
/// industryVertical: GENERIC
/// contentConfig: NO_CONTENT
/// solutionTypes:
/// - SOLUTION_TYPE_SEARCH
/// createAdvancedSiteSearch: false
/// basicSearchEngine:
/// type: gcp:discoveryengine:SearchEngine
/// name: basic
/// properties:
/// engineId: tool_engine_id
/// collectionId: default_collection
/// location: ${basic.location}
/// displayName: Example Display Name
/// dataStoreIds:
/// - ${basic.dataStoreId}
/// searchEngineConfig: {}
/// my-app:
/// type: gcp:ces:App
/// properties:
/// location: us
/// displayName: my-app
/// appId: app-id
/// timeZoneSettings:
/// timeZone: America/Los_Angeles
/// cesToolDataStoreToolEngineSourceBasic:
/// type: gcp:ces:Tool
/// name: ces_tool_data_store_tool_engine_source_basic
/// properties:
/// location: us
/// app: ${["my-app"].name}
/// toolId: ces_tool_basic2
/// executionType: SYNCHRONOUS
/// dataStoreTool:
/// name: example-tool
/// description: example-description
/// boostSpecs:
/// - dataStores:
/// - ${basic.name}
/// specs:
/// - conditionBoostSpecs:
/// - condition: '(lang_code: ANY("en", "fr"))'
/// boost: 1
/// boostControlSpec:
/// fieldName: example-field
/// attributeType: NUMERICAL
/// interpolationType: LINEAR
/// controlPoints:
/// - attributeValue: 1
/// boostAmount: 1
/// modalityConfigs:
/// - modalityType: TEXT
/// rewriterConfig:
/// modelSettings:
/// model: gemini-2.5-flash
/// temperature: 1
/// prompt: example-prompt
/// disabled: false
/// summarizationConfig:
/// modelSettings:
/// model: gemini-2.5-flash
/// temperature: 1
/// prompt: example-prompt
/// disabled: false
/// groundingConfig:
/// groundingLevel: 3
/// disabled: false
/// engineSource:
/// engine: ${basicSearchEngine.name}
/// dataStoreSources:
/// - filter: 'example_field: ANY("specific_example")'
/// dataStore:
/// name: ${basic.name}
/// filter: 'example_field: ANY("specific_example")'
/// maxResults: 5
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Ces Tool Google Search Tool Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_app = new gcp.ces.App("my-app", {
/// location: "us",
/// displayName: "my-app",
/// appId: "app-id",
/// timeZoneSettings: {
/// timeZone: "America/Los_Angeles",
/// },
/// });
/// const cesToolGoogleSearchToolBasic = new gcp.ces.Tool("ces_tool_google_search_tool_basic", {
/// location: "us",
/// app: my_app.name,
/// toolId: "ces_tool_basic3",
/// executionType: "SYNCHRONOUS",
/// googleSearchTool: {
/// name: "example-tool",
/// contextUrls: [
/// "example.com",
/// "example2.com",
/// ],
/// description: "example-description",
/// excludeDomains: [
/// "example.com",
/// "example2.com",
/// ],
/// preferredDomains: [
/// "example3.com",
/// "example4.com",
/// ],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_app = gcp.ces.App("my-app",
/// location="us",
/// display_name="my-app",
/// app_id="app-id",
/// time_zone_settings={
/// "time_zone": "America/Los_Angeles",
/// })
/// ces_tool_google_search_tool_basic = gcp.ces.Tool("ces_tool_google_search_tool_basic",
/// location="us",
/// app=my_app.name,
/// tool_id="ces_tool_basic3",
/// execution_type="SYNCHRONOUS",
/// google_search_tool={
/// "name": "example-tool",
/// "context_urls": [
/// "example.com",
/// "example2.com",
/// ],
/// "description": "example-description",
/// "exclude_domains": [
/// "example.com",
/// "example2.com",
/// ],
/// "preferred_domains": [
/// "example3.com",
/// "example4.com",
/// ],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_app = new Gcp.Ces.App("my-app", new()
/// {
/// Location = "us",
/// DisplayName = "my-app",
/// AppId = "app-id",
/// TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
/// {
/// TimeZone = "America/Los_Angeles",
/// },
/// });
///
/// var cesToolGoogleSearchToolBasic = new Gcp.Ces.Tool("ces_tool_google_search_tool_basic", new()
/// {
/// Location = "us",
/// App = my_app.Name,
/// ToolId = "ces_tool_basic3",
/// ExecutionType = "SYNCHRONOUS",
/// GoogleSearchTool = new Gcp.Ces.Inputs.ToolGoogleSearchToolArgs
/// {
/// Name = "example-tool",
/// ContextUrls = new[]
/// {
/// "example.com",
/// "example2.com",
/// },
/// Description = "example-description",
/// ExcludeDomains = new[]
/// {
/// "example.com",
/// "example2.com",
/// },
/// PreferredDomains = new[]
/// {
/// "example3.com",
/// "example4.com",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// my_app, err := ces.NewApp(ctx, "my-app", &ces.AppArgs{
/// Location:    pulumi.String("us"),
/// DisplayName: pulumi.String("my-app"),
/// AppId:       pulumi.String("app-id"),
/// TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// TimeZone: pulumi.String("America/Los_Angeles"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ces.NewTool(ctx, "ces_tool_google_search_tool_basic", &ces.ToolArgs{
/// Location:      pulumi.String("us"),
/// App:           my_app.Name,
/// ToolId:        pulumi.String("ces_tool_basic3"),
/// ExecutionType: pulumi.String("SYNCHRONOUS"),
/// GoogleSearchTool: &ces.ToolGoogleSearchToolArgs{
/// Name: pulumi.String("example-tool"),
/// ContextUrls: pulumi.StringArray{
/// pulumi.String("example.com"),
/// pulumi.String("example2.com"),
/// },
/// Description: pulumi.String("example-description"),
/// ExcludeDomains: pulumi.StringArray{
/// pulumi.String("example.com"),
/// pulumi.String("example2.com"),
/// },
/// PreferredDomains: pulumi.StringArray{
/// pulumi.String("example3.com"),
/// pulumi.String("example4.com"),
/// },
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
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Tool;
/// import com.pulumi.gcp.ces.ToolArgs;
/// import com.pulumi.gcp.ces.inputs.ToolGoogleSearchToolArgs;
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
/// var my_app = new App("my-app", AppArgs.builder()
/// .location("us")
/// .displayName("my-app")
/// .appId("app-id")
/// .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
/// .timeZone("America/Los_Angeles")
/// .build())
/// .build());
///
/// var cesToolGoogleSearchToolBasic = new Tool("cesToolGoogleSearchToolBasic", ToolArgs.builder()
/// .location("us")
/// .app(my_app.name())
/// .toolId("ces_tool_basic3")
/// .executionType("SYNCHRONOUS")
/// .googleSearchTool(ToolGoogleSearchToolArgs.builder()
/// .name("example-tool")
/// .contextUrls(
/// "example.com",
/// "example2.com")
/// .description("example-description")
/// .excludeDomains(
/// "example.com",
/// "example2.com")
/// .preferredDomains(
/// "example3.com",
/// "example4.com")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// my-app:
/// type: gcp:ces:App
/// properties:
/// location: us
/// displayName: my-app
/// appId: app-id
/// timeZoneSettings:
/// timeZone: America/Los_Angeles
/// cesToolGoogleSearchToolBasic:
/// type: gcp:ces:Tool
/// name: ces_tool_google_search_tool_basic
/// properties:
/// location: us
/// app: ${["my-app"].name}
/// toolId: ces_tool_basic3
/// executionType: SYNCHRONOUS
/// googleSearchTool:
/// name: example-tool
/// contextUrls:
/// - example.com
/// - example2.com
/// description: example-description
/// excludeDomains:
/// - example.com
/// - example2.com
/// preferredDomains:
/// - example3.com
/// - example4.com
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Ces Tool Python Function Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_app = new gcp.ces.App("my-app", {
/// location: "us",
/// displayName: "my-app",
/// appId: "app-id",
/// timeZoneSettings: {
/// timeZone: "America/Los_Angeles",
/// },
/// });
/// const cesToolPythonFunctionBasic = new gcp.ces.Tool("ces_tool_python_function_basic", {
/// location: "us",
/// app: my_app.name,
/// toolId: "ces_tool_basic4",
/// executionType: "SYNCHRONOUS",
/// pythonFunction: {
/// name: "example_function",
/// pythonCode: "def example_function() -> int: return 0",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_app = gcp.ces.App("my-app",
/// location="us",
/// display_name="my-app",
/// app_id="app-id",
/// time_zone_settings={
/// "time_zone": "America/Los_Angeles",
/// })
/// ces_tool_python_function_basic = gcp.ces.Tool("ces_tool_python_function_basic",
/// location="us",
/// app=my_app.name,
/// tool_id="ces_tool_basic4",
/// execution_type="SYNCHRONOUS",
/// python_function={
/// "name": "example_function",
/// "python_code": "def example_function() -> int: return 0",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_app = new Gcp.Ces.App("my-app", new()
/// {
/// Location = "us",
/// DisplayName = "my-app",
/// AppId = "app-id",
/// TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
/// {
/// TimeZone = "America/Los_Angeles",
/// },
/// });
///
/// var cesToolPythonFunctionBasic = new Gcp.Ces.Tool("ces_tool_python_function_basic", new()
/// {
/// Location = "us",
/// App = my_app.Name,
/// ToolId = "ces_tool_basic4",
/// ExecutionType = "SYNCHRONOUS",
/// PythonFunction = new Gcp.Ces.Inputs.ToolPythonFunctionArgs
/// {
/// Name = "example_function",
/// PythonCode = "def example_function() -> int: return 0",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// my_app, err := ces.NewApp(ctx, "my-app", &ces.AppArgs{
/// Location:    pulumi.String("us"),
/// DisplayName: pulumi.String("my-app"),
/// AppId:       pulumi.String("app-id"),
/// TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// TimeZone: pulumi.String("America/Los_Angeles"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ces.NewTool(ctx, "ces_tool_python_function_basic", &ces.ToolArgs{
/// Location:      pulumi.String("us"),
/// App:           my_app.Name,
/// ToolId:        pulumi.String("ces_tool_basic4"),
/// ExecutionType: pulumi.String("SYNCHRONOUS"),
/// PythonFunction: &ces.ToolPythonFunctionArgs{
/// Name:       pulumi.String("example_function"),
/// PythonCode: pulumi.String("def example_function() -> int: return 0"),
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
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Tool;
/// import com.pulumi.gcp.ces.ToolArgs;
/// import com.pulumi.gcp.ces.inputs.ToolPythonFunctionArgs;
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
/// var my_app = new App("my-app", AppArgs.builder()
/// .location("us")
/// .displayName("my-app")
/// .appId("app-id")
/// .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
/// .timeZone("America/Los_Angeles")
/// .build())
/// .build());
///
/// var cesToolPythonFunctionBasic = new Tool("cesToolPythonFunctionBasic", ToolArgs.builder()
/// .location("us")
/// .app(my_app.name())
/// .toolId("ces_tool_basic4")
/// .executionType("SYNCHRONOUS")
/// .pythonFunction(ToolPythonFunctionArgs.builder()
/// .name("example_function")
/// .pythonCode("def example_function() -> int: return 0")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// my-app:
/// type: gcp:ces:App
/// properties:
/// location: us
/// displayName: my-app
/// appId: app-id
/// timeZoneSettings:
/// timeZone: America/Los_Angeles
/// cesToolPythonFunctionBasic:
/// type: gcp:ces:Tool
/// name: ces_tool_python_function_basic
/// properties:
/// location: us
/// app: ${["my-app"].name}
/// toolId: ces_tool_basic4
/// executionType: SYNCHRONOUS
/// pythonFunction:
/// name: example_function
/// pythonCode: 'def example_function() -> int: return 0'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Tool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{app}}/tools/{{name}}`
///
/// * `{{project}}/{{location}}/{{app}}/{{name}}`
///
/// * `{{location}}/{{app}}/{{name}}`
///
/// When using the `pulumi import` command, Tool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/tool:Tool default projects/{{project}}/locations/{{location}}/apps/{{app}}/tools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/tool:Tool default {{project}}/{{location}}/{{app}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/tool:Tool default {{location}}/{{app}}/{{name}}
/// ```
class Tool extends CustomResource {
  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> app;

  /// Represents a client-side function that the agent can invoke. When the
  /// tool is chosen by the agent, control is handed off to the client.
  /// The client is responsible for executing the function and returning the result
  /// as a ToolResponse to continue the interaction with the agent.
  /// Structure is documented below.
  late final Output<ToolClientFunction?> clientFunction;

  /// Timestamp when the tool was created.
  late final Output<String> createTime;

  /// Tool to retrieve from Vertex AI Search datastore or engine for grounding.
  /// Accepts either a datastore or an engine, but not both.
  /// See Vertex AI Search:
  /// https://cloud.google.com/generative-ai-app-builder/docs/enterprise-search-introduction.
  /// Structure is documented below.
  late final Output<ToolDataStoreTool?> dataStoreTool;

  /// (Output)
  /// The name of the allowed custom CA certificates. This
  /// can be used to disambiguate the custom CA certificates.
  late final Output<String> displayName;

  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  late final Output<String> etag;

  /// Possible values:
  /// SYNCHRONOUS
  /// ASYNCHRONOUS
  late final Output<String?> executionType;

  /// If the tool is generated by the LLM assistant, this field contains a
  /// descriptive summary of the generation.
  late final Output<String> generatedSummary;

  /// Represents a tool to perform Google web searches for grounding.
  /// See
  /// https://cloud.google.com/vertex-ai/generative-ai/docs/grounding/grounding-with-google-search.
  /// Structure is documented below.
  late final Output<ToolGoogleSearchTool?> googleSearchTool;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// (Output)
  /// The name of the system tool.
  late final Output<String> name;

  /// A remote API tool defined by an OpenAPI schema.
  /// Structure is documented below.
  late final Output<List<ToolOpenApiTool>> openApiTools;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// A Python function tool.
  /// Structure is documented below.
  late final Output<ToolPythonFunction?> pythonFunction;

  /// The system tool.
  /// Structure is documented below.
  late final Output<List<ToolSystemTool>> systemTools;

  /// The ID to use for the tool, which will become the final component of
  /// the tool's resource name. If not provided, a unique ID will be
  /// automatically assigned for the tool.
  late final Output<String> toolId;

  /// Timestamp when the tool was last updated.
  late final Output<String> updateTime;

  Tool(
    String name, {
    ToolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:ces/tool:Tool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.app = registerOutput<String>('app');
    this.clientFunction = registerOutput<ToolClientFunction?>('clientFunction');
    this.createTime = registerOutput<String>('createTime');
    this.dataStoreTool = registerOutput<ToolDataStoreTool?>('dataStoreTool');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.executionType = registerOutput<String?>('executionType');
    this.generatedSummary = registerOutput<String>('generatedSummary');
    this.googleSearchTool =
        registerOutput<ToolGoogleSearchTool?>('googleSearchTool');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.openApiTools = registerOutput<List<ToolOpenApiTool>>('openApiTools');
    this.project = registerOutput<String>('project');
    this.pythonFunction = registerOutput<ToolPythonFunction?>('pythonFunction');
    this.systemTools = registerOutput<List<ToolSystemTool>>('systemTools');
    this.toolId = registerOutput<String>('toolId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
