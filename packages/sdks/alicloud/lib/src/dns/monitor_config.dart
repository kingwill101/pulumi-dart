import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_config_args.dart';
import 'monitor_config_state.dart';

/// Provides a DNS Monitor Config resource.
///
/// For information about DNS Monitor Config and how to use it, see [What is Monitor Config](https://www.alibabacloud.com/help/en/alibaba-cloud-dns/latest/api-alidns-2015-01-09-adddnsgtmmonitor).
///
/// &gt; **NOTE:** Available since v1.153.0.
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
/// const defaultAddressPool = new alicloud.dns.AddressPool("default", {
///     addressPoolName: name,
///     instanceId: defaultGtmInstance.id,
///     lbaStrategy: "RATIO",
///     type: "IPV4",
///     addresses: [{
///         attributeInfo: "{\"lineCodeRectifyType\":\"RECTIFIED\",\"lineCodes\":[\"os_namerica_us\"]}",
///         remark: "address_remark",
///         address: "1.1.1.1",
///         mode: "SMART",
///         lbaWeight: 1,
///     }],
/// });
/// const defaultMonitorConfig = new alicloud.dns.MonitorConfig("default", {
///     addrPoolId: defaultAddressPool.id,
///     evaluationCount: 1,
///     interval: 60,
///     timeout: 5000,
///     protocolType: "TCP",
///     monitorExtendInfo: "{\"failureRate\":50,\"port\":80}",
///     ispCityNodes: [{
///         cityCode: "503",
///         ispCode: "465",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
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
/// default_address_pool = alicloud.dns.AddressPool("default",
///     address_pool_name=name,
///     instance_id=default_gtm_instance.id,
///     lba_strategy="RATIO",
///     type="IPV4",
///     addresses=[{
///         "attribute_info": "{\"lineCodeRectifyType\":\"RECTIFIED\",\"lineCodes\":[\"os_namerica_us\"]}",
///         "remark": "address_remark",
///         "address": "1.1.1.1",
///         "mode": "SMART",
///         "lba_weight": 1,
///     }])
/// default_monitor_config = alicloud.dns.MonitorConfig("default",
///     addr_pool_id=default_address_pool.id,
///     evaluation_count=1,
///     interval=60,
///     timeout=5000,
///     protocol_type="TCP",
///     monitor_extend_info="{\"failureRate\":50,\"port\":80}",
///     isp_city_nodes=[{
///         "city_code": "503",
///         "isp_code": "465",
///     }])
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
///     var defaultAddressPool = new AliCloud.Dns.AddressPool("default", new()
///     {
///         AddressPoolName = name,
///         InstanceId = defaultGtmInstance.Id,
///         LbaStrategy = "RATIO",
///         Type = "IPV4",
///         Addresses = new[]
///         {
///             new AliCloud.Dns.Inputs.AddressPoolAddressArgs
///             {
///                 AttributeInfo = "{\"lineCodeRectifyType\":\"RECTIFIED\",\"lineCodes\":[\"os_namerica_us\"]}",
///                 Remark = "address_remark",
///                 Address = "1.1.1.1",
///                 Mode = "SMART",
///                 LbaWeight = 1,
///             },
///         },
///     });
///
///     var defaultMonitorConfig = new AliCloud.Dns.MonitorConfig("default", new()
///     {
///         AddrPoolId = defaultAddressPool.Id,
///         EvaluationCount = 1,
///         Interval = 60,
///         Timeout = 5000,
///         ProtocolType = "TCP",
///         MonitorExtendInfo = "{\"failureRate\":50,\"port\":80}",
///         IspCityNodes = new[]
///         {
///             new AliCloud.Dns.Inputs.MonitorConfigIspCityNodeArgs
///             {
///                 CityCode = "503",
///                 IspCode = "465",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		defaultAddressPool, err := dns.NewAddressPool(ctx, "default", &dns.AddressPoolArgs{
/// 			AddressPoolName: pulumi.String(name),
/// 			InstanceId:      defaultGtmInstance.ID(),
/// 			LbaStrategy:     pulumi.String("RATIO"),
/// 			Type:            pulumi.String("IPV4"),
/// 			Addresses: dns.AddressPoolAddressArray{
/// 				&dns.AddressPoolAddressArgs{
/// 					AttributeInfo: pulumi.String("{\"lineCodeRectifyType\":\"RECTIFIED\",\"lineCodes\":[\"os_namerica_us\"]}"),
/// 					Remark:        pulumi.String("address_remark"),
/// 					Address:       pulumi.String("1.1.1.1"),
/// 					Mode:          pulumi.String("SMART"),
/// 					LbaWeight:     pulumi.Int(1),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewMonitorConfig(ctx, "default", &dns.MonitorConfigArgs{
/// 			AddrPoolId:        defaultAddressPool.ID(),
/// 			EvaluationCount:   pulumi.Int(1),
/// 			Interval:          pulumi.Int(60),
/// 			Timeout:           pulumi.Int(5000),
/// 			ProtocolType:      pulumi.String("TCP"),
/// 			MonitorExtendInfo: pulumi.String("{\"failureRate\":50,\"port\":80}"),
/// 			IspCityNodes: dns.MonitorConfigIspCityNodeArray{
/// 				&dns.MonitorConfigIspCityNodeArgs{
/// 					CityCode: pulumi.String("503"),
/// 					IspCode:  pulumi.String("465"),
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
/// import com.pulumi.alicloud.dns.MonitorConfig;
/// import com.pulumi.alicloud.dns.MonitorConfigArgs;
/// import com.pulumi.alicloud.dns.inputs.MonitorConfigIspCityNodeArgs;
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
///         var defaultAddressPool = new AddressPool("defaultAddressPool", AddressPoolArgs.builder()
///             .addressPoolName(name)
///             .instanceId(defaultGtmInstance.id())
///             .lbaStrategy("RATIO")
///             .type("IPV4")
///             .addresses(AddressPoolAddressArgs.builder()
///                 .attributeInfo("{\"lineCodeRectifyType\":\"RECTIFIED\",\"lineCodes\":[\"os_namerica_us\"]}")
///                 .remark("address_remark")
///                 .address("1.1.1.1")
///                 .mode("SMART")
///                 .lbaWeight(1)
///                 .build())
///             .build());
///
///         var defaultMonitorConfig = new MonitorConfig("defaultMonitorConfig", MonitorConfigArgs.builder()
///             .addrPoolId(defaultAddressPool.id())
///             .evaluationCount(1)
///             .interval(60)
///             .timeout(5000)
///             .protocolType("TCP")
///             .monitorExtendInfo("{\"failureRate\":50,\"port\":80}")
///             .ispCityNodes(MonitorConfigIspCityNodeArgs.builder()
///                 .cityCode("503")
///                 .ispCode("465")
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
///     default: tf_example
///   domainName:
///     type: string
///     default: alicloud-provider.com
/// resources:
///   defaultAlarmContactGroup:
///     type: alicloud:cms:AlarmContactGroup
///     name: default
///     properties:
///       alarmContactGroupName: ${name}
///   defaultGtmInstance:
///     type: alicloud:dns:GtmInstance
///     name: default
///     properties:
///       instanceName: ${name}
///       paymentType: Subscription
///       period: 1
///       renewalStatus: ManualRenewal
///       packageEdition: standard
///       healthCheckTaskCount: 100
///       smsNotificationCount: 1000
///       publicCnameMode: SYSTEM_ASSIGN
///       ttl: 60
///       cnameType: PUBLIC
///       resourceGroupId: ${default.groups[0].id}
///       alertGroups:
///         - ${defaultAlarmContactGroup.alarmContactGroupName}
///       publicUserDomainName: ${domainName}
///       alertConfigs:
///         - smsNotice: true
///           noticeType: ADDR_ALERT
///           emailNotice: true
///           dingtalkNotice: true
///   defaultAddressPool:
///     type: alicloud:dns:AddressPool
///     name: default
///     properties:
///       addressPoolName: ${name}
///       instanceId: ${defaultGtmInstance.id}
///       lbaStrategy: RATIO
///       type: IPV4
///       addresses:
///         - attributeInfo: '{"lineCodeRectifyType":"RECTIFIED","lineCodes":["os_namerica_us"]}'
///           remark: address_remark
///           address: 1.1.1.1
///           mode: SMART
///           lbaWeight: 1
///   defaultMonitorConfig:
///     type: alicloud:dns:MonitorConfig
///     name: default
///     properties:
///       addrPoolId: ${defaultAddressPool.id}
///       evaluationCount: '1'
///       interval: '60'
///       timeout: '5000'
///       protocolType: TCP
///       monitorExtendInfo: '{"failureRate":50,"port":80}'
///       ispCityNodes:
///         - cityCode: '503'
///           ispCode: '465'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DNS Monitor Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dns/monitorConfig:MonitorConfig example <id>
/// ```
class MonitorConfig extends pulumi.CustomResource {
  /// The ID of the address pool.
  late final pulumi.Output<String> addrPoolId;
  /// The number of consecutive times of failed health check attempts. Valid values: `1`, `2`, `3`.
  late final pulumi.Output<int> evaluationCount;
  /// The health check interval. Unit: seconds. Valid values: `60`.
  late final pulumi.Output<int> interval;
  /// The Monitoring node. See `isp_city_node` below for details.
  late final pulumi.Output<List<Map<String, dynamic>>> ispCityNodes;
  /// The lang.
  late final pulumi.Output<String?> lang;
  /// The extended information. This value follows the json format. For more details, see the [description of MonitorExtendInfo in the Request parameters table for details](https://www.alibabacloud.com/help/en/alibaba-cloud-dns/latest/api-alidns-2015-01-09-adddnsgtmmonitor).
  late final pulumi.Output<String> monitorExtendInfo;
  /// The health check protocol. Valid values: `HTTP`, `HTTPS`, `PING`, `TCP`.
  late final pulumi.Output<String> protocolType;
  /// The timeout period. Unit: milliseconds. Valid values: `2000`, `3000`, `5000`, `10000`.
  late final pulumi.Output<int> timeout;

  /// Creates a new [MonitorConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MonitorConfig]. {@macro pulumi_dns_monitor_config_monitor_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MonitorConfig(
    String name, {
    MonitorConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/monitorConfig:MonitorConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addrPoolId = registerOutput<String>('addrPoolId');
    evaluationCount = registerOutput<int>('evaluationCount');
    interval = registerOutput<int>('interval');
    ispCityNodes = registerOutput<List<Map<String, dynamic>>>('ispCityNodes');
    lang = registerOutput<String?>('lang');
    monitorExtendInfo = registerOutput<String>('monitorExtendInfo');
    protocolType = registerOutput<String>('protocolType');
    timeout = registerOutput<int>('timeout');
  }

  /// Gets an existing [MonitorConfig] resource's state with the given [name] and [id].
  static MonitorConfig get(
    String name,
    pulumi.Input<String> id, {
    MonitorConfigState? state,
  }) {
    return MonitorConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MonitorConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/monitorConfig:MonitorConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addrPoolId = registerOutput<String>('addrPoolId');
    evaluationCount = registerOutput<int>('evaluationCount');
    interval = registerOutput<int>('interval');
    ispCityNodes = registerOutput<List<Map<String, dynamic>>>('ispCityNodes');
    lang = registerOutput<String?>('lang');
    monitorExtendInfo = registerOutput<String>('monitorExtendInfo');
    protocolType = registerOutput<String>('protocolType');
    timeout = registerOutput<int>('timeout');
  }
}
