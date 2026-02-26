import 'package:pulumi/pulumi.dart';
import 'service_args5.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.projects.Service("project", {
/// project: "your-project-id",
/// service: "iam.googleapis.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.projects.Service("project",
/// project="your-project-id",
/// service="iam.googleapis.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = new Gcp.Projects.Service("project", new()
/// {
/// Project = "your-project-id",
/// ServiceName = "iam.googleapis.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := projects.NewService(ctx, "project", &projects.ServiceArgs{
/// Project: pulumi.String("your-project-id"),
/// Service: pulumi.String("iam.googleapis.com"),
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
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
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
/// var project = new Service("project", ServiceArgs.builder()
/// .project("your-project-id")
/// .service("iam.googleapis.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:projects:Service
/// properties:
/// project: your-project-id
/// service: iam.googleapis.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Project services can be imported using the `project_id` and `service`, e.g.
///
/// * `{{project_id}}/{{service}}`
///
/// When using the `pulumi import` command, project services can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:projects/service:Service default {{project_id}}/{{service}}
/// ```
///
/// Note that unlike other resources that fail if they already exist,
///
/// `pulumi up` can be successfully used to verify already enabled services.
///
/// This means that when importing existing resources into Terraform, you can either
///
/// import the `google_project_service` resources or treat them as new
///
/// infrastructure and run `pulumi up` to add them to state.
class Service5 extends CustomResource {
  /// Beta
  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the usage of the service to be disabled will be checked and an error
  /// will be returned if the service to be disabled has usage in last 30 days.
  late final Output<bool?> checkIfServiceHasUsageOnDestroy;

  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, services that are enabled
  /// and which depend on this service should also be disabled when this service is
  /// destroyed. If <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> or unset, an error will be generated if any enabled
  /// services depend on this service when destroying it.
  late final Output<bool?> disableDependentServices;
  late final Output<bool?> disableOnDestroy;

  /// The project ID. If not provided, the provider project
  /// is used.
  late final Output<String> project;

  /// The service to enable.
  late final Output<String> service;

  Service5(
    String name, {
    ServiceArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:projects/service:Service',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.checkIfServiceHasUsageOnDestroy =
        registerOutput<bool?>('checkIfServiceHasUsageOnDestroy');
    this.disableDependentServices =
        registerOutput<bool?>('disableDependentServices');
    this.disableOnDestroy = registerOutput<bool?>('disableOnDestroy');
    this.project = registerOutput<String>('project');
    this.service = registerOutput<String>('service');
  }
}
