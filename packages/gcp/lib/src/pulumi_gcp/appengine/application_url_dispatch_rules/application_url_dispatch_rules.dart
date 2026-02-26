import 'package:pulumi/pulumi.dart';
import '../application_url_dispatch_rules_dispatch_rule/application_url_dispatch_rules_dispatch_rule.dart';
import 'application_url_dispatch_rules_args.dart';

/// Rules to match an HTTP request and dispatch that request to a service.
///
///
/// To get more information about ApplicationUrlDispatchRules, see:
///
/// * [API documentation](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps#UrlDispatchRule)
///
/// ## Example Usage
///
/// ### App Engine Application Url Dispatch Rules Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
/// name: "appengine-test-bucket",
/// location: "US",
/// });
/// const object = new gcp.storage.BucketObject("object", {
/// name: "hello-world.zip",
/// bucket: bucket.name,
/// source: new pulumi.asset.FileAsset("./test-fixtures/hello-world.zip"),
/// });
/// const adminV3 = new gcp.appengine.StandardAppVersion("admin_v3", {
/// versionId: "v3",
/// service: "admin",
/// runtime: "nodejs20",
/// entrypoint: {
/// shell: "node ./app.js",
/// },
/// deployment: {
/// zip: {
/// sourceUrl: pulumi.interpolate`https://storage.googleapis.com/${bucket.name}/${object.name}`,
/// },
/// },
/// envVariables: {
/// port: "8080",
/// },
/// deleteServiceOnDestroy: true,
/// });
/// const webService = new gcp.appengine.ApplicationUrlDispatchRules("web_service", {dispatchRules: [
/// {
/// domain: "*",
/// path: "/*",
/// service: "default",
/// },
/// {
/// domain: "*",
/// path: "/admin/*",
/// service: adminV3.service,
/// },
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
/// name="appengine-test-bucket",
/// location="US")
/// object = gcp.storage.BucketObject("object",
/// name="hello-world.zip",
/// bucket=bucket.name,
/// source=pulumi.FileAsset("./test-fixtures/hello-world.zip"))
/// admin_v3 = gcp.appengine.StandardAppVersion("admin_v3",
/// version_id="v3",
/// service="admin",
/// runtime="nodejs20",
/// entrypoint={
/// "shell": "node ./app.js",
/// },
/// deployment={
/// "zip": {
/// "source_url": pulumi.Output.all(
/// bucketName=bucket.name,
/// objectName=object.name
/// ).apply(lambda resolved_outputs: f"https://storage.googleapis.com/{resolved_outputs['bucketName']}/{resolved_outputs['objectName']}")
/// ,
/// },
/// },
/// env_variables={
/// "port": "8080",
/// },
/// delete_service_on_destroy=True)
/// web_service = gcp.appengine.ApplicationUrlDispatchRules("web_service", dispatch_rules=[
/// {
/// "domain": "*",
/// "path": "/*",
/// "service": "default",
/// },
/// {
/// "domain": "*",
/// "path": "/admin/*",
/// "service": admin_v3.service,
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var bucket = new Gcp.Storage.Bucket("bucket", new()
/// {
/// Name = "appengine-test-bucket",
/// Location = "US",
/// });
///
/// var @object = new Gcp.Storage.BucketObject("object", new()
/// {
/// Name = "hello-world.zip",
/// Bucket = bucket.Name,
/// Source = new FileAsset("./test-fixtures/hello-world.zip"),
/// });
///
/// var adminV3 = new Gcp.AppEngine.StandardAppVersion("admin_v3", new()
/// {
/// VersionId = "v3",
/// Service = "admin",
/// Runtime = "nodejs20",
/// Entrypoint = new Gcp.AppEngine.Inputs.StandardAppVersionEntrypointArgs
/// {
/// Shell = "node ./app.js",
/// },
/// Deployment = new Gcp.AppEngine.Inputs.StandardAppVersionDeploymentArgs
/// {
/// Zip = new Gcp.AppEngine.Inputs.StandardAppVersionDeploymentZipArgs
/// {
/// SourceUrl = Output.Tuple(bucket.Name, @object.Name).Apply(values =>
/// {
/// var bucketName = values.Item1;
/// var objectName = values.Item2;
/// return $"https://storage.googleapis.com/{bucketName}/{objectName}";
/// }),
/// },
/// },
/// EnvVariables =
/// {
/// { "port", "8080" },
/// },
/// DeleteServiceOnDestroy = true,
/// });
///
/// var webService = new Gcp.AppEngine.ApplicationUrlDispatchRules("web_service", new()
/// {
/// DispatchRules = new[]
/// {
/// new Gcp.AppEngine.Inputs.ApplicationUrlDispatchRulesDispatchRuleArgs
/// {
/// Domain = "*",
/// Path = "/*",
/// Service = "default",
/// },
/// new Gcp.AppEngine.Inputs.ApplicationUrlDispatchRulesDispatchRuleArgs
/// {
/// Domain = "*",
/// Path = "/admin/*",
/// Service = adminV3.Service,
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
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/appengine"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// Name:     pulumi.String("appengine-test-bucket"),
/// Location: pulumi.String("US"),
/// })
/// if err != nil {
/// return err
/// }
/// object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// Name:   pulumi.String("hello-world.zip"),
/// Bucket: bucket.Name,
/// Source: pulumi.NewFileAsset("./test-fixtures/hello-world.zip"),
/// })
/// if err != nil {
/// return err
/// }
/// adminV3, err := appengine.NewStandardAppVersion(ctx, "admin_v3", &appengine.StandardAppVersionArgs{
/// VersionId: pulumi.String("v3"),
/// Service:   pulumi.String("admin"),
/// Runtime:   pulumi.String("nodejs20"),
/// Entrypoint: &appengine.StandardAppVersionEntrypointArgs{
/// Shell: pulumi.String("node ./app.js"),
/// },
/// Deployment: &appengine.StandardAppVersionDeploymentArgs{
/// Zip: &appengine.StandardAppVersionDeploymentZipArgs{
/// SourceUrl: pulumi.All(bucket.Name, object.Name).ApplyT(func(_args []interface{}) (string, error) {
/// bucketName := _args[0].(string)
/// objectName := _args[1].(string)
/// return fmt.Sprintf("https://storage.googleapis.com/%v/%v", bucketName, objectName), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// EnvVariables: pulumi.StringMap{
/// "port": pulumi.String("8080"),
/// },
/// DeleteServiceOnDestroy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = appengine.NewApplicationUrlDispatchRules(ctx, "web_service", &appengine.ApplicationUrlDispatchRulesArgs{
/// DispatchRules: appengine.ApplicationUrlDispatchRulesDispatchRuleArray{
/// &appengine.ApplicationUrlDispatchRulesDispatchRuleArgs{
/// Domain:  pulumi.String("*"),
/// Path:    pulumi.String("/*"),
/// Service: pulumi.String("default"),
/// },
/// &appengine.ApplicationUrlDispatchRulesDispatchRuleArgs{
/// Domain:  pulumi.String("*"),
/// Path:    pulumi.String("/admin/*"),
/// Service: adminV3.Service,
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.appengine.StandardAppVersion;
/// import com.pulumi.gcp.appengine.StandardAppVersionArgs;
/// import com.pulumi.gcp.appengine.inputs.StandardAppVersionEntrypointArgs;
/// import com.pulumi.gcp.appengine.inputs.StandardAppVersionDeploymentArgs;
/// import com.pulumi.gcp.appengine.inputs.StandardAppVersionDeploymentZipArgs;
/// import com.pulumi.gcp.appengine.ApplicationUrlDispatchRules;
/// import com.pulumi.gcp.appengine.ApplicationUrlDispatchRulesArgs;
/// import com.pulumi.gcp.appengine.inputs.ApplicationUrlDispatchRulesDispatchRuleArgs;
/// import com.pulumi.asset.FileAsset;
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
/// var bucket = new Bucket("bucket", BucketArgs.builder()
/// .name("appengine-test-bucket")
/// .location("US")
/// .build());
///
/// var object = new BucketObject("object", BucketObjectArgs.builder()
/// .name("hello-world.zip")
/// .bucket(bucket.name())
/// .source(new FileAsset("./test-fixtures/hello-world.zip"))
/// .build());
///
/// var adminV3 = new StandardAppVersion("adminV3", StandardAppVersionArgs.builder()
/// .versionId("v3")
/// .service("admin")
/// .runtime("nodejs20")
/// .entrypoint(StandardAppVersionEntrypointArgs.builder()
/// .shell("node ./app.js")
/// .build())
/// .deployment(StandardAppVersionDeploymentArgs.builder()
/// .zip(StandardAppVersionDeploymentZipArgs.builder()
/// .sourceUrl(Output.tuple(bucket.name(), object.name()).applyValue(values -> {
/// var bucketName = values.t1;
/// var objectName = values.t2;
/// return String.format("https://storage.googleapis.com/%s/%s", bucketName,objectName);
/// }))
/// .build())
/// .build())
/// .envVariables(Map.of("port", "8080"))
/// .deleteServiceOnDestroy(true)
/// .build());
///
/// var webService = new ApplicationUrlDispatchRules("webService", ApplicationUrlDispatchRulesArgs.builder()
/// .dispatchRules(
/// ApplicationUrlDispatchRulesDispatchRuleArgs.builder()
/// .domain("*")
/// .path("/*")
/// .service("default")
/// .build(),
/// ApplicationUrlDispatchRulesDispatchRuleArgs.builder()
/// .domain("*")
/// .path("/admin/*")
/// .service(adminV3.service())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// webService:
/// type: gcp:appengine:ApplicationUrlDispatchRules
/// name: web_service
/// properties:
/// dispatchRules:
/// - domain: '*'
/// path: /*
/// service: default
/// - domain: '*'
/// path: /admin/*
/// service: ${adminV3.service}
/// adminV3:
/// type: gcp:appengine:StandardAppVersion
/// name: admin_v3
/// properties:
/// versionId: v3
/// service: admin
/// runtime: nodejs20
/// entrypoint:
/// shell: node ./app.js
/// deployment:
/// zip:
/// sourceUrl: https://storage.googleapis.com/${bucket.name}/${object.name}
/// envVariables:
/// port: '8080'
/// deleteServiceOnDestroy: true
/// bucket:
/// type: gcp:storage:Bucket
/// properties:
/// name: appengine-test-bucket
/// location: US
/// object:
/// type: gcp:storage:BucketObject
/// properties:
/// name: hello-world.zip
/// bucket: ${bucket.name}
/// source:
/// fn::FileAsset: ./test-fixtures/hello-world.zip
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ApplicationUrlDispatchRules can be imported using any of these accepted formats:
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, ApplicationUrlDispatchRules can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:appengine/applicationUrlDispatchRules:ApplicationUrlDispatchRules default {{project}}
/// ```
class ApplicationUrlDispatchRules extends CustomResource {
  /// Rules to match an HTTP request and dispatch that request to a service.
  /// Structure is documented below.
  late final Output<List<ApplicationUrlDispatchRulesDispatchRule>>
      dispatchRules;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  ApplicationUrlDispatchRules(
    String name, {
    ApplicationUrlDispatchRulesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/applicationUrlDispatchRules:ApplicationUrlDispatchRules',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dispatchRules =
        registerOutput<List<ApplicationUrlDispatchRulesDispatchRule>>(
            'dispatchRules');
    this.project = registerOutput<String>('project');
  }
}
