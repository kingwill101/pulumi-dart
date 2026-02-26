import 'package:pulumi/pulumi.dart';
import 'get_app_engine_service_args.dart';
import 'get_app_engine_service_result.dart';

/// A Monitoring Service is the root resource under which operational aspects of a
/// generic service are accessible. A service is some discrete, autonomous, and
/// network-accessible unit, designed to solve an individual concern
///
/// An App Engine monitoring service is automatically created by GCP to monitor
/// App Engine services.
///
///
/// To get more information about Service, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/services)
/// * How-to Guides
/// * [Service Monitoring](https://cloud.google.com/monitoring/service-monitoring)
/// * [Monitoring API Documentation](https://cloud.google.com/monitoring/api/v3/)
///
/// ## Example Usage
///
/// ### Monitoring App Engine Service
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
/// name: "appengine-static-content",
/// location: "US",
/// });
/// const object = new gcp.storage.BucketObject("object", {
/// name: "hello-world.zip",
/// bucket: bucket.name,
/// source: new pulumi.asset.FileAsset("./test-fixtures/hello-world.zip"),
/// });
/// const myapp = new gcp.appengine.StandardAppVersion("myapp", {
/// versionId: "v1",
/// service: "myapp",
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
/// deleteServiceOnDestroy: false,
/// });
/// // Monitors the default AppEngine service
/// const srv = gcp.monitoring.getAppEngineServiceOutput({
/// moduleId: myapp.service,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
/// name="appengine-static-content",
/// location="US")
/// object = gcp.storage.BucketObject("object",
/// name="hello-world.zip",
/// bucket=bucket.name,
/// source=pulumi.FileAsset("./test-fixtures/hello-world.zip"))
/// myapp = gcp.appengine.StandardAppVersion("myapp",
/// version_id="v1",
/// service="myapp",
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
/// delete_service_on_destroy=False)
/// # Monitors the default AppEngine service
/// srv = gcp.monitoring.get_app_engine_service_output(module_id=myapp.service)
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
/// Name = "appengine-static-content",
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
/// var myapp = new Gcp.AppEngine.StandardAppVersion("myapp", new()
/// {
/// VersionId = "v1",
/// Service = "myapp",
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
/// DeleteServiceOnDestroy = false,
/// });
///
/// // Monitors the default AppEngine service
/// var srv = Gcp.Monitoring.GetAppEngineService.Invoke(new()
/// {
/// ModuleId = myapp.Service,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// Name:     pulumi.String("appengine-static-content"),
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
/// myapp, err := appengine.NewStandardAppVersion(ctx, "myapp", &appengine.StandardAppVersionArgs{
/// VersionId: pulumi.String("v1"),
/// Service:   pulumi.String("myapp"),
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
/// DeleteServiceOnDestroy: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// // Monitors the default AppEngine service
/// _ = monitoring.GetAppEngineServiceOutput(ctx, monitoring.GetAppEngineServiceOutputArgs{
/// ModuleId: myapp.Service,
/// }, nil)
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
/// import com.pulumi.gcp.monitoring.MonitoringFunctions;
/// import com.pulumi.gcp.monitoring.inputs.GetAppEngineServiceArgs;
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
/// .name("appengine-static-content")
/// .location("US")
/// .build());
///
/// var object = new BucketObject("object", BucketObjectArgs.builder()
/// .name("hello-world.zip")
/// .bucket(bucket.name())
/// .source(new FileAsset("./test-fixtures/hello-world.zip"))
/// .build());
///
/// var myapp = new StandardAppVersion("myapp", StandardAppVersionArgs.builder()
/// .versionId("v1")
/// .service("myapp")
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
/// .deleteServiceOnDestroy(false)
/// .build());
///
/// // Monitors the default AppEngine service
/// final var srv = MonitoringFunctions.getAppEngineService(GetAppEngineServiceArgs.builder()
/// .moduleId(myapp.service())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myapp:
/// type: gcp:appengine:StandardAppVersion
/// properties:
/// versionId: v1
/// service: myapp
/// runtime: nodejs20
/// entrypoint:
/// shell: node ./app.js
/// deployment:
/// zip:
/// sourceUrl: https://storage.googleapis.com/${bucket.name}/${object.name}
/// envVariables:
/// port: '8080'
/// deleteServiceOnDestroy: false
/// bucket:
/// type: gcp:storage:Bucket
/// properties:
/// name: appengine-static-content
/// location: US
/// object:
/// type: gcp:storage:BucketObject
/// properties:
/// name: hello-world.zip
/// bucket: ${bucket.name}
/// source:
/// fn::FileAsset: ./test-fixtures/hello-world.zip
/// variables:
/// # Monitors the default AppEngine service
/// srv:
/// fn::invoke:
/// function: gcp:monitoring:getAppEngineService
/// arguments:
/// moduleId: ${myapp.service}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAppEngineServiceResult> getAppEngineService(
  GetAppEngineServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:monitoring/getAppEngineService:getAppEngineService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppEngineServiceResult.fromMap(result);
}
