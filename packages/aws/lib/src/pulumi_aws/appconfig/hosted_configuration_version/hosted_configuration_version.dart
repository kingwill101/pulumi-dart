import 'package:pulumi/pulumi.dart';
import 'hosted_configuration_version_args.dart';

/// Provides an AppConfig Hosted Configuration Version resource.
///
/// ## Example Usage
///
/// ### Freeform
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appconfig.HostedConfigurationVersion("example", {
/// applicationId: exampleAwsAppconfigApplication.id,
/// configurationProfileId: exampleAwsAppconfigConfigurationProfile.configurationProfileId,
/// description: "Example Freeform Hosted Configuration Version",
/// contentType: "application/json",
/// content: JSON.stringify({
/// foo: "bar",
/// fruit: [
/// "apple",
/// "pear",
/// "orange",
/// ],
/// isThingEnabled: true,
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.appconfig.HostedConfigurationVersion("example",
/// application_id=example_aws_appconfig_application["id"],
/// configuration_profile_id=example_aws_appconfig_configuration_profile["configurationProfileId"],
/// description="Example Freeform Hosted Configuration Version",
/// content_type="application/json",
/// content=json.dumps({
/// "foo": "bar",
/// "fruit": [
/// "apple",
/// "pear",
/// "orange",
/// ],
/// "isThingEnabled": True,
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
/// var example = new Aws.AppConfig.HostedConfigurationVersion("example", new()
/// {
/// ApplicationId = exampleAwsAppconfigApplication.Id,
/// ConfigurationProfileId = exampleAwsAppconfigConfigurationProfile.ConfigurationProfileId,
/// Description = "Example Freeform Hosted Configuration Version",
/// ContentType = "application/json",
/// Content = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["foo"] = "bar",
/// ["fruit"] = new[]
/// {
/// "apple",
/// "pear",
/// "orange",
/// },
/// ["isThingEnabled"] = true,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appconfig"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "foo": "bar",
/// "fruit": []string{
/// "apple",
/// "pear",
/// "orange",
/// },
/// "isThingEnabled": true,
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = appconfig.NewHostedConfigurationVersion(ctx, "example", &appconfig.HostedConfigurationVersionArgs{
/// ApplicationId:          pulumi.Any(exampleAwsAppconfigApplication.Id),
/// ConfigurationProfileId: pulumi.Any(exampleAwsAppconfigConfigurationProfile.ConfigurationProfileId),
/// Description:            pulumi.String("Example Freeform Hosted Configuration Version"),
/// ContentType:            pulumi.String("application/json"),
/// Content:                pulumi.String(json0),
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
/// import com.pulumi.aws.appconfig.HostedConfigurationVersion;
/// import com.pulumi.aws.appconfig.HostedConfigurationVersionArgs;
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
/// var example = new HostedConfigurationVersion("example", HostedConfigurationVersionArgs.builder()
/// .applicationId(exampleAwsAppconfigApplication.id())
/// .configurationProfileId(exampleAwsAppconfigConfigurationProfile.configurationProfileId())
/// .description("Example Freeform Hosted Configuration Version")
/// .contentType("application/json")
/// .content(serializeJson(
/// jsonObject(
/// jsonProperty("foo", "bar"),
/// jsonProperty("fruit", jsonArray(
/// "apple",
/// "pear",
/// "orange"
/// )),
/// jsonProperty("isThingEnabled", true)
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:appconfig:HostedConfigurationVersion
/// properties:
/// applicationId: ${exampleAwsAppconfigApplication.id}
/// configurationProfileId: ${exampleAwsAppconfigConfigurationProfile.configurationProfileId}
/// description: Example Freeform Hosted Configuration Version
/// contentType: application/json
/// content:
/// fn::toJSON:
/// foo: bar
/// fruit:
/// - apple
/// - pear
/// - orange
/// isThingEnabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Feature Flags
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appconfig.HostedConfigurationVersion("example", {
/// applicationId: exampleAwsAppconfigApplication.id,
/// configurationProfileId: exampleAwsAppconfigConfigurationProfile.configurationProfileId,
/// description: "Example Feature Flag Configuration Version",
/// contentType: "application/json",
/// content: JSON.stringify({
/// flags: {
/// foo: {
/// name: "foo",
/// _deprecation: {
/// status: "planned",
/// },
/// },
/// bar: {
/// name: "bar",
/// attributes: {
/// someAttribute: {
/// constraints: {
/// type: "string",
/// required: true,
/// },
/// },
/// someOtherAttribute: {
/// constraints: {
/// type: "number",
/// required: true,
/// },
/// },
/// },
/// },
/// },
/// values: {
/// foo: {
/// enabled: "true",
/// },
/// bar: {
/// enabled: "true",
/// someAttribute: "Hello World",
/// someOtherAttribute: 123,
/// },
/// },
/// version: "1",
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.appconfig.HostedConfigurationVersion("example",
/// application_id=example_aws_appconfig_application["id"],
/// configuration_profile_id=example_aws_appconfig_configuration_profile["configurationProfileId"],
/// description="Example Feature Flag Configuration Version",
/// content_type="application/json",
/// content=json.dumps({
/// "flags": {
/// "foo": {
/// "name": "foo",
/// "_deprecation": {
/// "status": "planned",
/// },
/// },
/// "bar": {
/// "name": "bar",
/// "attributes": {
/// "someAttribute": {
/// "constraints": {
/// "type": "string",
/// "required": True,
/// },
/// },
/// "someOtherAttribute": {
/// "constraints": {
/// "type": "number",
/// "required": True,
/// },
/// },
/// },
/// },
/// },
/// "values": {
/// "foo": {
/// "enabled": "true",
/// },
/// "bar": {
/// "enabled": "true",
/// "someAttribute": "Hello World",
/// "someOtherAttribute": 123,
/// },
/// },
/// "version": "1",
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
/// var example = new Aws.AppConfig.HostedConfigurationVersion("example", new()
/// {
/// ApplicationId = exampleAwsAppconfigApplication.Id,
/// ConfigurationProfileId = exampleAwsAppconfigConfigurationProfile.ConfigurationProfileId,
/// Description = "Example Feature Flag Configuration Version",
/// ContentType = "application/json",
/// Content = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["flags"] = new Dictionary<string, object?>
/// {
/// ["foo"] = new Dictionary<string, object?>
/// {
/// ["name"] = "foo",
/// ["_deprecation"] = new Dictionary<string, object?>
/// {
/// ["status"] = "planned",
/// },
/// },
/// ["bar"] = new Dictionary<string, object?>
/// {
/// ["name"] = "bar",
/// ["attributes"] = new Dictionary<string, object?>
/// {
/// ["someAttribute"] = new Dictionary<string, object?>
/// {
/// ["constraints"] = new Dictionary<string, object?>
/// {
/// ["type"] = "string",
/// ["required"] = true,
/// },
/// },
/// ["someOtherAttribute"] = new Dictionary<string, object?>
/// {
/// ["constraints"] = new Dictionary<string, object?>
/// {
/// ["type"] = "number",
/// ["required"] = true,
/// },
/// },
/// },
/// },
/// },
/// ["values"] = new Dictionary<string, object?>
/// {
/// ["foo"] = new Dictionary<string, object?>
/// {
/// ["enabled"] = "true",
/// },
/// ["bar"] = new Dictionary<string, object?>
/// {
/// ["enabled"] = "true",
/// ["someAttribute"] = "Hello World",
/// ["someOtherAttribute"] = 123,
/// },
/// },
/// ["version"] = "1",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appconfig"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "flags": map[string]interface{}{
/// "foo": map[string]interface{}{
/// "name": "foo",
/// "_deprecation": map[string]interface{}{
/// "status": "planned",
/// },
/// },
/// "bar": map[string]interface{}{
/// "name": "bar",
/// "attributes": map[string]interface{}{
/// "someAttribute": map[string]interface{}{
/// "constraints": map[string]interface{}{
/// "type":     "string",
/// "required": true,
/// },
/// },
/// "someOtherAttribute": map[string]interface{}{
/// "constraints": map[string]interface{}{
/// "type":     "number",
/// "required": true,
/// },
/// },
/// },
/// },
/// },
/// "values": map[string]interface{}{
/// "foo": map[string]interface{}{
/// "enabled": "true",
/// },
/// "bar": map[string]interface{}{
/// "enabled":            "true",
/// "someAttribute":      "Hello World",
/// "someOtherAttribute": 123,
/// },
/// },
/// "version": "1",
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = appconfig.NewHostedConfigurationVersion(ctx, "example", &appconfig.HostedConfigurationVersionArgs{
/// ApplicationId:          pulumi.Any(exampleAwsAppconfigApplication.Id),
/// ConfigurationProfileId: pulumi.Any(exampleAwsAppconfigConfigurationProfile.ConfigurationProfileId),
/// Description:            pulumi.String("Example Feature Flag Configuration Version"),
/// ContentType:            pulumi.String("application/json"),
/// Content:                pulumi.String(json0),
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
/// import com.pulumi.aws.appconfig.HostedConfigurationVersion;
/// import com.pulumi.aws.appconfig.HostedConfigurationVersionArgs;
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
/// var example = new HostedConfigurationVersion("example", HostedConfigurationVersionArgs.builder()
/// .applicationId(exampleAwsAppconfigApplication.id())
/// .configurationProfileId(exampleAwsAppconfigConfigurationProfile.configurationProfileId())
/// .description("Example Feature Flag Configuration Version")
/// .contentType("application/json")
/// .content(serializeJson(
/// jsonObject(
/// jsonProperty("flags", jsonObject(
/// jsonProperty("foo", jsonObject(
/// jsonProperty("name", "foo"),
/// jsonProperty("_deprecation", jsonObject(
/// jsonProperty("status", "planned")
/// ))
/// )),
/// jsonProperty("bar", jsonObject(
/// jsonProperty("name", "bar"),
/// jsonProperty("attributes", jsonObject(
/// jsonProperty("someAttribute", jsonObject(
/// jsonProperty("constraints", jsonObject(
/// jsonProperty("type", "string"),
/// jsonProperty("required", true)
/// ))
/// )),
/// jsonProperty("someOtherAttribute", jsonObject(
/// jsonProperty("constraints", jsonObject(
/// jsonProperty("type", "number"),
/// jsonProperty("required", true)
/// ))
/// ))
/// ))
/// ))
/// )),
/// jsonProperty("values", jsonObject(
/// jsonProperty("foo", jsonObject(
/// jsonProperty("enabled", "true")
/// )),
/// jsonProperty("bar", jsonObject(
/// jsonProperty("enabled", "true"),
/// jsonProperty("someAttribute", "Hello World"),
/// jsonProperty("someOtherAttribute", 123)
/// ))
/// )),
/// jsonProperty("version", "1")
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:appconfig:HostedConfigurationVersion
/// properties:
/// applicationId: ${exampleAwsAppconfigApplication.id}
/// configurationProfileId: ${exampleAwsAppconfigConfigurationProfile.configurationProfileId}
/// description: Example Feature Flag Configuration Version
/// contentType: application/json
/// content:
/// fn::toJSON:
/// flags:
/// foo:
/// name: foo
/// _deprecation:
/// status: planned
/// bar:
/// name: bar
/// attributes:
/// someAttribute:
/// constraints:
/// type: string
/// required: true
/// someOtherAttribute:
/// constraints:
/// type: number
/// required: true
/// values:
/// foo:
/// enabled: 'true'
/// bar:
/// enabled: 'true'
/// someAttribute: Hello World
/// someOtherAttribute: 123
/// version: '1'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Multi-variant Feature Flags
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.appconfig.HostedConfigurationVersion("example", {
/// applicationId: exampleAwsAppconfigApplication.id,
/// configurationProfileId: exampleAwsAppconfigConfigurationProfile.configurationProfileId,
/// description: "Example Multi-variant Feature Flag Configuration Version",
/// contentType: "application/json",
/// content: JSON.stringify({
/// flags: {
/// loggingenabled: {
/// name: "loggingEnabled",
/// },
/// },
/// values: {
/// loggingenabled: {
/// _variants: std.concat({
/// input: [
/// .map(userId => ({
/// enabled: true,
/// name: `usersWithLoggingEnabled_${userId}`,
/// rule: `(or (eq $userId "${userId}"))`,
/// })),
/// [{
/// enabled: false,
/// name: "Default",
/// }],
/// ],
/// }).then(invoke => invoke.result),
/// },
/// },
/// version: "1",
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.appconfig.HostedConfigurationVersion("example",
/// application_id=example_aws_appconfig_application["id"],
/// configuration_profile_id=example_aws_appconfig_configuration_profile["configurationProfileId"],
/// description="Example Multi-variant Feature Flag Configuration Version",
/// content_type="application/json",
/// content=json.dumps({
/// "flags": {
/// "loggingenabled": {
/// "name": "loggingEnabled",
/// },
/// },
/// "values": {
/// "loggingenabled": {
/// "_variants": std.concat(input=[
/// [{
/// "enabled": True,
/// "name": f"usersWithLoggingEnabled_{user_id}",
/// "rule": f"(or (eq $userId \"{user_id}\"))",
/// } for userId in appcfg_enable_logging_user_ids],
/// [{
/// "enabled": False,
/// "name": "Default",
/// }],
/// ]).result,
/// },
/// },
/// "version": "1",
/// }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.AppConfig.HostedConfigurationVersion("example", new()
/// {
/// ApplicationId = exampleAwsAppconfigApplication.Id,
/// ConfigurationProfileId = exampleAwsAppconfigConfigurationProfile.ConfigurationProfileId,
/// Description = "Example Multi-variant Feature Flag Configuration Version",
/// ContentType = "application/json",
/// Content = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["flags"] = new Dictionary<string, object?>
/// {
/// ["loggingenabled"] = new Dictionary<string, object?>
/// {
/// ["name"] = "loggingEnabled",
/// },
/// },
/// ["values"] = new Dictionary<string, object?>
/// {
/// ["loggingenabled"] = new Dictionary<string, object?>
/// {
/// ["_variants"] = Std.Concat.Invoke(new()
/// {
/// Input = new[]
/// {
/// .Select(userId =>
/// {
/// return
/// {
/// { "enabled", true },
/// { "name", $"usersWithLoggingEnabled_{userId}" },
/// { "rule", $"(or (eq $userId \"{userId}\"))" },
/// };
/// }).ToList(),
/// new[]
/// {
///
/// {
/// { "enabled", false },
/// { "name", "Default" },
/// },
/// },
/// },
/// }).Apply(invoke => invoke.Result),
/// },
/// },
/// ["version"] = "1",
/// }),
/// });
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AppConfig Hosted Configuration Versions using the application ID, configuration profile ID, and version number separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/hostedConfigurationVersion:HostedConfigurationVersion example 71abcde/11xxxxx/2
/// ```
class HostedConfigurationVersion extends CustomResource {
  /// Application ID.
  late final Output<String> applicationId;

  /// ARN of the AppConfig  hosted configuration version.
  late final Output<String> arn;

  /// Configuration profile ID.
  late final Output<String> configurationProfileId;

  /// Content of the configuration or the configuration data.
  late final Output<String> content;

  /// Standard MIME type describing the format of the configuration content. For more information, see [Content-Type](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17).
  late final Output<String> contentType;

  /// Description of the configuration.
  late final Output<String?> description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Version number of the hosted configuration.
  late final Output<int> versionNumber;

  HostedConfigurationVersion(
    String name, {
    HostedConfigurationVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/hostedConfigurationVersion:HostedConfigurationVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.arn = registerOutput<String>('arn');
    this.configurationProfileId =
        registerOutput<String>('configurationProfileId');
    this.content = registerOutput<String>('content');
    this.contentType = registerOutput<String>('contentType');
    this.description = registerOutput<String?>('description');
    this.region = registerOutput<String>('region');
    this.versionNumber = registerOutput<int>('versionNumber');
  }
}
