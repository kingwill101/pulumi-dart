import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_domain_routing_rule_args.dart';
import 'storage_domain_routing_rule_state.dart';

/// Provides a CR Storage Domain Routing Rule resource.
///
/// Instance Storage Domain Routing Rule.
///
/// For information about CR Storage Domain Routing Rule and how to use it, see [What is Storage Domain Routing Rule](https://next.api.alibabacloud.com/document/cr/2018-12-01/CreateStorageDomainRoutingRule).
///
/// &gt; **NOTE:** Available since v1.265.0.
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
/// const _default = new alicloud.cr.RegistryEnterpriseInstance("default", {
///     paymentType: "Subscription",
///     period: 1,
///     renewPeriod: 1,
///     renewalStatus: "AutoRenewal",
///     instanceType: "Advanced",
///     instanceName: name,
/// });
/// const defaultStorageDomainRoutingRule = new alicloud.cr.StorageDomainRoutingRule("default", {
///     routes: [{
///         instanceDomain: pulumi.interpolate`${_default.instanceName}-registry-vpc.cn-hangzhou.cr.aliyuncs.com`,
///         storageDomain: pulumi.interpolate`https://${_default.id}-registry.oss-cn-hangzhou-internal.aliyuncs.com`,
///         endpointType: "Internet",
///     }],
///     instanceId: _default.id,
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
/// default = alicloud.cr.RegistryEnterpriseInstance("default",
///     payment_type="Subscription",
///     period=1,
///     renew_period=1,
///     renewal_status="AutoRenewal",
///     instance_type="Advanced",
///     instance_name=name)
/// default_storage_domain_routing_rule = alicloud.cr.StorageDomainRoutingRule("default",
///     routes=[{
///         "instance_domain": default.instance_name.apply(lambda instance_name: f"{instance_name}-registry-vpc.cn-hangzhou.cr.aliyuncs.com"),
///         "storage_domain": default.id.apply(lambda id: f"https://{id}-registry.oss-cn-hangzhou-internal.aliyuncs.com"),
///         "endpoint_type": "Internet",
///     }],
///     instance_id=default.id)
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
///     var @default = new AliCloud.CR.RegistryEnterpriseInstance("default", new()
///     {
///         PaymentType = "Subscription",
///         Period = 1,
///         RenewPeriod = 1,
///         RenewalStatus = "AutoRenewal",
///         InstanceType = "Advanced",
///         InstanceName = name,
///     });
///
///     var defaultStorageDomainRoutingRule = new AliCloud.CR.StorageDomainRoutingRule("default", new()
///     {
///         Routes = new[]
///         {
///             new AliCloud.CR.Inputs.StorageDomainRoutingRuleRouteArgs
///             {
///                 InstanceDomain = @default.InstanceName.Apply(instanceName => $"{instanceName}-registry-vpc.cn-hangzhou.cr.aliyuncs.com"),
///                 StorageDomain = @default.Id.Apply(id => $"https://{id}-registry.oss-cn-hangzhou-internal.aliyuncs.com"),
///                 EndpointType = "Internet",
///             },
///         },
///         InstanceId = @default.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cr"
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
/// 		_default, err := cr.NewRegistryEnterpriseInstance(ctx, "default", &cr.RegistryEnterpriseInstanceArgs{
/// 			PaymentType:   pulumi.String("Subscription"),
/// 			Period:        pulumi.Int(1),
/// 			RenewPeriod:   pulumi.Int(1),
/// 			RenewalStatus: pulumi.String("AutoRenewal"),
/// 			InstanceType:  pulumi.String("Advanced"),
/// 			InstanceName:  pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cr.NewStorageDomainRoutingRule(ctx, "default", &cr.StorageDomainRoutingRuleArgs{
/// 			Routes: cr.StorageDomainRoutingRuleRouteArray{
/// 				&cr.StorageDomainRoutingRuleRouteArgs{
/// 					InstanceDomain: _default.InstanceName.ApplyT(func(instanceName string) (string, error) {
/// 						return fmt.Sprintf("%v-registry-vpc.cn-hangzhou.cr.aliyuncs.com", instanceName), nil
/// 					}).(pulumi.StringOutput),
/// 					StorageDomain: _default.ID().ApplyT(func(id string) (string, error) {
/// 						return fmt.Sprintf("https://%v-registry.oss-cn-hangzhou-internal.aliyuncs.com", id), nil
/// 					}).(pulumi.StringOutput),
/// 					EndpointType: pulumi.String("Internet"),
/// 				},
/// 			},
/// 			InstanceId: _default.ID(),
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
/// import com.pulumi.alicloud.cr.RegistryEnterpriseInstance;
/// import com.pulumi.alicloud.cr.RegistryEnterpriseInstanceArgs;
/// import com.pulumi.alicloud.cr.StorageDomainRoutingRule;
/// import com.pulumi.alicloud.cr.StorageDomainRoutingRuleArgs;
/// import com.pulumi.alicloud.cr.inputs.StorageDomainRoutingRuleRouteArgs;
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
///         var default_ = new RegistryEnterpriseInstance("default", RegistryEnterpriseInstanceArgs.builder()
///             .paymentType("Subscription")
///             .period(1)
///             .renewPeriod(1)
///             .renewalStatus("AutoRenewal")
///             .instanceType("Advanced")
///             .instanceName(name)
///             .build());
///
///         var defaultStorageDomainRoutingRule = new StorageDomainRoutingRule("defaultStorageDomainRoutingRule", StorageDomainRoutingRuleArgs.builder()
///             .routes(StorageDomainRoutingRuleRouteArgs.builder()
///                 .instanceDomain(default_.instanceName().applyValue(_instanceName -> String.format("%s-registry-vpc.cn-hangzhou.cr.aliyuncs.com", _instanceName)))
///                 .storageDomain(default_.id().applyValue(_id -> String.format("https://%s-registry.oss-cn-hangzhou-internal.aliyuncs.com", _id)))
///                 .endpointType("Internet")
///                 .build())
///             .instanceId(default_.id())
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
/// resources:
///   default:
///     type: alicloud:cr:RegistryEnterpriseInstance
///     properties:
///       paymentType: Subscription
///       period: 1
///       renewPeriod: 1
///       renewalStatus: AutoRenewal
///       instanceType: Advanced
///       instanceName: ${name}
///   defaultStorageDomainRoutingRule:
///     type: alicloud:cr:StorageDomainRoutingRule
///     name: default
///     properties:
///       routes:
///         - instanceDomain: ${default.instanceName}-registry-vpc.cn-hangzhou.cr.aliyuncs.com
///           storageDomain: https://${default.id}-registry.oss-cn-hangzhou-internal.aliyuncs.com
///           endpointType: Internet
///       instanceId: ${default.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CR Storage Domain Routing Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cr/storageDomainRoutingRule:StorageDomainRoutingRule example <instance_id>:<rule_id>
/// ```
class StorageDomainRoutingRule extends pulumi.CustomResource {
  /// The creation time of the resource.
  late final pulumi.Output<int> createTime;
  /// The ID of the Container Registry Instance.
  late final pulumi.Output<String> instanceId;
  /// Domain name routing entry See `routes` below.
  late final pulumi.Output<List<Map<String, dynamic>>> routes;
  /// The ID of the Rule.
  late final pulumi.Output<String> ruleId;

  /// Creates a new [StorageDomainRoutingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageDomainRoutingRule]. {@macro pulumi_cr_storage_domain_routing_rule_storage_domain_routing_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageDomainRoutingRule(
    String name, {
    StorageDomainRoutingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cr/storageDomainRoutingRule:StorageDomainRoutingRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<int>('createTime');
    instanceId = registerOutput<String>('instanceId');
    routes = registerOutput<List<Map<String, dynamic>>>('routes');
    ruleId = registerOutput<String>('ruleId');
  }

  /// Gets an existing [StorageDomainRoutingRule] resource's state with the given [name] and [id].
  static StorageDomainRoutingRule get(
    String name,
    pulumi.Input<String> id, {
    StorageDomainRoutingRuleState? state,
  }) {
    return StorageDomainRoutingRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StorageDomainRoutingRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cr/storageDomainRoutingRule:StorageDomainRoutingRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<int>('createTime');
    instanceId = registerOutput<String>('instanceId');
    routes = registerOutput<List<Map<String, dynamic>>>('routes');
    ruleId = registerOutput<String>('ruleId');
  }
}
