import 'package:pulumi/pulumi.dart';
import '../service_network_settings_network_settings/service_network_settings_network_settings.dart';
import 'service_network_settings_args.dart';

/// A NetworkSettings resource is a container for ingress settings for a version or service.
///
///
/// To get more information about ServiceNetworkSettings, see:
///
/// * [API documentation](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services)
///
/// ## Example Usage
///
/// ### App Engine Service Network Settings
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
/// const internalapp = new gcp.appengine.StandardAppVersion("internalapp", {
/// versionId: "v1",
/// service: "internalapp",
/// deleteServiceOnDestroy: true,
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
/// });
/// const internalappServiceNetworkSettings = new gcp.appengine.ServiceNetworkSettings("internalapp", {
/// service: internalapp.service,
/// networkSettings: {
/// ingressTrafficAllowed: "INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY",
/// },
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
/// internalapp = gcp.appengine.StandardAppVersion("internalapp",
/// version_id="v1",
/// service="internalapp",
/// delete_service_on_destroy=True,
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
/// })
/// internalapp_service_network_settings = gcp.appengine.ServiceNetworkSettings("internalapp",
/// service=internalapp.service,
/// network_settings={
/// "ingress_traffic_allowed": "INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY",
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
/// var internalapp = new Gcp.AppEngine.StandardAppVersion("internalapp", new()
/// {
/// VersionId = "v1",
/// Service = "internalapp",
/// DeleteServiceOnDestroy = true,
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
/// });
///
/// var internalappServiceNetworkSettings = new Gcp.AppEngine.ServiceNetworkSettings("internalapp", new()
/// {
/// Service = internalapp.Service,
/// NetworkSettings = new Gcp.AppEngine.Inputs.ServiceNetworkSettingsNetworkSettingsArgs
/// {
/// IngressTrafficAllowed = "INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY",
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
/// internalapp, err := appengine.NewStandardAppVersion(ctx, "internalapp", &appengine.StandardAppVersionArgs{
/// VersionId:              pulumi.String("v1"),
/// Service:                pulumi.String("internalapp"),
/// DeleteServiceOnDestroy: pulumi.Bool(true),
/// Runtime:                pulumi.String("nodejs20"),
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
/// })
/// if err != nil {
/// return err
/// }
/// _, err = appengine.NewServiceNetworkSettings(ctx, "internalapp", &appengine.ServiceNetworkSettingsArgs{
/// Service: internalapp.Service,
/// NetworkSettings: &appengine.ServiceNetworkSettingsNetworkSettingsArgs{
/// IngressTrafficAllowed: pulumi.String("INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY"),
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
/// import com.pulumi.gcp.appengine.ServiceNetworkSettings;
/// import com.pulumi.gcp.appengine.ServiceNetworkSettingsArgs;
/// import com.pulumi.gcp.appengine.inputs.ServiceNetworkSettingsNetworkSettingsArgs;
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
/// var internalapp = new StandardAppVersion("internalapp", StandardAppVersionArgs.builder()
/// .versionId("v1")
/// .service("internalapp")
/// .deleteServiceOnDestroy(true)
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
/// .build());
///
/// var internalappServiceNetworkSettings = new ServiceNetworkSettings("internalappServiceNetworkSettings", ServiceNetworkSettingsArgs.builder()
/// .service(internalapp.service())
/// .networkSettings(ServiceNetworkSettingsNetworkSettingsArgs.builder()
/// .ingressTrafficAllowed("INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
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
/// internalapp:
/// type: gcp:appengine:StandardAppVersion
/// properties:
/// versionId: v1
/// service: internalapp
/// deleteServiceOnDestroy: true
/// runtime: nodejs20
/// entrypoint:
/// shell: node ./app.js
/// deployment:
/// zip:
/// sourceUrl: https://storage.googleapis.com/${bucket.name}/${object.name}
/// envVariables:
/// port: '8080'
/// internalappServiceNetworkSettings:
/// type: gcp:appengine:ServiceNetworkSettings
/// name: internalapp
/// properties:
/// service: ${internalapp.service}
/// networkSettings:
/// ingressTrafficAllowed: INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ServiceNetworkSettings can be imported using any of these accepted formats:
///
/// * `apps/{{project}}/services/{{service}}`
///
/// * `{{project}}/{{service}}`
///
/// * `{{service}}`
///
/// When using the `pulumi import` command, ServiceNetworkSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:appengine/serviceNetworkSettings:ServiceNetworkSettings default apps/{{project}}/services/{{service}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:appengine/serviceNetworkSettings:ServiceNetworkSettings default {{project}}/{{service}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:appengine/serviceNetworkSettings:ServiceNetworkSettings default {{service}}
/// ```
class ServiceNetworkSettings extends CustomResource {
  /// Ingress settings for this service. Will apply to all versions.
  /// Structure is documented below.
  late final Output<ServiceNetworkSettingsNetworkSettings> networkSettings;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The name of the service these settings apply to.
  late final Output<String> service;

  ServiceNetworkSettings(
    String name, {
    ServiceNetworkSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/serviceNetworkSettings:ServiceNetworkSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.networkSettings =
        Output.createUnknown<ServiceNetworkSettingsNetworkSettings>();
    this.project = Output.createUnknown<String>();
    this.service = Output.createUnknown<String>();
  }
}
