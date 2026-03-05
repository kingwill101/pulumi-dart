import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_plan_args.dart';
import 'quota_plan_quota.dart';
import 'quota_plan_state.dart';

/// Provides a Max Compute Quota Plan resource.
///
///
///
/// For information about Max Compute Quota Plan and how to use it, see [What is Quota Plan](https://www.alibabacloud.com/help/en/).
///
/// &gt; **NOTE:** Available since v1.242.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const elasticReservedCu = config.get("elasticReservedCu") || "50";
/// const _default = new alicloud.maxcompute.QuotaPlan("default", {
///     nickname: "os_terrform_p",
///     quota: {
///         parameter: {
///             elasticReservedCu: elasticReservedCu,
///         },
///         subQuotaInfoLists: [
///             {
///                 nickName: "sub_quota",
///                 parameter: {
///                     minCu: 0,
///                     maxCu: 20,
///                     elasticReservedCu: elasticReservedCu,
///                 },
///             },
///             {
///                 nickName: "os_terrform",
///                 parameter: {
///                     minCu: 50,
///                     maxCu: 50,
///                     elasticReservedCu: 0,
///                 },
///             },
///         ],
///     },
///     planName: "quota_plan",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// elastic_reserved_cu = config.get("elasticReservedCu")
/// if elastic_reserved_cu is None:
///     elastic_reserved_cu = "50"
/// default = alicloud.maxcompute.QuotaPlan("default",
///     nickname="os_terrform_p",
///     quota={
///         "parameter": {
///             "elastic_reserved_cu": elastic_reserved_cu,
///         },
///         "sub_quota_info_lists": [
///             {
///                 "nick_name": "sub_quota",
///                 "parameter": {
///                     "min_cu": 0,
///                     "max_cu": 20,
///                     "elastic_reserved_cu": elastic_reserved_cu,
///                 },
///             },
///             {
///                 "nick_name": "os_terrform",
///                 "parameter": {
///                     "min_cu": 50,
///                     "max_cu": 50,
///                     "elastic_reserved_cu": 0,
///                 },
///             },
///         ],
///     },
///     plan_name="quota_plan")
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
///     var name = config.Get("name") ?? "terraform-example";
///     var elasticReservedCu = config.Get("elasticReservedCu") ?? "50";
///     var @default = new AliCloud.MaxCompute.QuotaPlan("default", new()
///     {
///         Nickname = "os_terrform_p",
///         Quota = new AliCloud.MaxCompute.Inputs.QuotaPlanQuotaArgs
///         {
///             Parameter = new AliCloud.MaxCompute.Inputs.QuotaPlanQuotaParameterArgs
///             {
///                 ElasticReservedCu = elasticReservedCu,
///             },
///             SubQuotaInfoLists = new[]
///             {
///                 new AliCloud.MaxCompute.Inputs.QuotaPlanQuotaSubQuotaInfoListArgs
///                 {
///                     NickName = "sub_quota",
///                     Parameter = new AliCloud.MaxCompute.Inputs.QuotaPlanQuotaSubQuotaInfoListParameterArgs
///                     {
///                         MinCu = 0,
///                         MaxCu = 20,
///                         ElasticReservedCu = elasticReservedCu,
///                     },
///                 },
///                 new AliCloud.MaxCompute.Inputs.QuotaPlanQuotaSubQuotaInfoListArgs
///                 {
///                     NickName = "os_terrform",
///                     Parameter = new AliCloud.MaxCompute.Inputs.QuotaPlanQuotaSubQuotaInfoListParameterArgs
///                     {
///                         MinCu = 50,
///                         MaxCu = 50,
///                         ElasticReservedCu = 0,
///                     },
///                 },
///             },
///         },
///         PlanName = "quota_plan",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		elasticReservedCu := "50"
/// 		if param := cfg.Get("elasticReservedCu"); param != "" {
/// 			elasticReservedCu = param
/// 		}
/// 		_, err := maxcompute.NewQuotaPlan(ctx, "default", &maxcompute.QuotaPlanArgs{
/// 			Nickname: pulumi.String("os_terrform_p"),
/// 			Quota: &maxcompute.QuotaPlanQuotaArgs{
/// 				Parameter: &maxcompute.QuotaPlanQuotaParameterArgs{
/// 					ElasticReservedCu: pulumi.String(elasticReservedCu),
/// 				},
/// 				SubQuotaInfoLists: maxcompute.QuotaPlanQuotaSubQuotaInfoListArray{
/// 					&maxcompute.QuotaPlanQuotaSubQuotaInfoListArgs{
/// 						NickName: pulumi.String("sub_quota"),
/// 						Parameter: &maxcompute.QuotaPlanQuotaSubQuotaInfoListParameterArgs{
/// 							MinCu:             pulumi.Int(0),
/// 							MaxCu:             pulumi.Int(20),
/// 							ElasticReservedCu: pulumi.String(elasticReservedCu),
/// 						},
/// 					},
/// 					&maxcompute.QuotaPlanQuotaSubQuotaInfoListArgs{
/// 						NickName: pulumi.String("os_terrform"),
/// 						Parameter: &maxcompute.QuotaPlanQuotaSubQuotaInfoListParameterArgs{
/// 							MinCu:             pulumi.Int(50),
/// 							MaxCu:             pulumi.Int(50),
/// 							ElasticReservedCu: pulumi.Int(0),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			PlanName: pulumi.String("quota_plan"),
/// 		})
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
/// import com.pulumi.alicloud.maxcompute.QuotaPlan;
/// import com.pulumi.alicloud.maxcompute.QuotaPlanArgs;
/// import com.pulumi.alicloud.maxcompute.inputs.QuotaPlanQuotaArgs;
/// import com.pulumi.alicloud.maxcompute.inputs.QuotaPlanQuotaParameterArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var elasticReservedCu = config.get("elasticReservedCu").orElse("50");
///         var default_ = new QuotaPlan("default", QuotaPlanArgs.builder()
///             .nickname("os_terrform_p")
///             .quota(QuotaPlanQuotaArgs.builder()
///                 .parameter(QuotaPlanQuotaParameterArgs.builder()
///                     .elasticReservedCu(elasticReservedCu)
///                     .build())
///                 .subQuotaInfoLists(
///                     QuotaPlanQuotaSubQuotaInfoListArgs.builder()
///                         .nickName("sub_quota")
///                         .parameter(QuotaPlanQuotaSubQuotaInfoListParameterArgs.builder()
///                             .minCu(0)
///                             .maxCu(20)
///                             .elasticReservedCu(elasticReservedCu)
///                             .build())
///                         .build(),
///                     QuotaPlanQuotaSubQuotaInfoListArgs.builder()
///                         .nickName("os_terrform")
///                         .parameter(QuotaPlanQuotaSubQuotaInfoListParameterArgs.builder()
///                             .minCu(50)
///                             .maxCu(50)
///                             .elasticReservedCu(0)
///                             .build())
///                         .build())
///                 .build())
///             .planName("quota_plan")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
///   elasticReservedCu:
///     type: string
///     default: '50'
/// resources:
///   default:
///     type: alicloud:maxcompute:QuotaPlan
///     properties:
///       nickname: os_terrform_p
///       quota:
///         parameter:
///           elasticReservedCu: ${elasticReservedCu}
///         subQuotaInfoLists:
///           - nickName: sub_quota
///             parameter:
///               minCu: '0'
///               maxCu: '20'
///               elasticReservedCu: ${elasticReservedCu}
///           - nickName: os_terrform
///             parameter:
///               minCu: '50'
///               maxCu: '50'
///               elasticReservedCu: '0'
///       planName: quota_plan
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Max Compute Quota Plan can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:maxcompute/quotaPlan:QuotaPlan example <nickname>:<plan_name>
/// ```
class QuotaPlan extends pulumi.CustomResource {
  /// Whether to take effect immediately. “Valid values: true”
  /// .&gt; **NOTE:** when other quota plans in the same quota group take effect, the effective quota group will become invalid. That is, IsEffective will become false. The effective quota plan cannot be deleted.
  late final pulumi.Output<bool?> isEffective;
  /// Quota Name
  late final pulumi.Output<String> nickname;
  /// The Quota plan name. Start with a letter, containing letters, numbers, and underscores (_). It is no more than 64 characters long.
  late final pulumi.Output<String> planName;
  /// Quota property See `quota` below.
  late final pulumi.Output<QuotaPlanQuota?> quota;

  /// Creates a new [QuotaPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QuotaPlan]. {@macro pulumi_maxcompute_quota_plan_quota_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QuotaPlan(
    String name, {
    QuotaPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:maxcompute/quotaPlan:QuotaPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    isEffective = registerOutput<bool?>('isEffective');
    nickname = registerOutput<String>('nickname');
    planName = registerOutput<String>('planName');
    quota = registerOutput<QuotaPlanQuota?>('quota', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QuotaPlanQuota.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [QuotaPlan] resource's state with the given [name] and [id].
  static QuotaPlan get(
    String name,
    pulumi.Input<String> id, {
    QuotaPlanState? state,
  }) {
    return QuotaPlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  QuotaPlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:maxcompute/quotaPlan:QuotaPlan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    isEffective = registerOutput<bool?>('isEffective');
    nickname = registerOutput<String>('nickname');
    planName = registerOutput<String>('planName');
    quota = registerOutput<QuotaPlanQuota?>('quota', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QuotaPlanQuota.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
