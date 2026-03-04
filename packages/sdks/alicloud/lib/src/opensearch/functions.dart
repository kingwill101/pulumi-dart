import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_groups_args.dart';
import 'get_app_groups_result.dart';

/// This data source provides the Open Search App Groups of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.136.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_testacc";
/// const defaultAppGroup = new alicloud.opensearch.AppGroup("default", {
///     appGroupName: name,
///     paymentType: "PayAsYouGo",
///     type: "standard",
///     quota: {
///         docSize: 1,
///         computeResource: 20,
///         spec: "opensearch.share.common",
///     },
/// });
/// const _default = alicloud.opensearch.getAppGroupsOutput({
///     ids: [defaultAppGroup.id],
/// });
/// export const appGroups = _default.apply(_default => _default.groups);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_testacc"
/// default_app_group = alicloud.opensearch.AppGroup("default",
///     app_group_name=name,
///     payment_type="PayAsYouGo",
///     type="standard",
///     quota={
///         "doc_size": 1,
///         "compute_resource": 20,
///         "spec": "opensearch.share.common",
///     })
/// default = alicloud.opensearch.get_app_groups_output(ids=[default_app_group.id])
/// pulumi.export("appGroups", default.groups)
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
///     var name = config.Get("name") ?? "tf_testacc";
///     var defaultAppGroup = new AliCloud.OpenSearch.AppGroup("default", new()
///     {
///         AppGroupName = name,
///         PaymentType = "PayAsYouGo",
///         Type = "standard",
///         Quota = new AliCloud.OpenSearch.Inputs.AppGroupQuotaArgs
///         {
///             DocSize = 1,
///             ComputeResource = 20,
///             Spec = "opensearch.share.common",
///         },
///     });
///
///     var @default = AliCloud.OpenSearch.GetAppGroups.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAppGroup.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["appGroups"] = @default.Apply(@default => @default.Apply(getAppGroupsResult => getAppGroupsResult.Groups)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_testacc"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		defaultAppGroup, err := opensearch.NewAppGroup(ctx, "default", &opensearch.AppGroupArgs{
/// 			AppGroupName: pulumi.String(name),
/// 			PaymentType:  pulumi.String("PayAsYouGo"),
/// 			Type:         pulumi.String("standard"),
/// 			Quota: &opensearch.AppGroupQuotaArgs{
/// 				DocSize:         pulumi.Int(1),
/// 				ComputeResource: pulumi.Int(20),
/// 				Spec:            pulumi.String("opensearch.share.common"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default := opensearch.GetAppGroupsOutput(ctx, opensearch.GetAppGroupsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultAppGroup.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("appGroups", _default.ApplyT(func(_default opensearch.GetAppGroupsResult) ([]opensearch.GetAppGroupsGroup, error) {
/// 			return []opensearch.GetAppGroupsGroup(_default.Groups), nil
/// 		}).([]opensearch.GetAppGroupsGroupOutput))
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
/// import com.pulumi.alicloud.opensearch.AppGroup;
/// import com.pulumi.alicloud.opensearch.AppGroupArgs;
/// import com.pulumi.alicloud.opensearch.inputs.AppGroupQuotaArgs;
/// import com.pulumi.alicloud.opensearch.OpensearchFunctions;
/// import com.pulumi.alicloud.opensearch.inputs.GetAppGroupsArgs;
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
///         final var name = config.get("name").orElse("tf_testacc");
///         var defaultAppGroup = new AppGroup("defaultAppGroup", AppGroupArgs.builder()
///             .appGroupName(name)
///             .paymentType("PayAsYouGo")
///             .type("standard")
///             .quota(AppGroupQuotaArgs.builder()
///                 .docSize(1)
///                 .computeResource(20)
///                 .spec("opensearch.share.common")
///                 .build())
///             .build());
///
///         final var default = OpensearchFunctions.getAppGroups(GetAppGroupsArgs.builder()
///             .ids(defaultAppGroup.id())
///             .build());
///
///         ctx.export("appGroups", default_.applyValue(_default_ -> _default_.groups()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_testacc
/// resources:
///   defaultAppGroup:
///     type: alicloud:opensearch:AppGroup
///     name: default
///     properties:
///       appGroupName: ${name}
///       paymentType: PayAsYouGo
///       type: standard
///       quota:
///         docSize: 1
///         computeResource: 20
///         spec: opensearch.share.common
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:opensearch:getAppGroups
///       arguments:
///         ids:
///           - ${defaultAppGroup.id}
/// outputs:
///   appGroups: ${default.groups}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_opensearch_get_app_groups_get_app_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppGroupsResult> getAppGroups(
  GetAppGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:opensearch/getAppGroups:getAppGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppGroupsResult.fromMap(result);
}
