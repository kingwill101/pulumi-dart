import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_group_args.dart';
import 'app_group_quota.dart';
import 'app_group_state.dart';

/// Provides a Open Search App Group resource.
///
/// For information about Open Search App Group and how to use it, see [What is App Group](https://www.aliyun.com/product/opensearch).
///
/// &gt; **NOTE:** Available in v1.136.0+.
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
/// const name = config.get("name") || "name";
/// const _default = new alicloud.opensearch.AppGroup("default", {
///     appGroupName: name,
///     paymentType: "PayAsYouGo",
///     type: "standard",
///     quota: {
///         docSize: 1,
///         computeResource: 20,
///         spec: "opensearch.share.common",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "name"
/// default = alicloud.opensearch.AppGroup("default",
///     app_group_name=name,
///     payment_type="PayAsYouGo",
///     type="standard",
///     quota={
///         "doc_size": 1,
///         "compute_resource": 20,
///         "spec": "opensearch.share.common",
///     })
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
///     var name = config.Get("name") ?? "name";
///     var @default = new AliCloud.OpenSearch.AppGroup("default", new()
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
/// 		name := "name"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := opensearch.NewAppGroup(ctx, "default", &opensearch.AppGroupArgs{
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
///         final var name = config.get("name").orElse("name");
///         var default_ = new AppGroup("default", AppGroupArgs.builder()
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
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: name
/// resources:
///   default:
///     type: alicloud:opensearch:AppGroup
///     properties:
///       appGroupName: ${name}
///       paymentType: PayAsYouGo
///       type: standard
///       quota:
///         docSize: 1
///         computeResource: 20
///         spec: opensearch.share.common
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Open Search App Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:opensearch/appGroup:AppGroup example <id>
/// ```
class AppGroup extends pulumi.CustomResource {
  /// Application Group Name.
  late final pulumi.Output<String> appGroupName;
  /// Billing model. Valid values:`compute_resource` and `qps`.
  late final pulumi.Output<String> chargeWay;
  /// The version of Application Group Name.
  late final pulumi.Output<String?> currentVersion;
  /// The description of the resource.
  late final pulumi.Output<String?> description;
  /// The instance id.
  late final pulumi.Output<String> instanceId;
  /// Order change type. Valid values: `UPGRADE` and `DOWNGRADE`.
  late final pulumi.Output<String> orderType;
  /// Order cycle information. The details see Block order.
  late final pulumi.Output<List<Map<String, dynamic>>?> orders;
  /// The billing method of the resource. Valid values: `Subscription` and `PayAsYouGo`.
  late final pulumi.Output<String> paymentType;
  /// Quota information.  The details see Block quota.
  late final pulumi.Output<AppGroupQuota> quota;
  /// The status of the resource. Valid values: `producing`,`review_pending`,`config_pending`,`normal`,`frozen`.
  late final pulumi.Output<String> status;
  /// Application type. Valid Values: `standard`, `enhanced`.
  late final pulumi.Output<String> type;

  /// Creates a new [AppGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppGroup]. {@macro pulumi_opensearch_app_group_app_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppGroup(
    String name, {
    AppGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:opensearch/appGroup:AppGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appGroupName = registerOutput<String>('appGroupName');
    chargeWay = registerOutput<String>('chargeWay');
    currentVersion = registerOutput<String?>('currentVersion');
    description = registerOutput<String?>('description');
    instanceId = registerOutput<String>('instanceId');
    orderType = registerOutput<String>('orderType');
    orders = registerOutput<List<Map<String, dynamic>>?>('orders');
    paymentType = registerOutput<String>('paymentType');
    quota = registerOutput<AppGroupQuota>('quota', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppGroupQuota.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [AppGroup] resource's state with the given [name] and [id].
  static AppGroup get(
    String name,
    pulumi.Input<String> id, {
    AppGroupState? state,
  }) {
    return AppGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:opensearch/appGroup:AppGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appGroupName = registerOutput<String>('appGroupName');
    chargeWay = registerOutput<String>('chargeWay');
    currentVersion = registerOutput<String?>('currentVersion');
    description = registerOutput<String?>('description');
    instanceId = registerOutput<String>('instanceId');
    orderType = registerOutput<String>('orderType');
    orders = registerOutput<List<Map<String, dynamic>>?>('orders');
    paymentType = registerOutput<String>('paymentType');
    quota = registerOutput<AppGroupQuota>('quota', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppGroupQuota.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
  }
}
