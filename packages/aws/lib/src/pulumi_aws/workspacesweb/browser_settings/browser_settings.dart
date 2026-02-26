import 'package:pulumi/pulumi.dart';
import 'browser_settings_args.dart';

/// Resource for managing an AWS WorkSpaces Web Browser Settings resource.
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
/// const example = new aws.workspacesweb.BrowserSettings("example", {browserPolicy: JSON.stringify({
/// AdditionalSettings: {
/// DownloadsSettings: {
/// Behavior: "DISABLE",
/// },
/// },
/// })});
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.workspacesweb.BrowserSettings("example", browser_policy=json.dumps({
/// "AdditionalSettings": {
/// "DownloadsSettings": {
/// "Behavior": "DISABLE",
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
/// var example = new Aws.WorkSpacesWeb.BrowserSettings("example", new()
/// {
/// BrowserPolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["AdditionalSettings"] = new Dictionary<string, object?>
/// {
/// ["DownloadsSettings"] = new Dictionary<string, object?>
/// {
/// ["Behavior"] = "DISABLE",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "AdditionalSettings": map[string]interface{}{
/// "DownloadsSettings": map[string]interface{}{
/// "Behavior": "DISABLE",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = workspacesweb.NewBrowserSettings(ctx, "example", &workspacesweb.BrowserSettingsArgs{
/// BrowserPolicy: pulumi.String(json0),
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
/// import com.pulumi.aws.workspacesweb.BrowserSettings;
/// import com.pulumi.aws.workspacesweb.BrowserSettingsArgs;
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
/// var example = new BrowserSettings("example", BrowserSettingsArgs.builder()
/// .browserPolicy(serializeJson(
/// jsonObject(
/// jsonProperty("AdditionalSettings", jsonObject(
/// jsonProperty("DownloadsSettings", jsonObject(
/// jsonProperty("Behavior", "DISABLE")
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
/// example:
/// type: aws:workspacesweb:BrowserSettings
/// properties:
/// browserPolicy:
/// fn::toJSON:
/// AdditionalSettings:
/// DownloadsSettings:
/// Behavior: DISABLE
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With All Arguments
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {
/// description: "KMS key for WorkSpaces Web Browser Settings",
/// deletionWindowInDays: 7,
/// });
/// const exampleBrowserSettings = new aws.workspacesweb.BrowserSettings("example", {
/// browserPolicy: JSON.stringify({
/// chromePolicies: {
/// DefaultDownloadDirectory: {
/// value: "/home/as2-streaming-user/MyFiles/TemporaryFiles1",
/// },
/// },
/// }),
/// customerManagedKey: example.arn,
/// additionalEncryptionContext: {
/// Environment: "Production",
/// },
/// tags: {
/// Name: "example-browser-settings",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example",
/// description="KMS key for WorkSpaces Web Browser Settings",
/// deletion_window_in_days=7)
/// example_browser_settings = aws.workspacesweb.BrowserSettings("example",
/// browser_policy=json.dumps({
/// "chromePolicies": {
/// "DefaultDownloadDirectory": {
/// "value": "/home/as2-streaming-user/MyFiles/TemporaryFiles1",
/// },
/// },
/// }),
/// customer_managed_key=example.arn,
/// additional_encryption_context={
/// "Environment": "Production",
/// },
/// tags={
/// "Name": "example-browser-settings",
/// })
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
/// var example = new Aws.Kms.Key("example", new()
/// {
/// Description = "KMS key for WorkSpaces Web Browser Settings",
/// DeletionWindowInDays = 7,
/// });
///
/// var exampleBrowserSettings = new Aws.WorkSpacesWeb.BrowserSettings("example", new()
/// {
/// BrowserPolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["chromePolicies"] = new Dictionary<string, object?>
/// {
/// ["DefaultDownloadDirectory"] = new Dictionary<string, object?>
/// {
/// ["value"] = "/home/as2-streaming-user/MyFiles/TemporaryFiles1",
/// },
/// },
/// }),
/// CustomerManagedKey = example.Arn,
/// AdditionalEncryptionContext =
/// {
/// { "Environment", "Production" },
/// },
/// Tags =
/// {
/// { "Name", "example-browser-settings" },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// Description:          pulumi.String("KMS key for WorkSpaces Web Browser Settings"),
/// DeletionWindowInDays: pulumi.Int(7),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "chromePolicies": map[string]interface{}{
/// "DefaultDownloadDirectory": map[string]interface{}{
/// "value": "/home/as2-streaming-user/MyFiles/TemporaryFiles1",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = workspacesweb.NewBrowserSettings(ctx, "example", &workspacesweb.BrowserSettingsArgs{
/// BrowserPolicy:      pulumi.String(json0),
/// CustomerManagedKey: example.Arn,
/// AdditionalEncryptionContext: pulumi.StringMap{
/// "Environment": pulumi.String("Production"),
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example-browser-settings"),
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.workspacesweb.BrowserSettings;
/// import com.pulumi.aws.workspacesweb.BrowserSettingsArgs;
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
/// var example = new Key("example", KeyArgs.builder()
/// .description("KMS key for WorkSpaces Web Browser Settings")
/// .deletionWindowInDays(7)
/// .build());
///
/// var exampleBrowserSettings = new BrowserSettings("exampleBrowserSettings", BrowserSettingsArgs.builder()
/// .browserPolicy(serializeJson(
/// jsonObject(
/// jsonProperty("chromePolicies", jsonObject(
/// jsonProperty("DefaultDownloadDirectory", jsonObject(
/// jsonProperty("value", "/home/as2-streaming-user/MyFiles/TemporaryFiles1")
/// ))
/// ))
/// )))
/// .customerManagedKey(example.arn())
/// .additionalEncryptionContext(Map.of("Environment", "Production"))
/// .tags(Map.of("Name", "example-browser-settings"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:kms:Key
/// properties:
/// description: KMS key for WorkSpaces Web Browser Settings
/// deletionWindowInDays: 7
/// exampleBrowserSettings:
/// type: aws:workspacesweb:BrowserSettings
/// name: example
/// properties:
/// browserPolicy:
/// fn::toJSON:
/// chromePolicies:
/// DefaultDownloadDirectory:
/// value: /home/as2-streaming-user/MyFiles/TemporaryFiles1
/// customerManagedKey: ${example.arn}
/// additionalEncryptionContext:
/// Environment: Production
/// tags:
/// Name: example-browser-settings
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Browser Settings using the <span pulumi-lang-nodejs="`browserSettingsArn`" pulumi-lang-dotnet="`BrowserSettingsArn`" pulumi-lang-go="`browserSettingsArn`" pulumi-lang-python="`browser_settings_arn`" pulumi-lang-yaml="`browserSettingsArn`" pulumi-lang-java="`browserSettingsArn`">`browser_settings_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/browserSettings:BrowserSettings example arn:aws:workspacesweb:us-west-2:123456789012:browsersettings/abcdef12345
/// ```
class BrowserSettings extends CustomResource {
  /// Additional encryption context for the browser settings.
  late final Output<Map<String, String>?> additionalEncryptionContext;

  /// List of web portal ARNs to associate with the browser settings.
  late final Output<List<String>> associatedPortalArns;

  /// Browser policy for the browser settings. This is a JSON string that defines the browser settings policy.
  ///
  /// The following arguments are optional:
  late final Output<String> browserPolicy;

  /// ARN of the browser settings resource.
  late final Output<String> browserSettingsArn;

  /// ARN of the customer managed KMS key.
  late final Output<String?> customerManagedKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  BrowserSettings(
    String name, {
    BrowserSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/browserSettings:BrowserSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.additionalEncryptionContext =
        registerOutput<Map<String, String>?>('additionalEncryptionContext');
    this.associatedPortalArns =
        registerOutput<List<String>>('associatedPortalArns');
    this.browserPolicy = registerOutput<String>('browserPolicy');
    this.browserSettingsArn = registerOutput<String>('browserSettingsArn');
    this.customerManagedKey = registerOutput<String?>('customerManagedKey');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
