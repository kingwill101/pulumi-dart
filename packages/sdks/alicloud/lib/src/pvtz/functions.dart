import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoints_args.dart';
import 'get_endpoints_result.dart';
import 'get_resolver_zones_args.dart';
import 'get_resolver_zones_result.dart';
import 'get_rules_args.dart';
import 'get_rules_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_zone_records_args.dart';
import 'get_zone_records_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides the Pvtz Endpoints of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.143.0+.
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
/// const ids = alicloud.pvtz.getEndpoints({
///     ids: ["example_id"],
/// });
/// export const pvtzEndpointId1 = ids.then(ids => ids.endpoints?.[0]?.id);
/// const nameRegex = alicloud.pvtz.getEndpoints({
///     nameRegex: "^my-Endpoint",
/// });
/// export const pvtzEndpointId2 = nameRegex.then(nameRegex => nameRegex.endpoints?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.pvtz.get_endpoints(ids=["example_id"])
/// pulumi.export("pvtzEndpointId1", ids.endpoints[0].id)
/// name_regex = alicloud.pvtz.get_endpoints(name_regex="^my-Endpoint")
/// pulumi.export("pvtzEndpointId2", name_regex.endpoints[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Pvtz.GetEndpoints.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Pvtz.GetEndpoints.Invoke(new()
///     {
///         NameRegex = "^my-Endpoint",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["pvtzEndpointId1"] = ids.Apply(getEndpointsResult => getEndpointsResult.Endpoints[0]?.Id),
///         ["pvtzEndpointId2"] = nameRegex.Apply(getEndpointsResult => getEndpointsResult.Endpoints[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pvtz"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := pvtz.GetEndpoints(ctx, &pvtz.GetEndpointsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("pvtzEndpointId1", ids.Endpoints[0].Id)
/// 		nameRegex, err := pvtz.GetEndpoints(ctx, &pvtz.GetEndpointsArgs{
/// 			NameRegex: pulumi.StringRef("^my-Endpoint"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("pvtzEndpointId2", nameRegex.Endpoints[0].Id)
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
/// import com.pulumi.alicloud.pvtz.PvtzFunctions;
/// import com.pulumi.alicloud.pvtz.inputs.GetEndpointsArgs;
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
///         final var ids = PvtzFunctions.getEndpoints(GetEndpointsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("pvtzEndpointId1", ids.endpoints()[0].id());
///         final var nameRegex = PvtzFunctions.getEndpoints(GetEndpointsArgs.builder()
///             .nameRegex("^my-Endpoint")
///             .build());
///
///         ctx.export("pvtzEndpointId2", nameRegex.endpoints()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:pvtz:getEndpoints
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:pvtz:getEndpoints
///       arguments:
///         nameRegex: ^my-Endpoint
/// outputs:
///   pvtzEndpointId1: ${ids.endpoints[0].id}
///   pvtzEndpointId2: ${nameRegex.endpoints[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_pvtz_get_endpoints_get_endpoints_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointsResult> getEndpoints(
  GetEndpointsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:pvtz/getEndpoints:getEndpoints',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointsResult.fromMap(result);
}

/// This data source provides the available zones with the Private Zone Resolver of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.143.0+.
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
/// const _default = alicloud.pvtz.getResolverZones({
///     status: "NORMAL",
/// });
/// export const firstZonesId = _default.then(_default => _default.zones?.[0]?.zoneId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.pvtz.get_resolver_zones(status="NORMAL")
/// pulumi.export("firstZonesId", default.zones[0].zone_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Pvtz.GetResolverZones.Invoke(new()
///     {
///         Status = "NORMAL",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstZonesId"] = @default.Apply(@default => @default.Apply(getResolverZonesResult => getResolverZonesResult.Zones[0]?.ZoneId)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pvtz"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := pvtz.GetResolverZones(ctx, &pvtz.GetResolverZonesArgs{
/// 			Status: pulumi.StringRef("NORMAL"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstZonesId", _default.Zones[0].ZoneId)
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
/// import com.pulumi.alicloud.pvtz.PvtzFunctions;
/// import com.pulumi.alicloud.pvtz.inputs.GetResolverZonesArgs;
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
///         final var default = PvtzFunctions.getResolverZones(GetResolverZonesArgs.builder()
///             .status("NORMAL")
///             .build());
///
///         ctx.export("firstZonesId", default_.zones()[0].zoneId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:pvtz:getResolverZones
///       arguments:
///         status: NORMAL
/// outputs:
///   firstZonesId: ${default.zones[0].zoneId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_pvtz_get_resolver_zones_get_resolver_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResolverZonesResult> getResolverZones(
  GetResolverZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:pvtz/getResolverZones:getResolverZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverZonesResult.fromMap(result);
}

/// This data source provides the PrivateZone Rules of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.143.0+.
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
/// const ids = alicloud.pvtz.getRules({});
/// export const pvtzRuleId1 = ids.then(ids => ids.rules?.[0]?.id);
/// const nameRegex = alicloud.pvtz.getRules({
///     nameRegex: "^my-Rule",
/// });
/// export const pvtzRuleId2 = nameRegex.then(nameRegex => nameRegex.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.pvtz.get_rules()
/// pulumi.export("pvtzRuleId1", ids.rules[0].id)
/// name_regex = alicloud.pvtz.get_rules(name_regex="^my-Rule")
/// pulumi.export("pvtzRuleId2", name_regex.rules[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Pvtz.GetRules.Invoke();
///
///     var nameRegex = AliCloud.Pvtz.GetRules.Invoke(new()
///     {
///         NameRegex = "^my-Rule",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["pvtzRuleId1"] = ids.Apply(getRulesResult => getRulesResult.Rules[0]?.Id),
///         ["pvtzRuleId2"] = nameRegex.Apply(getRulesResult => getRulesResult.Rules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pvtz"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := pvtz.GetRules(ctx, &pvtz.GetRulesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("pvtzRuleId1", ids.Rules[0].Id)
/// 		nameRegex, err := pvtz.GetRules(ctx, &pvtz.GetRulesArgs{
/// 			NameRegex: pulumi.StringRef("^my-Rule"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("pvtzRuleId2", nameRegex.Rules[0].Id)
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
/// import com.pulumi.alicloud.pvtz.PvtzFunctions;
/// import com.pulumi.alicloud.pvtz.inputs.GetRulesArgs;
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
///         final var ids = PvtzFunctions.getRules(GetRulesArgs.builder()
///             .build());
///
///         ctx.export("pvtzRuleId1", ids.rules()[0].id());
///         final var nameRegex = PvtzFunctions.getRules(GetRulesArgs.builder()
///             .nameRegex("^my-Rule")
///             .build());
///
///         ctx.export("pvtzRuleId2", nameRegex.rules()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:pvtz:getRules
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:pvtz:getRules
///       arguments:
///         nameRegex: ^my-Rule
/// outputs:
///   pvtzRuleId1: ${ids.rules[0].id}
///   pvtzRuleId2: ${nameRegex.rules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_pvtz_get_rules_get_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRulesResult> getRules(
  GetRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:pvtz/getRules:getRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRulesResult.fromMap(result);
}

/// Using this data source can open Private Zone service automatically. If the service has been opened, it will return opened.
///
/// For information about Private Zone and how to use it, see [What is Private Zone](https://www.alibabacloud.com/help/en/product/64583.htm).
///
/// &gt; **NOTE:** Available since v1.114.0.
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
/// const _default = alicloud.pvtz.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.pvtz.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Pvtz.GetService.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pvtz"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pvtz.GetService(ctx, &pvtz.GetServiceArgs{
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
/// import com.pulumi.alicloud.pvtz.PvtzFunctions;
/// import com.pulumi.alicloud.pvtz.inputs.GetServiceArgs;
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
///         final var default = PvtzFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:pvtz:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_pvtz_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:pvtz/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// This data source provides the Private Zone Records of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.13.0.
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
/// const name = config.get("name") || "terraform-example.com";
/// const _default = new alicloud.pvtz.Zone("default", {zoneName: name});
/// const defaultZoneRecord = new alicloud.pvtz.ZoneRecord("default", {
///     zoneId: _default.id,
///     rr: "www",
///     type: "MX",
///     value: name,
///     ttl: 60,
///     priority: 2,
///     remark: name,
/// });
/// const ids = alicloud.pvtz.getZoneRecordsOutput({
///     zoneId: defaultZoneRecord.zoneId,
///     ids: [defaultZoneRecord.recordId],
/// });
/// export const pvtzZoneRecordsId0 = ids.apply(ids => ids.records?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example.com"
/// default = alicloud.pvtz.Zone("default", zone_name=name)
/// default_zone_record = alicloud.pvtz.ZoneRecord("default",
///     zone_id=default.id,
///     rr="www",
///     type="MX",
///     value=name,
///     ttl=60,
///     priority=2,
///     remark=name)
/// ids = alicloud.pvtz.get_zone_records_output(zone_id=default_zone_record.zone_id,
///     ids=[default_zone_record.record_id])
/// pulumi.export("pvtzZoneRecordsId0", ids.records[0].id)
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
///     var name = config.Get("name") ?? "terraform-example.com";
///     var @default = new AliCloud.Pvtz.Zone("default", new()
///     {
///         ZoneName = name,
///     });
///
///     var defaultZoneRecord = new AliCloud.Pvtz.ZoneRecord("default", new()
///     {
///         ZoneId = @default.Id,
///         Rr = "www",
///         Type = "MX",
///         Value = name,
///         Ttl = 60,
///         Priority = 2,
///         Remark = name,
///     });
///
///     var ids = AliCloud.Pvtz.GetZoneRecords.Invoke(new()
///     {
///         ZoneId = defaultZoneRecord.ZoneId,
///         Ids = new[]
///         {
///             defaultZoneRecord.RecordId,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["pvtzZoneRecordsId0"] = ids.Apply(getZoneRecordsResult => getZoneRecordsResult.Records[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pvtz"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example.com"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := pvtz.NewZone(ctx, "default", &pvtz.ZoneArgs{
/// 			ZoneName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultZoneRecord, err := pvtz.NewZoneRecord(ctx, "default", &pvtz.ZoneRecordArgs{
/// 			ZoneId:   _default.ID(),
/// 			Rr:       pulumi.String("www"),
/// 			Type:     pulumi.String("MX"),
/// 			Value:    pulumi.String(name),
/// 			Ttl:      pulumi.Int(60),
/// 			Priority: pulumi.Int(2),
/// 			Remark:   pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := pvtz.GetZoneRecordsOutput(ctx, pvtz.GetZoneRecordsOutputArgs{
/// 			ZoneId: defaultZoneRecord.ZoneId,
/// 			Ids: pulumi.StringArray{
/// 				defaultZoneRecord.RecordId,
/// 			},
/// 		}, nil)
/// 		ctx.Export("pvtzZoneRecordsId0", ids.ApplyT(func(ids pvtz.GetZoneRecordsResult) (*string, error) {
/// 			return &ids.Records[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.pvtz.Zone;
/// import com.pulumi.alicloud.pvtz.ZoneArgs;
/// import com.pulumi.alicloud.pvtz.ZoneRecord;
/// import com.pulumi.alicloud.pvtz.ZoneRecordArgs;
/// import com.pulumi.alicloud.pvtz.PvtzFunctions;
/// import com.pulumi.alicloud.pvtz.inputs.GetZoneRecordsArgs;
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
///         final var name = config.get("name").orElse("terraform-example.com");
///         var default_ = new Zone("default", ZoneArgs.builder()
///             .zoneName(name)
///             .build());
///
///         var defaultZoneRecord = new ZoneRecord("defaultZoneRecord", ZoneRecordArgs.builder()
///             .zoneId(default_.id())
///             .rr("www")
///             .type("MX")
///             .value(name)
///             .ttl(60)
///             .priority(2)
///             .remark(name)
///             .build());
///
///         final var ids = PvtzFunctions.getZoneRecords(GetZoneRecordsArgs.builder()
///             .zoneId(defaultZoneRecord.zoneId())
///             .ids(defaultZoneRecord.recordId())
///             .build());
///
///         ctx.export("pvtzZoneRecordsId0", ids.applyValue(_ids -> _ids.records()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example.com
/// resources:
///   default:
///     type: alicloud:pvtz:Zone
///     properties:
///       zoneName: ${name}
///   defaultZoneRecord:
///     type: alicloud:pvtz:ZoneRecord
///     name: default
///     properties:
///       zoneId: ${default.id}
///       rr: www
///       type: MX
///       value: ${name}
///       ttl: '60'
///       priority: 2
///       remark: ${name}
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:pvtz:getZoneRecords
///       arguments:
///         zoneId: ${defaultZoneRecord.zoneId}
///         ids:
///           - ${defaultZoneRecord.recordId}
/// outputs:
///   pvtzZoneRecordsId0: ${ids.records[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_pvtz_get_zone_records_get_zone_records_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZoneRecordsResult> getZoneRecords(
  GetZoneRecordsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:pvtz/getZoneRecords:getZoneRecords',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZoneRecordsResult.fromMap(result);
}

/// This data source provides the Private Zones of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.13.0.
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
/// const name = config.get("name") || "terraform-example.com";
/// const _default = new alicloud.pvtz.Zone("default", {zoneName: name});
/// const ids = alicloud.pvtz.getZonesOutput({
///     ids: [_default.id],
/// });
/// export const pvtzZonesId0 = ids.apply(ids => ids.zones?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example.com"
/// default = alicloud.pvtz.Zone("default", zone_name=name)
/// ids = alicloud.pvtz.get_zones_output(ids=[default.id])
/// pulumi.export("pvtzZonesId0", ids.zones[0].id)
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
///     var name = config.Get("name") ?? "terraform-example.com";
///     var @default = new AliCloud.Pvtz.Zone("default", new()
///     {
///         ZoneName = name,
///     });
///
///     var ids = AliCloud.Pvtz.GetZones.Invoke(new()
///     {
///         Ids = new[]
///         {
///             @default.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["pvtzZonesId0"] = ids.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pvtz"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example.com"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := pvtz.NewZone(ctx, "default", &pvtz.ZoneArgs{
/// 			ZoneName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := pvtz.GetZonesOutput(ctx, pvtz.GetZonesOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("pvtzZonesId0", ids.ApplyT(func(ids pvtz.GetZonesResult) (*string, error) {
/// 			return &ids.Zones[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.pvtz.Zone;
/// import com.pulumi.alicloud.pvtz.ZoneArgs;
/// import com.pulumi.alicloud.pvtz.PvtzFunctions;
/// import com.pulumi.alicloud.pvtz.inputs.GetZonesArgs;
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
///         final var name = config.get("name").orElse("terraform-example.com");
///         var default_ = new Zone("default", ZoneArgs.builder()
///             .zoneName(name)
///             .build());
///
///         final var ids = PvtzFunctions.getZones(GetZonesArgs.builder()
///             .ids(default_.id())
///             .build());
///
///         ctx.export("pvtzZonesId0", ids.applyValue(_ids -> _ids.zones()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example.com
/// resources:
///   default:
///     type: alicloud:pvtz:Zone
///     properties:
///       zoneName: ${name}
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:pvtz:getZones
///       arguments:
///         ids:
///           - ${default.id}
/// outputs:
///   pvtzZonesId0: ${ids.zones[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_pvtz_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:pvtz/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
