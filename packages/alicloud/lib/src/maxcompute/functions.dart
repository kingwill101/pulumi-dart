import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_projects_args.dart';
import 'get_projects_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';

/// This data source provides Max Compute Project available to the user.[What is Project](https://www.alibabacloud.com/help/en/maxcompute/)
///
/// > **NOTE:** Available since v1.196.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example_acc";
/// const defaultProject = new alicloud.maxcompute.Project("default", {
///     defaultQuota: "默认后付费Quota",
///     projectName: name,
///     comment: name,
///     productType: "PayAsYouGo",
/// });
/// const _default = alicloud.maxcompute.getProjectsOutput({
///     nameRegex: defaultProject.projectName,
/// });
/// export const alicloudMaxcomputeProjectExampleId = _default.apply(_default => _default.projects?.[0]?.projectName);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example_acc"
/// default_project = alicloud.maxcompute.Project("default",
///     default_quota="默认后付费Quota",
///     project_name=name,
///     comment=name,
///     product_type="PayAsYouGo")
/// default = alicloud.maxcompute.get_projects_output(name_regex=default_project.project_name)
/// pulumi.export("alicloudMaxcomputeProjectExampleId", default.projects[0].project_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example_acc";
///     var defaultProject = new AliCloud.MaxCompute.Project("default", new()
///     {
///         DefaultQuota = "默认后付费Quota",
///         ProjectName = name,
///         Comment = name,
///         ProductType = "PayAsYouGo",
///     });
///
///     var @default = AliCloud.MaxCompute.GetProjects.Invoke(new()
///     {
///         NameRegex = defaultProject.ProjectName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudMaxcomputeProjectExampleId"] = @default.Apply(@default => @default.Apply(getProjectsResult => getProjectsResult.Projects[0]?.ProjectName)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/maxcompute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "tf_example_acc";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// defaultProject, err := maxcompute.NewProject(ctx, "default", &maxcompute.ProjectArgs{
/// DefaultQuota: pulumi.String("默认后付费Quota"),
/// ProjectName: pulumi.String(name),
/// Comment: pulumi.String(name),
/// ProductType: pulumi.String("PayAsYouGo"),
/// })
/// if err != nil {
/// return err
/// }
/// _default := maxcompute.GetProjectsOutput(ctx, maxcompute.GetProjectsOutputArgs{
/// NameRegex: defaultProject.ProjectName,
/// }, nil);
/// ctx.Export("alicloudMaxcomputeProjectExampleId", _default.ApplyT(func(_default maxcompute.GetProjectsResult) (*string, error) {
/// return &default.Projects[0].ProjectName, nil
/// }).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.maxcompute.Project;
/// import com.pulumi.alicloud.maxcompute.ProjectArgs;
/// import com.pulumi.alicloud.maxcompute.MaxcomputeFunctions;
/// import com.pulumi.alicloud.maxcompute.inputs.GetProjectsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf_example_acc");
///         var defaultProject = new Project("defaultProject", ProjectArgs.builder()
///             .defaultQuota("默认后付费Quota")
///             .projectName(name)
///             .comment(name)
///             .productType("PayAsYouGo")
///             .build());
///
///         final var default = MaxcomputeFunctions.getProjects(GetProjectsArgs.builder()
///             .nameRegex(defaultProject.projectName())
///             .build());
///
///         ctx.export("alicloudMaxcomputeProjectExampleId", default_.applyValue(_default_ -> _default_.projects()[0].projectName()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example_acc
/// resources:
///   defaultProject:
///     type: alicloud:maxcompute:Project
///     name: default
///     properties:
///       defaultQuota: 默认后付费Quota
///       projectName: ${name}
///       comment: ${name}
///       productType: PayAsYouGo
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:maxcompute:getProjects
///       arguments:
///         nameRegex: ${defaultProject.projectName}
/// outputs:
///   alicloudMaxcomputeProjectExampleId: ${default.projects[0].projectName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_maxcompute_get_projects_get_projects_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectsResult> getProjects(
  GetProjectsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:maxcompute/getProjects:getProjects',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectsResult.fromMap(result);
}

/// > **NOTE:** When you open MaxCompute service, you'd better open [DataWorks service](https://www.alibabacloud.com/help/en/product/72772.htm) as well.
///
/// Using this data source can open Maxcompute service automatically. If the service has been opened, it will return opened.
///
/// For information about Maxcompute and how to use it, see [What is Maxcompute](https://www.alibabacloud.com/help/en/product/27797.htm).
///
/// > **NOTE:** Available in v1.117.0+
///
/// > **NOTE:** This datasource has been deprecated since provider version v1.228.0. Please use the resource `alicloud.maxcompute.Quota` instead.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.maxcompute.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.maxcompute.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.MaxCompute.GetService.Invoke(new()
///     {
///         Enable = "On",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/maxcompute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := maxcompute.GetService(ctx, &maxcompute.GetServiceArgs{
/// 			Enable: pulumi.StringRef("On"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.maxcompute.MaxcomputeFunctions;
/// import com.pulumi.alicloud.maxcompute.inputs.GetServiceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var open = MaxcomputeFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:maxcompute:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_maxcompute_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:maxcompute/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}
