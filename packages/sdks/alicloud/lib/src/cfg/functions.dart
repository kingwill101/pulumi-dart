import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aggregate_compliance_packs_args.dart';
import 'get_aggregate_compliance_packs_result.dart';
import 'get_aggregate_config_rules_args.dart';
import 'get_aggregate_config_rules_result.dart';
import 'get_aggregate_deliveries_args.dart';
import 'get_aggregate_deliveries_result.dart';
import 'get_aggregators_args.dart';
import 'get_aggregators_result.dart';
import 'get_compliance_packs_args.dart';
import 'get_compliance_packs_result.dart';
import 'get_configuration_recorders_args.dart';
import 'get_configuration_recorders_result.dart';
import 'get_deliveries_args.dart';
import 'get_deliveries_result.dart';
import 'get_delivery_channels_args.dart';
import 'get_delivery_channels_result.dart';
import 'get_rules_args.dart';
import 'get_rules_result.dart';

/// This data source provides the Config Aggregate Compliance Packs of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.124.0.
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
/// const example = alicloud.cfg.getAggregateCompliancePacks({
///     aggregatorId: "ca-3a9b626622af001d****",
///     ids: ["cp-152a626622af00bc****"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstConfigAggregateCompliancePackId = example.then(example => example.packs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cfg.get_aggregate_compliance_packs(aggregator_id="ca-3a9b626622af001d****",
///     ids=["cp-152a626622af00bc****"],
///     name_regex="the_resource_name")
/// pulumi.export("firstConfigAggregateCompliancePackId", example.packs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Cfg.GetAggregateCompliancePacks.Invoke(new()
///     {
///         AggregatorId = "ca-3a9b626622af001d****",
///         Ids = new[]
///         {
///             "cp-152a626622af00bc****",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstConfigAggregateCompliancePackId"] = example.Apply(getAggregateCompliancePacksResult => getAggregateCompliancePacksResult.Packs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cfg.GetAggregateCompliancePacks(ctx, &cfg.GetAggregateCompliancePacksArgs{
/// 			AggregatorId: "ca-3a9b626622af001d****",
/// 			Ids: []string{
/// 				"cp-152a626622af00bc****",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstConfigAggregateCompliancePackId", example.Packs[0].Id)
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
/// import com.pulumi.alicloud.cfg.CfgFunctions;
/// import com.pulumi.alicloud.cfg.inputs.GetAggregateCompliancePacksArgs;
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
///         final var example = CfgFunctions.getAggregateCompliancePacks(GetAggregateCompliancePacksArgs.builder()
///             .aggregatorId("ca-3a9b626622af001d****")
///             .ids("cp-152a626622af00bc****")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstConfigAggregateCompliancePackId", example.packs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cfg:getAggregateCompliancePacks
///       arguments:
///         aggregatorId: ca-3a9b626622af001d****
///         ids:
///           - cp-152a626622af00bc****
///         nameRegex: the_resource_name
/// outputs:
///   firstConfigAggregateCompliancePackId: ${example.packs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cfg_get_aggregate_compliance_packs_get_aggregate_compliance_packs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAggregateCompliancePacksResult> getAggregateCompliancePacks(
  GetAggregateCompliancePacksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cfg/getAggregateCompliancePacks:getAggregateCompliancePacks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAggregateCompliancePacksResult.fromMap(result);
}

/// This data source provides the Config Aggregate Config Rules of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.124.0.
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
/// const example = alicloud.cfg.getAggregateConfigRules({
///     aggregatorId: "ca-3a9b626622af001d****",
///     ids: ["cr-5154626622af0034****"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstConfigAggregateConfigRuleId = example.then(example => example.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cfg.get_aggregate_config_rules(aggregator_id="ca-3a9b626622af001d****",
///     ids=["cr-5154626622af0034****"],
///     name_regex="the_resource_name")
/// pulumi.export("firstConfigAggregateConfigRuleId", example.rules[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Cfg.GetAggregateConfigRules.Invoke(new()
///     {
///         AggregatorId = "ca-3a9b626622af001d****",
///         Ids = new[]
///         {
///             "cr-5154626622af0034****",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstConfigAggregateConfigRuleId"] = example.Apply(getAggregateConfigRulesResult => getAggregateConfigRulesResult.Rules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cfg.GetAggregateConfigRules(ctx, &cfg.GetAggregateConfigRulesArgs{
/// 			AggregatorId: "ca-3a9b626622af001d****",
/// 			Ids: []string{
/// 				"cr-5154626622af0034****",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstConfigAggregateConfigRuleId", example.Rules[0].Id)
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
/// import com.pulumi.alicloud.cfg.CfgFunctions;
/// import com.pulumi.alicloud.cfg.inputs.GetAggregateConfigRulesArgs;
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
///         final var example = CfgFunctions.getAggregateConfigRules(GetAggregateConfigRulesArgs.builder()
///             .aggregatorId("ca-3a9b626622af001d****")
///             .ids("cr-5154626622af0034****")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstConfigAggregateConfigRuleId", example.rules()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cfg:getAggregateConfigRules
///       arguments:
///         aggregatorId: ca-3a9b626622af001d****
///         ids:
///           - cr-5154626622af0034****
///         nameRegex: the_resource_name
/// outputs:
///   firstConfigAggregateConfigRuleId: ${example.rules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cfg_get_aggregate_config_rules_get_aggregate_config_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAggregateConfigRulesResult> getAggregateConfigRules(
  GetAggregateConfigRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cfg/getAggregateConfigRules:getAggregateConfigRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAggregateConfigRulesResult.fromMap(result);
}

/// This data source provides the Config Aggregate Deliveries of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.172.0.
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
/// const ids = alicloud.cfg.getAggregateDeliveries({
///     aggregatorId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const configAggregateDeliveryId1 = ids.then(ids => ids.deliveries?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cfg.get_aggregate_deliveries(aggregator_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("configAggregateDeliveryId1", ids.deliveries[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Cfg.GetAggregateDeliveries.Invoke(new()
///     {
///         AggregatorId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["configAggregateDeliveryId1"] = ids.Apply(getAggregateDeliveriesResult => getAggregateDeliveriesResult.Deliveries[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cfg.GetAggregateDeliveries(ctx, &cfg.GetAggregateDeliveriesArgs{
/// 			AggregatorId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("configAggregateDeliveryId1", ids.Deliveries[0].Id)
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
/// import com.pulumi.alicloud.cfg.CfgFunctions;
/// import com.pulumi.alicloud.cfg.inputs.GetAggregateDeliveriesArgs;
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
///         final var ids = CfgFunctions.getAggregateDeliveries(GetAggregateDeliveriesArgs.builder()
///             .aggregatorId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("configAggregateDeliveryId1", ids.deliveries()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cfg:getAggregateDeliveries
///       arguments:
///         aggregatorId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
/// outputs:
///   configAggregateDeliveryId1: ${ids.deliveries[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cfg_get_aggregate_deliveries_get_aggregate_deliveries_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAggregateDeliveriesResult> getAggregateDeliveries(
  GetAggregateDeliveriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cfg/getAggregateDeliveries:getAggregateDeliveries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAggregateDeliveriesResult.fromMap(result);
}

/// This data source provides the Config Aggregators of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.124.0.
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
/// const example = alicloud.cfg.getAggregators({
///     ids: ["ca-3ce2626622af0005****"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstConfigAggregatorId = example.then(example => example.aggregators?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cfg.get_aggregators(ids=["ca-3ce2626622af0005****"],
///     name_regex="the_resource_name")
/// pulumi.export("firstConfigAggregatorId", example.aggregators[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Cfg.GetAggregators.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "ca-3ce2626622af0005****",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstConfigAggregatorId"] = example.Apply(getAggregatorsResult => getAggregatorsResult.Aggregators[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cfg.GetAggregators(ctx, &cfg.GetAggregatorsArgs{
/// 			Ids: []string{
/// 				"ca-3ce2626622af0005****",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstConfigAggregatorId", example.Aggregators[0].Id)
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
/// import com.pulumi.alicloud.cfg.CfgFunctions;
/// import com.pulumi.alicloud.cfg.inputs.GetAggregatorsArgs;
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
///         final var example = CfgFunctions.getAggregators(GetAggregatorsArgs.builder()
///             .ids("ca-3ce2626622af0005****")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstConfigAggregatorId", example.aggregators()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cfg:getAggregators
///       arguments:
///         ids:
///           - ca-3ce2626622af0005****
///         nameRegex: the_resource_name
/// outputs:
///   firstConfigAggregatorId: ${example.aggregators[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cfg_get_aggregators_get_aggregators_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAggregatorsResult> getAggregators(
  GetAggregatorsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cfg/getAggregators:getAggregators',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAggregatorsResult.fromMap(result);
}

/// This data source provides the Config Compliance Packs of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.124.0.
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
/// const example = alicloud.cfg.getCompliancePacks({
///     ids: ["cp-152a626622af00bc****"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstConfigCompliancePackId = example.then(example => example.packs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cfg.get_compliance_packs(ids=["cp-152a626622af00bc****"],
///     name_regex="the_resource_name")
/// pulumi.export("firstConfigCompliancePackId", example.packs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Cfg.GetCompliancePacks.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "cp-152a626622af00bc****",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstConfigCompliancePackId"] = example.Apply(getCompliancePacksResult => getCompliancePacksResult.Packs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cfg.GetCompliancePacks(ctx, &cfg.GetCompliancePacksArgs{
/// 			Ids: []string{
/// 				"cp-152a626622af00bc****",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstConfigCompliancePackId", example.Packs[0].Id)
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
/// import com.pulumi.alicloud.cfg.CfgFunctions;
/// import com.pulumi.alicloud.cfg.inputs.GetCompliancePacksArgs;
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
///         final var example = CfgFunctions.getCompliancePacks(GetCompliancePacksArgs.builder()
///             .ids("cp-152a626622af00bc****")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstConfigCompliancePackId", example.packs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cfg:getCompliancePacks
///       arguments:
///         ids:
///           - cp-152a626622af00bc****
///         nameRegex: the_resource_name
/// outputs:
///   firstConfigCompliancePackId: ${example.packs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cfg_get_compliance_packs_get_compliance_packs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCompliancePacksResult> getCompliancePacks(
  GetCompliancePacksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cfg/getCompliancePacks:getCompliancePacks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCompliancePacksResult.fromMap(result);
}

/// This data source provides the Config Configuration Recorders of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.99.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.cfg.getConfigurationRecorders({});
/// export const listOfResourceTypes = _this.recorders[0].resourceTypes;
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cfg.get_configuration_recorders()
/// pulumi.export("listOfResourceTypes", this["recorders"][0]["resourceTypes"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Cfg.GetConfigurationRecorders.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["listOfResourceTypes"] = @this.Recorders[0].ResourceTypes,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cfg.GetConfigurationRecorders(ctx, &cfg.GetConfigurationRecordersArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("listOfResourceTypes", this.Recorders[0].ResourceTypes)
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
/// import com.pulumi.alicloud.cfg.CfgFunctions;
/// import com.pulumi.alicloud.cfg.inputs.GetConfigurationRecordersArgs;
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
///         final var example = CfgFunctions.getConfigurationRecorders(GetConfigurationRecordersArgs.builder()
///             .build());
///
///         ctx.export("listOfResourceTypes", this_.recorders()[0].resourceTypes());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cfg:getConfigurationRecorders
///       arguments: {}
/// outputs:
///   listOfResourceTypes: ${this.recorders[0].resourceTypes}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cfg_get_configuration_recorders_get_configuration_recorders_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationRecordersResult> getConfigurationRecorders(
  GetConfigurationRecordersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cfg/getConfigurationRecorders:getConfigurationRecorders',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationRecordersResult.fromMap(result);
}

/// This data source provides the Config Deliveries of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.171.0.
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
/// const ids = alicloud.cfg.getDeliveries({
///     ids: ["example_id"],
/// });
/// export const configDeliveryId1 = ids.then(ids => ids.deliveries?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cfg.get_deliveries(ids=["example_id"])
/// pulumi.export("configDeliveryId1", ids.deliveries[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Cfg.GetDeliveries.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["configDeliveryId1"] = ids.Apply(getDeliveriesResult => getDeliveriesResult.Deliveries[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cfg.GetDeliveries(ctx, &cfg.GetDeliveriesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("configDeliveryId1", ids.Deliveries[0].Id)
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
/// import com.pulumi.alicloud.cfg.CfgFunctions;
/// import com.pulumi.alicloud.cfg.inputs.GetDeliveriesArgs;
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
///         final var ids = CfgFunctions.getDeliveries(GetDeliveriesArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("configDeliveryId1", ids.deliveries()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cfg:getDeliveries
///       arguments:
///         ids:
///           - example_id
/// outputs:
///   configDeliveryId1: ${ids.deliveries[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cfg_get_deliveries_get_deliveries_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeliveriesResult> getDeliveries(
  GetDeliveriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cfg/getDeliveries:getDeliveries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeliveriesResult.fromMap(result);
}

/// &gt; **DEPRECATED:**  This resource is based on Config's old version OpenAPI, and it has been deprecated from version `1.173.0`.
/// Please use new datasource alicloud.cfg.getDeliveries instead.
///
/// This data source provides the Config Delivery Channels of the current Alibaba Cloud user.
///
/// &gt; **NOTE:**  Available in 1.99.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.cfg.getDeliveryChannels({
///     ids: ["cdc-49a2ad756057********"],
///     nameRegex: "tftest",
/// });
/// export const firstConfigDeliveryChannelId = example.then(example => example.channels?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cfg.get_delivery_channels(ids=["cdc-49a2ad756057********"],
///     name_regex="tftest")
/// pulumi.export("firstConfigDeliveryChannelId", example.channels[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Cfg.GetDeliveryChannels.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "cdc-49a2ad756057********",
///         },
///         NameRegex = "tftest",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstConfigDeliveryChannelId"] = example.Apply(getDeliveryChannelsResult => getDeliveryChannelsResult.Channels[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cfg.GetDeliveryChannels(ctx, &cfg.GetDeliveryChannelsArgs{
/// 			Ids: []string{
/// 				"cdc-49a2ad756057********",
/// 			},
/// 			NameRegex: pulumi.StringRef("tftest"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstConfigDeliveryChannelId", example.Channels[0].Id)
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
/// import com.pulumi.alicloud.cfg.CfgFunctions;
/// import com.pulumi.alicloud.cfg.inputs.GetDeliveryChannelsArgs;
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
///         final var example = CfgFunctions.getDeliveryChannels(GetDeliveryChannelsArgs.builder()
///             .ids("cdc-49a2ad756057********")
///             .nameRegex("tftest")
///             .build());
///
///         ctx.export("firstConfigDeliveryChannelId", example.channels()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cfg:getDeliveryChannels
///       arguments:
///         ids:
///           - cdc-49a2ad756057********
///         nameRegex: tftest
/// outputs:
///   firstConfigDeliveryChannelId: ${example.channels[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cfg_get_delivery_channels_get_delivery_channels_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeliveryChannelsResult> getDeliveryChannels(
  GetDeliveryChannelsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cfg/getDeliveryChannels:getDeliveryChannels',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeliveryChannelsResult.fromMap(result);
}

/// This data source provides the Config Rules of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.99.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.cfg.getRules({
///     ids: ["cr-ed4bad756057********"],
///     nameRegex: "tftest",
/// });
/// export const firstConfigRuleId = example.then(example => example.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cfg.get_rules(ids=["cr-ed4bad756057********"],
///     name_regex="tftest")
/// pulumi.export("firstConfigRuleId", example.rules[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Cfg.GetRules.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "cr-ed4bad756057********",
///         },
///         NameRegex = "tftest",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstConfigRuleId"] = example.Apply(getRulesResult => getRulesResult.Rules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cfg.GetRules(ctx, &cfg.GetRulesArgs{
/// 			Ids: []string{
/// 				"cr-ed4bad756057********",
/// 			},
/// 			NameRegex: pulumi.StringRef("tftest"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstConfigRuleId", example.Rules[0].Id)
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
/// import com.pulumi.alicloud.cfg.CfgFunctions;
/// import com.pulumi.alicloud.cfg.inputs.GetRulesArgs;
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
///         final var example = CfgFunctions.getRules(GetRulesArgs.builder()
///             .ids("cr-ed4bad756057********")
///             .nameRegex("tftest")
///             .build());
///
///         ctx.export("firstConfigRuleId", example.rules()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cfg:getRules
///       arguments:
///         ids:
///           - cr-ed4bad756057********
///         nameRegex: tftest
/// outputs:
///   firstConfigRuleId: ${example.rules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cfg_get_rules_get_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRulesResult> getRules(
  GetRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cfg/getRules:getRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRulesResult.fromMap(result);
}
