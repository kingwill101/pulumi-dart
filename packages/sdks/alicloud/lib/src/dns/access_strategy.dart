import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_strategy_args.dart';
import 'access_strategy_default_addr_pool.dart';
import 'access_strategy_failover_addr_pool.dart';
import 'access_strategy_line.dart';
import 'access_strategy_state.dart';

/// Provides a DNS Access Strategy resource.
///
/// For information about DNS Access Strategy and how to use it, see [What is Access Strategy](https://www.alibabacloud.com/help/doc-detail/189620.html).
///
/// > **NOTE:** Available since v1.152.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const domainName = config.get("domainName") || "alicloud-provider.com";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultAlarmContactGroup = new alicloud.cms.AlarmContactGroup("default", {alarmContactGroupName: name});
/// const defaultGtmInstance = new alicloud.dns.GtmInstance("default", {
///     instanceName: name,
///     paymentType: "Subscription",
///     period: 1,
///     renewalStatus: "ManualRenewal",
///     packageEdition: "standard",
///     healthCheckTaskCount: 100,
///     smsNotificationCount: 1000,
///     publicCnameMode: "SYSTEM_ASSIGN",
///     ttl: 60,
///     cnameType: "PUBLIC",
///     resourceGroupId: _default.then(_default => _default.groups?.[0]?.id),
///     alertGroups: [defaultAlarmContactGroup.alarmContactGroupName],
///     publicUserDomainName: domainName,
///     alertConfigs: [{
///         smsNotice: true,
///         noticeType: "ADDR_ALERT",
///         emailNotice: true,
///         dingtalkNotice: true,
///     }],
/// });
/// const defaultAddressPool: alicloud.dns.AddressPool[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     defaultAddressPool.push(new alicloud.dns.AddressPool(`default-${range.value}`, {
///         addressPoolName: std.format({
///             input: `${name}_%d`,
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///         instanceId: defaultGtmInstance.id,
///         lbaStrategy: "RATIO",
///         type: "IPV4",
///         addresses: [{
///             attributeInfo: "{\"lineCodeRectifyType\":\"RECTIFIED\",\"lineCodes\":[\"os_namerica_us\"]}",
///             remark: "address_remark",
///             address: "1.1.1.1",
///             mode: "SMART",
///             lbaWeight: 1,
///         }],
///     }));
/// }
/// const defaultAccessStrategy = new alicloud.dns.AccessStrategy("default", {
///     strategyName: name,
///     strategyMode: "GEO",
///     instanceId: defaultGtmInstance.id,
///     defaultAddrPoolType: "IPV4",
///     defaultLbaStrategy: "RATIO",
///     defaultMinAvailableAddrNum: 1,
///     defaultAddrPools: [{
///         lbaWeight: 1,
///         addrPoolId: defaultAddressPool[0].id,
///     }],
///     failoverAddrPoolType: "IPV4",
///     failoverLbaStrategy: "RATIO",
///     failoverMinAvailableAddrNum: 1,
///     failoverAddrPools: [{
///         lbaWeight: 1,
///         addrPoolId: defaultAddressPool[1].id,
///     }],
///     lines: [{
///         lineCode: "default",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// domain_name = config.get("domainName")
/// if domain_name is None:
///     domain_name = "alicloud-provider.com"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_alarm_contact_group = alicloud.cms.AlarmContactGroup("default", alarm_contact_group_name=name)
/// default_gtm_instance = alicloud.dns.GtmInstance("default",
///     instance_name=name,
///     payment_type="Subscription",
///     period=1,
///     renewal_status="ManualRenewal",
///     package_edition="standard",
///     health_check_task_count=100,
///     sms_notification_count=1000,
///     public_cname_mode="SYSTEM_ASSIGN",
///     ttl=60,
///     cname_type="PUBLIC",
///     resource_group_id=default.groups[0].id,
///     alert_groups=[default_alarm_contact_group.alarm_contact_group_name],
///     public_user_domain_name=domain_name,
///     alert_configs=[{
///         "sms_notice": True,
///         "notice_type": "ADDR_ALERT",
///         "email_notice": True,
///         "dingtalk_notice": True,
///     }])
/// default_address_pool = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     default_address_pool.append(alicloud.dns.AddressPool(f"default-{range['value']}",
///         address_pool_name=std.format(input=f"{name}_%d",
///             args=[range["value"] + 1]).result,
///         instance_id=default_gtm_instance.id,
///         lba_strategy="RATIO",
///         type="IPV4",
///         addresses=[{
///             "attribute_info": "{\"lineCodeRectifyType\":\"RECTIFIED\",\"lineCodes\":[\"os_namerica_us\"]}",
///             "remark": "address_remark",
///             "address": "1.1.1.1",
///             "mode": "SMART",
///             "lba_weight": 1,
///         }]))
/// default_access_strategy = alicloud.dns.AccessStrategy("default",
///     strategy_name=name,
///     strategy_mode="GEO",
///     instance_id=default_gtm_instance.id,
///     default_addr_pool_type="IPV4",
///     default_lba_strategy="RATIO",
///     default_min_available_addr_num=1,
///     default_addr_pools=[{
///         "lba_weight": 1,
///         "addr_pool_id": default_address_pool[0].id,
///     }],
///     failover_addr_pool_type="IPV4",
///     failover_lba_strategy="RATIO",
///     failover_min_available_addr_num=1,
///     failover_addr_pools=[{
///         "lba_weight": 1,
///         "addr_pool_id": default_address_pool[1].id,
///     }],
///     lines=[{
///         "line_code": "default",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example";
///     var domainName = config.Get("domainName") ?? "alicloud-provider.com";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultAlarmContactGroup = new AliCloud.Cms.AlarmContactGroup("default", new()
///     {
///         AlarmContactGroupName = name,
///     });
///
///     var defaultGtmInstance = new AliCloud.Dns.GtmInstance("default", new()
///     {
///         InstanceName = name,
///         PaymentType = "Subscription",
///         Period = 1,
///         RenewalStatus = "ManualRenewal",
///         PackageEdition = "standard",
///         HealthCheckTaskCount = 100,
///         SmsNotificationCount = 1000,
///         PublicCnameMode = "SYSTEM_ASSIGN",
///         Ttl = 60,
///         CnameType = "PUBLIC",
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id)),
///         AlertGroups = new[]
///         {
///             defaultAlarmContactGroup.AlarmContactGroupName,
///         },
///         PublicUserDomainName = domainName,
///         AlertConfigs = new[]
///         {
///             new AliCloud.Dns.Inputs.GtmInstanceAlertConfigArgs
///             {
///                 SmsNotice = true,
///                 NoticeType = "ADDR_ALERT",
///                 EmailNotice = true,
///                 DingtalkNotice = true,
///             },
///         },
///     });
///
///     var defaultAddressPool = new List<AliCloud.Dns.AddressPool>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultAddressPool.Add(new AliCloud.Dns.AddressPool($"default-{range.Value}", new()
///         {
///             AddressPoolName = Std.Format.Invoke(new()
///             {
///                 Input = $"{name}_%d",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///             InstanceId = defaultGtmInstance.Id,
///             LbaStrategy = "RATIO",
///             Type = "IPV4",
///             Addresses = new[]
///             {
///                 new AliCloud.Dns.Inputs.AddressPoolAddressArgs
///                 {
///                     AttributeInfo = "{\"lineCodeRectifyType\":\"RECTIFIED\",\"lineCodes\":[\"os_namerica_us\"]}",
///                     Remark = "address_remark",
///                     Address = "1.1.1.1",
///                     Mode = "SMART",
///                     LbaWeight = 1,
///                 },
///             },
///         }));
///     }
///     var defaultAccessStrategy = new AliCloud.Dns.AccessStrategy("default", new()
///     {
///         StrategyName = name,
///         StrategyMode = "GEO",
///         InstanceId = defaultGtmInstance.Id,
///         DefaultAddrPoolType = "IPV4",
///         DefaultLbaStrategy = "RATIO",
///         DefaultMinAvailableAddrNum = 1,
///         DefaultAddrPools = new[]
///         {
///             new AliCloud.Dns.Inputs.AccessStrategyDefaultAddrPoolArgs
///             {
///                 LbaWeight = 1,
///                 AddrPoolId = defaultAddressPool[0].Id,
///             },
///         },
///         FailoverAddrPoolType = "IPV4",
///         FailoverLbaStrategy = "RATIO",
///         FailoverMinAvailableAddrNum = 1,
///         FailoverAddrPools = new[]
///         {
///             new AliCloud.Dns.Inputs.AccessStrategyFailoverAddrPoolArgs
///             {
///                 LbaWeight = 1,
///                 AddrPoolId = defaultAddressPool[1].Id,
///             },
///         },
///         Lines = new[]
///         {
///             new AliCloud.Dns.Inputs.AccessStrategyLineArgs
///             {
///                 LineCode = "default",
///             },
///         },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		domainName := "alicloud-provider.com"
/// 		if param := cfg.Get("domainName"); param != "" {
/// 			domainName = param
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAlarmContactGroup, err := cms.NewAlarmContactGroup(ctx, "default", &cms.AlarmContactGroupArgs{
/// 			AlarmContactGroupName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGtmInstance, err := dns.NewGtmInstance(ctx, "default", &dns.GtmInstanceArgs{
/// 			InstanceName:         pulumi.String(name),
/// 			PaymentType:          pulumi.String("Subscription"),
/// 			Period:               pulumi.Int(1),
/// 			RenewalStatus:        pulumi.String("ManualRenewal"),
/// 			PackageEdition:       pulumi.String("standard"),
/// 			HealthCheckTaskCount: pulumi.Int(100),
/// 			SmsNotificationCount: pulumi.Int(1000),
/// 			PublicCnameMode:      pulumi.String("SYSTEM_ASSIGN"),
/// 			Ttl:                  pulumi.Int(60),
/// 			CnameType:            pulumi.String("PUBLIC"),
/// 			ResourceGroupId:      pulumi.String(_default.Groups[0].Id),
/// 			AlertGroups: pulumi.StringArray{
/// 				defaultAlarmContactGroup.AlarmContactGroupName,
/// 			},
/// 			PublicUserDomainName: pulumi.String(domainName),
/// 			AlertConfigs: dns.GtmInstanceAlertConfigArray{
/// 				&dns.GtmInstanceAlertConfigArgs{
/// 					SmsNotice:      pulumi.Bool(true),
/// 					NoticeType:     pulumi.String("ADDR_ALERT"),
/// 					EmailNotice:    pulumi.Bool(true),
/// 					DingtalkNotice: pulumi.Bool(true),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: fmt.Sprintf("%v%v", name, "_%d"),
/// 			Args: []float64{
/// 				val0 + 1,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var defaultAddressPool []*dns.AddressPool
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := dns.NewAddressPool(ctx, fmt.Sprintf("default-%v", key0), &dns.AddressPoolArgs{
/// 				AddressPoolName: pulumi.String(invokeFormat.Result),
/// 				InstanceId:      defaultGtmInstance.ID(),
/// 				LbaStrategy:     pulumi.String("RATIO"),
/// 				Type:            pulumi.String("IPV4"),
/// 				Addresses: dns.AddressPoolAddressArray{
/// 					&dns.AddressPoolAddressArgs{
/// 						AttributeInfo: pulumi.String("{\"lineCodeRectifyType\":\"RECTIFIED\",\"lineCodes\":[\"os_namerica_us\"]}"),
/// 						Remark:        pulumi.String("address_remark"),
/// 						Address:       pulumi.String("1.1.1.1"),
/// 						Mode:          pulumi.String("SMART"),
/// 						LbaWeight:     pulumi.Int(1),
/// 					},
/// 				},
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultAddressPool = append(defaultAddressPool, __res)
/// 		}
/// 		_, err = dns.NewAccessStrategy(ctx, "default", &dns.AccessStrategyArgs{
/// 			StrategyName:               pulumi.String(name),
/// 			StrategyMode:               pulumi.String("GEO"),
/// 			InstanceId:                 defaultGtmInstance.ID(),
/// 			DefaultAddrPoolType:        pulumi.String("IPV4"),
/// 			DefaultLbaStrategy:         pulumi.String("RATIO"),
/// 			DefaultMinAvailableAddrNum: pulumi.Int(1),
/// 			DefaultAddrPools: dns.AccessStrategyDefaultAddrPoolArray{
/// 				&dns.AccessStrategyDefaultAddrPoolArgs{
/// 					LbaWeight:  pulumi.Int(1),
/// 					AddrPoolId: defaultAddressPool[0].ID(),
/// 				},
/// 			},
/// 			FailoverAddrPoolType:        pulumi.String("IPV4"),
/// 			FailoverLbaStrategy:         pulumi.String("RATIO"),
/// 			FailoverMinAvailableAddrNum: pulumi.Int(1),
/// 			FailoverAddrPools: dns.AccessStrategyFailoverAddrPoolArray{
/// 				&dns.AccessStrategyFailoverAddrPoolArgs{
/// 					LbaWeight:  pulumi.Int(1),
/// 					AddrPoolId: defaultAddressPool[1].ID(),
/// 				},
/// 			},
/// 			Lines: dns.AccessStrategyLineArray{
/// 				&dns.AccessStrategyLineArgs{
/// 					LineCode: pulumi.String("default"),
/// 				},
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.cms.AlarmContactGroup;
/// import com.pulumi.alicloud.cms.AlarmContactGroupArgs;
/// import com.pulumi.alicloud.dns.GtmInstance;
/// import com.pulumi.alicloud.dns.GtmInstanceArgs;
/// import com.pulumi.alicloud.dns.inputs.GtmInstanceAlertConfigArgs;
/// import com.pulumi.alicloud.dns.AddressPool;
/// import com.pulumi.alicloud.dns.AddressPoolArgs;
/// import com.pulumi.alicloud.dns.inputs.AddressPoolAddressArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.dns.AccessStrategy;
/// import com.pulumi.alicloud.dns.AccessStrategyArgs;
/// import com.pulumi.alicloud.dns.inputs.AccessStrategyDefaultAddrPoolArgs;
/// import com.pulumi.alicloud.dns.inputs.AccessStrategyFailoverAddrPoolArgs;
/// import com.pulumi.alicloud.dns.inputs.AccessStrategyLineArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var name = config.get("name").orElse("tf_example");
///         final var domainName = config.get("domainName").orElse("alicloud-provider.com");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultAlarmContactGroup = new AlarmContactGroup("defaultAlarmContactGroup", AlarmContactGroupArgs.builder()
///             .alarmContactGroupName(name)
///             .build());
///
///         var defaultGtmInstance = new GtmInstance("defaultGtmInstance", GtmInstanceArgs.builder()
///             .instanceName(name)
///             .paymentType("Subscription")
///             .period(1)
///             .renewalStatus("ManualRenewal")
///             .packageEdition("standard")
///             .healthCheckTaskCount(100)
///             .smsNotificationCount(1000)
///             .publicCnameMode("SYSTEM_ASSIGN")
///             .ttl(60)
///             .cnameType("PUBLIC")
///             .resourceGroupId(default_.groups()[0].id())
///             .alertGroups(defaultAlarmContactGroup.alarmContactGroupName())
///             .publicUserDomainName(domainName)
///             .alertConfigs(GtmInstanceAlertConfigArgs.builder()
///                 .smsNotice(true)
///                 .noticeType("ADDR_ALERT")
///                 .emailNotice(true)
///                 .dingtalkNotice(true)
///                 .build())
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new AddressPool("defaultAddressPool-" + i, AddressPoolArgs.builder()
///                 .addressPoolName(StdFunctions.format(FormatArgs.builder()
///                     .input(String.format("%s_%d", name))
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .instanceId(defaultGtmInstance.id())
///                 .lbaStrategy("RATIO")
///                 .type("IPV4")
///                 .addresses(AddressPoolAddressArgs.builder()
///                     .attributeInfo("{\"lineCodeRectifyType\":\"RECTIFIED\",\"lineCodes\":[\"os_namerica_us\"]}")
///                     .remark("address_remark")
///                     .address("1.1.1.1")
///                     .mode("SMART")
///                     .lbaWeight(1)
///                     .build())
///                 .build());
///
///
/// }
///         var defaultAccessStrategy = new AccessStrategy("defaultAccessStrategy", AccessStrategyArgs.builder()
///             .strategyName(name)
///             .strategyMode("GEO")
///             .instanceId(defaultGtmInstance.id())
///             .defaultAddrPoolType("IPV4")
///             .defaultLbaStrategy("RATIO")
///             .defaultMinAvailableAddrNum(1)
///             .defaultAddrPools(AccessStrategyDefaultAddrPoolArgs.builder()
///                 .lbaWeight(1)
///                 .addrPoolId(defaultAddressPool[0].id())
///                 .build())
///             .failoverAddrPoolType("IPV4")
///             .failoverLbaStrategy("RATIO")
///             .failoverMinAvailableAddrNum(1)
///             .failoverAddrPools(AccessStrategyFailoverAddrPoolArgs.builder()
///                 .lbaWeight(1)
///                 .addrPoolId(defaultAddressPool[1].id())
///                 .build())
///             .lines(AccessStrategyLineArgs.builder()
///                 .lineCode("default")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DNS Access Strategy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dns/accessStrategy:AccessStrategy example <id>
/// ```
class AccessStrategy extends pulumi.CustomResource {
  /// The primary/secondary switchover policy for address pool groups. Valid values: `AUTO`, `DEFAULT`, `FAILOVER`.
  late final pulumi.Output<String> accessMode;
  /// The type of the primary address pool. Valid values: `IPV4`, `IPV6`, `DOMAIN`.
  late final pulumi.Output<String> defaultAddrPoolType;
  /// List of primary address pool collections. See `default_addr_pools` below for details.
  late final pulumi.Output<List<AccessStrategyDefaultAddrPool>> defaultAddrPools;
  /// Specifies whether to enable scheduling optimization for latency resolution for the primary address pool group. Valid values: `OPEN`, `CLOSE`.
  late final pulumi.Output<String?> defaultLatencyOptimization;
  /// The load balancing policy of the primary address pool group. Valid values: `ALL_RR`, `RATIO`. **NOTE:** The `default_lba_strategy` is required under the condition that `strategy_mode` is `GEO`.
  late final pulumi.Output<String?> defaultLbaStrategy;
  /// The maximum number of addresses returned by the primary address pool set. **NOTE:** The `default_max_return_addr_num` is required under the condition that `strategy_mode` is `LATENCY`.
  late final pulumi.Output<int?> defaultMaxReturnAddrNum;
  /// The minimum number of available addresses for the primary address pool set.
  late final pulumi.Output<int> defaultMinAvailableAddrNum;
  /// The type of the secondary address pool. Valid values: `IPV4`, `IPV6`, `DOMAIN`.
  late final pulumi.Output<String?> failoverAddrPoolType;
  /// List of backup address pool sets. See `failover_addr_pools` below for details.
  late final pulumi.Output<List<AccessStrategyFailoverAddrPool>?> failoverAddrPools;
  /// Specifies whether to enable scheduling optimization for latency resolution for the secondary address pool group. Valid values: `OPEN`, `CLOSE`.
  late final pulumi.Output<String?> failoverLatencyOptimization;
  /// The load balancing policy of the secondary address pool group. Valid values: `ALL_RR`, `RATIO`.
  late final pulumi.Output<String?> failoverLbaStrategy;
  /// The maximum number of returned addresses in the standby address pool.
  late final pulumi.Output<int?> failoverMaxReturnAddrNum;
  /// The minimum number of available addresses in the standby address pool.
  late final pulumi.Output<int?> failoverMinAvailableAddrNum;
  /// The Id of the associated instance.
  late final pulumi.Output<String> instanceId;
  /// The lang.
  late final pulumi.Output<String?> lang;
  /// The source regions. See `lines` below for details. **NOTE:** The `lines` is required under the condition that `strategy_mode` is `GEO`.
  late final pulumi.Output<List<AccessStrategyLine>?> lines;
  /// The type of the access policy. Valid values: `GEO` or `LATENCY`. `GEO`: based on geographic location. `LATENCY`: Based on delay.
  late final pulumi.Output<String> strategyMode;
  /// The name of the access policy.
  late final pulumi.Output<String> strategyName;

  /// Creates a new [AccessStrategy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessStrategy]. {@macro pulumi_dns_access_strategy_access_strategy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessStrategy(
    String name, {
    AccessStrategyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/accessStrategy:AccessStrategy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessMode = registerOutput<String>('accessMode');
    this.defaultAddrPoolType = registerOutput<String>('defaultAddrPoolType');
    this.defaultAddrPools = registerOutput<List<AccessStrategyDefaultAddrPool>>('defaultAddrPools');
    this.defaultLatencyOptimization = registerOutput<String?>('defaultLatencyOptimization');
    this.defaultLbaStrategy = registerOutput<String?>('defaultLbaStrategy');
    this.defaultMaxReturnAddrNum = registerOutput<int?>('defaultMaxReturnAddrNum');
    this.defaultMinAvailableAddrNum = registerOutput<int>('defaultMinAvailableAddrNum');
    this.failoverAddrPoolType = registerOutput<String?>('failoverAddrPoolType');
    this.failoverAddrPools = registerOutput<List<AccessStrategyFailoverAddrPool>?>('failoverAddrPools');
    this.failoverLatencyOptimization = registerOutput<String?>('failoverLatencyOptimization');
    this.failoverLbaStrategy = registerOutput<String?>('failoverLbaStrategy');
    this.failoverMaxReturnAddrNum = registerOutput<int?>('failoverMaxReturnAddrNum');
    this.failoverMinAvailableAddrNum = registerOutput<int?>('failoverMinAvailableAddrNum');
    this.instanceId = registerOutput<String>('instanceId');
    this.lang = registerOutput<String?>('lang');
    this.lines = registerOutput<List<AccessStrategyLine>?>('lines');
    this.strategyMode = registerOutput<String>('strategyMode');
    this.strategyName = registerOutput<String>('strategyName');
  }

  /// Gets an existing [AccessStrategy] resource's state with the given [name] and [id].
  static AccessStrategy get(
    String name,
    pulumi.Input<String> id, {
    AccessStrategyState? state,
  }) {
    return AccessStrategy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessStrategy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/accessStrategy:AccessStrategy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessMode = registerOutput<String>('accessMode');
    this.defaultAddrPoolType = registerOutput<String>('defaultAddrPoolType');
    this.defaultAddrPools = registerOutput<List<AccessStrategyDefaultAddrPool>>('defaultAddrPools');
    this.defaultLatencyOptimization = registerOutput<String?>('defaultLatencyOptimization');
    this.defaultLbaStrategy = registerOutput<String?>('defaultLbaStrategy');
    this.defaultMaxReturnAddrNum = registerOutput<int?>('defaultMaxReturnAddrNum');
    this.defaultMinAvailableAddrNum = registerOutput<int>('defaultMinAvailableAddrNum');
    this.failoverAddrPoolType = registerOutput<String?>('failoverAddrPoolType');
    this.failoverAddrPools = registerOutput<List<AccessStrategyFailoverAddrPool>?>('failoverAddrPools');
    this.failoverLatencyOptimization = registerOutput<String?>('failoverLatencyOptimization');
    this.failoverLbaStrategy = registerOutput<String?>('failoverLbaStrategy');
    this.failoverMaxReturnAddrNum = registerOutput<int?>('failoverMaxReturnAddrNum');
    this.failoverMinAvailableAddrNum = registerOutput<int?>('failoverMinAvailableAddrNum');
    this.instanceId = registerOutput<String>('instanceId');
    this.lang = registerOutput<String?>('lang');
    this.lines = registerOutput<List<AccessStrategyLine>?>('lines');
    this.strategyMode = registerOutput<String>('strategyMode');
    this.strategyName = registerOutput<String>('strategyName');
  }
}
