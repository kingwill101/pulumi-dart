import 'package:pulumi/pulumi.dart' as pulumi;
import 'gtm_instance_alert_config.dart';
import 'gtm_instance_args.dart';
import 'gtm_instance_state.dart';

/// Provides a Alidns Gtm Instance resource.
///
/// For information about Alidns Gtm Instance and how to use it, see [What is Gtm Instance](https://www.alibabacloud.com/help/en/doc-detail/204852.html).
///
/// > **NOTE:** Available since v1.151.0.
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
/// const domainName = config.get("domainName") || "alicloud-provider.com";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultAlarmContactGroup = new alicloud.cms.AlarmContactGroup("default", {alarmContactGroupName: "tf_example"});
/// const defaultGtmInstance = new alicloud.dns.GtmInstance("default", {
///     instanceName: "tf_example",
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// domain_name = config.get("domainName")
/// if domain_name is None:
///     domain_name = "alicloud-provider.com"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_alarm_contact_group = alicloud.cms.AlarmContactGroup("default", alarm_contact_group_name="tf_example")
/// default_gtm_instance = alicloud.dns.GtmInstance("default",
///     instance_name="tf_example",
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
///     var domainName = config.Get("domainName") ?? "alicloud-provider.com";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultAlarmContactGroup = new AliCloud.Cms.AlarmContactGroup("default", new()
///     {
///         AlarmContactGroupName = "tf_example",
///     });
///
///     var defaultGtmInstance = new AliCloud.Dns.GtmInstance("default", new()
///     {
///         InstanceName = "tf_example",
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
/// 		domainName := "alicloud-provider.com"
/// 		if param := cfg.Get("domainName"); param != "" {
/// 			domainName = param
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAlarmContactGroup, err := cms.NewAlarmContactGroup(ctx, "default", &cms.AlarmContactGroupArgs{
/// 			AlarmContactGroupName: pulumi.String("tf_example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewGtmInstance(ctx, "default", &dns.GtmInstanceArgs{
/// 			InstanceName:         pulumi.String("tf_example"),
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
///         final var domainName = config.get("domainName").orElse("alicloud-provider.com");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultAlarmContactGroup = new AlarmContactGroup("defaultAlarmContactGroup", AlarmContactGroupArgs.builder()
///             .alarmContactGroupName("tf_example")
///             .build());
///
///         var defaultGtmInstance = new GtmInstance("defaultGtmInstance", GtmInstanceArgs.builder()
///             .instanceName("tf_example")
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
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   domainName:
///     type: string
///     default: alicloud-provider.com
/// resources:
///   defaultAlarmContactGroup:
///     type: alicloud:cms:AlarmContactGroup
///     name: default
///     properties:
///       alarmContactGroupName: tf_example
///   defaultGtmInstance:
///     type: alicloud:dns:GtmInstance
///     name: default
///     properties:
///       instanceName: tf_example
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
/// Alidns Gtm Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dns/gtmInstance:GtmInstance example <id>
/// ```
class GtmInstance extends pulumi.CustomResource {
  /// The alert notification methods. See `alert_config` below for details.
  late final pulumi.Output<List<GtmInstanceAlertConfig>?> alertConfigs;
  /// The alert group.
  late final pulumi.Output<List<String>?> alertGroups;
  /// The access type of the CNAME domain name. Valid value: `PUBLIC`.
  late final pulumi.Output<String> cnameType;
  /// The force update.
  late final pulumi.Output<bool?> forceUpdate;
  /// The quota of detection tasks.
  late final pulumi.Output<int> healthCheckTaskCount;
  /// The name of the instance.
  late final pulumi.Output<String> instanceName;
  /// The lang.
  late final pulumi.Output<String?> lang;
  /// Paid package version. Valid values: `ultimate`, `standard`.
  late final pulumi.Output<String> packageEdition;
  /// The Payment Type of the resource. Valid value: `Subscription`.
  late final pulumi.Output<String> paymentType;
  /// Creating a pre-paid instance, it must be set, the unit is month, please enter an integer multiple of 12 for annually paid products.
  late final pulumi.Output<int> period;
  /// The Public Network domain name access method. Valid values: `CUSTOM`, `SYSTEM_ASSIGN`.
  late final pulumi.Output<String> publicCnameMode;
  /// The CNAME access domain name.
  late final pulumi.Output<String> publicRr;
  /// The website domain name that the user uses on the Internet.
  late final pulumi.Output<String> publicUserDomainName;
  /// The domain name that is used to access GTM over the Internet.
  late final pulumi.Output<String> publicZoneName;
  /// Automatic renewal period, the unit is month. When setting `renewal_status` to AutoRenewal, it must be set.
  late final pulumi.Output<int?> renewPeriod;
  /// Automatic renewal status. Valid values: `AutoRenewal`, `ManualRenewal`.
  late final pulumi.Output<String> renewalStatus;
  /// The ID of the resource group.
  late final pulumi.Output<String?> resourceGroupId;
  /// The quota of SMS notifications.
  late final pulumi.Output<int> smsNotificationCount;
  /// The type of the access policy. Valid values: `GEO`, `LATENCY`.
  late final pulumi.Output<String> strategyMode;
  /// The global time to live. Valid values: `60`, `120`, `300`, `600`. Unit: second.
  late final pulumi.Output<int?> ttl;

  /// Creates a new [GtmInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GtmInstance]. {@macro pulumi_dns_gtm_instance_gtm_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GtmInstance(
    String name, {
    GtmInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/gtmInstance:GtmInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alertConfigs = registerOutput<List<GtmInstanceAlertConfig>?>('alertConfigs');
    this.alertGroups = registerOutput<List<String>?>('alertGroups');
    this.cnameType = registerOutput<String>('cnameType');
    this.forceUpdate = registerOutput<bool?>('forceUpdate');
    this.healthCheckTaskCount = registerOutput<int>('healthCheckTaskCount');
    this.instanceName = registerOutput<String>('instanceName');
    this.lang = registerOutput<String?>('lang');
    this.packageEdition = registerOutput<String>('packageEdition');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int>('period');
    this.publicCnameMode = registerOutput<String>('publicCnameMode');
    this.publicRr = registerOutput<String>('publicRr');
    this.publicUserDomainName = registerOutput<String>('publicUserDomainName');
    this.publicZoneName = registerOutput<String>('publicZoneName');
    this.renewPeriod = registerOutput<int?>('renewPeriod');
    this.renewalStatus = registerOutput<String>('renewalStatus');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.smsNotificationCount = registerOutput<int>('smsNotificationCount');
    this.strategyMode = registerOutput<String>('strategyMode');
    this.ttl = registerOutput<int?>('ttl');
  }

  /// Gets an existing [GtmInstance] resource's state with the given [name] and [id].
  static GtmInstance get(
    String name,
    pulumi.Input<String> id, {
    GtmInstanceState? state,
  }) {
    return GtmInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GtmInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/gtmInstance:GtmInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alertConfigs = registerOutput<List<GtmInstanceAlertConfig>?>('alertConfigs');
    this.alertGroups = registerOutput<List<String>?>('alertGroups');
    this.cnameType = registerOutput<String>('cnameType');
    this.forceUpdate = registerOutput<bool?>('forceUpdate');
    this.healthCheckTaskCount = registerOutput<int>('healthCheckTaskCount');
    this.instanceName = registerOutput<String>('instanceName');
    this.lang = registerOutput<String?>('lang');
    this.packageEdition = registerOutput<String>('packageEdition');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int>('period');
    this.publicCnameMode = registerOutput<String>('publicCnameMode');
    this.publicRr = registerOutput<String>('publicRr');
    this.publicUserDomainName = registerOutput<String>('publicUserDomainName');
    this.publicZoneName = registerOutput<String>('publicZoneName');
    this.renewPeriod = registerOutput<int?>('renewPeriod');
    this.renewalStatus = registerOutput<String>('renewalStatus');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.smsNotificationCount = registerOutput<int>('smsNotificationCount');
    this.strategyMode = registerOutput<String>('strategyMode');
    this.ttl = registerOutput<int?>('ttl');
  }
}
