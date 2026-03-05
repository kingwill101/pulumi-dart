import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_monitor_args.dart';
import 'site_monitor_custom_schedule.dart';
import 'site_monitor_option_json.dart';
import 'site_monitor_state.dart';

/// Provides a Cloud Monitor Service Site Monitor resource.
///
/// Describes the SITE monitoring tasks created by the user.
///
/// For information about Cloud Monitor Service Site Monitor and how to use it, see [What is Site Monitor](https://next.api.alibabacloud.com/document/Cms/2019-01-01/CreateSiteMonitor).
///
/// &gt; **NOTE:** Available since v1.72.0.
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
/// const basic = new alicloud.cms.SiteMonitor("basic", {
///     address: "https://www.alibabacloud.com",
///     taskName: name,
///     taskType: "HTTP",
///     interval: "5",
///     ispCities: [{
///         isp: "232",
///         city: "641",
///         type: "IDC",
///     }],
///     optionJson: {
///         responseContent: "example",
///         expectValue: "example",
///         port: 81,
///         isBaseEncode: true,
///         pingNum: 5,
///         matchRule: 1,
///         failureRate: "0.3",
///         requestContent: "example",
///         attempts: 4,
///         requestFormat: "hex",
///         password: "YourPassword123!",
///         diagnosisPing: true,
///         responseFormat: "hex",
///         cookie: "key2=value2",
///         pingPort: 443,
///         userName: "example",
///         dnsMatchRule: "DNS_IN",
///         timeout: 3000,
///         dnsServer: "223.6.6.6",
///         diagnosisMtr: true,
///         header: "key2:value2",
///         minTlsVersion: "1.1",
///         pingType: "udp",
///         dnsType: "NS",
///         dnsHijackWhitelist: "DnsHijackWhitelist",
///         httpMethod: "post",
///         assertions: [{
///             operator: "lessThan",
///             target: "300",
///             type: "response_time",
///         }],
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
///     name = "terraform-example"
/// basic = alicloud.cms.SiteMonitor("basic",
///     address="https://www.alibabacloud.com",
///     task_name=name,
///     task_type="HTTP",
///     interval="5",
///     isp_cities=[{
///         "isp": "232",
///         "city": "641",
///         "type": "IDC",
///     }],
///     option_json={
///         "response_content": "example",
///         "expect_value": "example",
///         "port": 81,
///         "is_base_encode": True,
///         "ping_num": 5,
///         "match_rule": 1,
///         "failure_rate": "0.3",
///         "request_content": "example",
///         "attempts": 4,
///         "request_format": "hex",
///         "password": "YourPassword123!",
///         "diagnosis_ping": True,
///         "response_format": "hex",
///         "cookie": "key2=value2",
///         "ping_port": 443,
///         "user_name": "example",
///         "dns_match_rule": "DNS_IN",
///         "timeout": 3000,
///         "dns_server": "223.6.6.6",
///         "diagnosis_mtr": True,
///         "header": "key2:value2",
///         "min_tls_version": "1.1",
///         "ping_type": "udp",
///         "dns_type": "NS",
///         "dns_hijack_whitelist": "DnsHijackWhitelist",
///         "http_method": "post",
///         "assertions": [{
///             "operator": "lessThan",
///             "target": "300",
///             "type": "response_time",
///         }],
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
///     var name = config.Get("name") ?? "terraform-example";
///     var basic = new AliCloud.Cms.SiteMonitor("basic", new()
///     {
///         Address = "https://www.alibabacloud.com",
///         TaskName = name,
///         TaskType = "HTTP",
///         Interval = "5",
///         IspCities = new[]
///         {
///             new AliCloud.Cms.Inputs.SiteMonitorIspCityArgs
///             {
///                 Isp = "232",
///                 City = "641",
///                 Type = "IDC",
///             },
///         },
///         OptionJson = new AliCloud.Cms.Inputs.SiteMonitorOptionJsonArgs
///         {
///             ResponseContent = "example",
///             ExpectValue = "example",
///             Port = 81,
///             IsBaseEncode = true,
///             PingNum = 5,
///             MatchRule = 1,
///             FailureRate = "0.3",
///             RequestContent = "example",
///             Attempts = 4,
///             RequestFormat = "hex",
///             Password = "YourPassword123!",
///             DiagnosisPing = true,
///             ResponseFormat = "hex",
///             Cookie = "key2=value2",
///             PingPort = 443,
///             UserName = "example",
///             DnsMatchRule = "DNS_IN",
///             Timeout = 3000,
///             DnsServer = "223.6.6.6",
///             DiagnosisMtr = true,
///             Header = "key2:value2",
///             MinTlsVersion = "1.1",
///             PingType = "udp",
///             DnsType = "NS",
///             DnsHijackWhitelist = "DnsHijackWhitelist",
///             HttpMethod = "post",
///             Assertions = new[]
///             {
///                 new AliCloud.Cms.Inputs.SiteMonitorOptionJsonAssertionArgs
///                 {
///                     Operator = "lessThan",
///                     Target = "300",
///                     Type = "response_time",
///                 },
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
/// 		_, err := cms.NewSiteMonitor(ctx, "basic", &cms.SiteMonitorArgs{
/// 			Address:  pulumi.String("https://www.alibabacloud.com"),
/// 			TaskName: pulumi.String(name),
/// 			TaskType: pulumi.String("HTTP"),
/// 			Interval: pulumi.String("5"),
/// 			IspCities: cms.SiteMonitorIspCityArray{
/// 				&cms.SiteMonitorIspCityArgs{
/// 					Isp:  pulumi.String("232"),
/// 					City: pulumi.String("641"),
/// 					Type: pulumi.String("IDC"),
/// 				},
/// 			},
/// 			OptionJson: &cms.SiteMonitorOptionJsonArgs{
/// 				ResponseContent:    pulumi.String("example"),
/// 				ExpectValue:        pulumi.String("example"),
/// 				Port:               pulumi.Int(81),
/// 				IsBaseEncode:       pulumi.Bool(true),
/// 				PingNum:            pulumi.Int(5),
/// 				MatchRule:          pulumi.Int(1),
/// 				FailureRate:        pulumi.String("0.3"),
/// 				RequestContent:     pulumi.String("example"),
/// 				Attempts:           pulumi.Int(4),
/// 				RequestFormat:      pulumi.String("hex"),
/// 				Password:           pulumi.String("YourPassword123!"),
/// 				DiagnosisPing:      pulumi.Bool(true),
/// 				ResponseFormat:     pulumi.String("hex"),
/// 				Cookie:             pulumi.String("key2=value2"),
/// 				PingPort:           pulumi.Int(443),
/// 				UserName:           pulumi.String("example"),
/// 				DnsMatchRule:       pulumi.String("DNS_IN"),
/// 				Timeout:            pulumi.Int(3000),
/// 				DnsServer:          pulumi.String("223.6.6.6"),
/// 				DiagnosisMtr:       pulumi.Bool(true),
/// 				Header:             pulumi.String("key2:value2"),
/// 				MinTlsVersion:      pulumi.String("1.1"),
/// 				PingType:           pulumi.String("udp"),
/// 				DnsType:            pulumi.String("NS"),
/// 				DnsHijackWhitelist: pulumi.String("DnsHijackWhitelist"),
/// 				HttpMethod:         pulumi.String("post"),
/// 				Assertions: cms.SiteMonitorOptionJsonAssertionArray{
/// 					&cms.SiteMonitorOptionJsonAssertionArgs{
/// 						Operator: pulumi.String("lessThan"),
/// 						Target:   pulumi.String("300"),
/// 						Type:     pulumi.String("response_time"),
/// 					},
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
/// import com.pulumi.alicloud.cms.SiteMonitor;
/// import com.pulumi.alicloud.cms.SiteMonitorArgs;
/// import com.pulumi.alicloud.cms.inputs.SiteMonitorIspCityArgs;
/// import com.pulumi.alicloud.cms.inputs.SiteMonitorOptionJsonArgs;
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
///         var basic = new SiteMonitor("basic", SiteMonitorArgs.builder()
///             .address("https://www.alibabacloud.com")
///             .taskName(name)
///             .taskType("HTTP")
///             .interval("5")
///             .ispCities(SiteMonitorIspCityArgs.builder()
///                 .isp("232")
///                 .city("641")
///                 .type("IDC")
///                 .build())
///             .optionJson(SiteMonitorOptionJsonArgs.builder()
///                 .responseContent("example")
///                 .expectValue("example")
///                 .port(81)
///                 .isBaseEncode(true)
///                 .pingNum(5)
///                 .matchRule(1)
///                 .failureRate("0.3")
///                 .requestContent("example")
///                 .attempts(4)
///                 .requestFormat("hex")
///                 .password("YourPassword123!")
///                 .diagnosisPing(true)
///                 .responseFormat("hex")
///                 .cookie("key2=value2")
///                 .pingPort(443)
///                 .userName("example")
///                 .dnsMatchRule("DNS_IN")
///                 .timeout(3000)
///                 .dnsServer("223.6.6.6")
///                 .diagnosisMtr(true)
///                 .header("key2:value2")
///                 .minTlsVersion("1.1")
///                 .pingType("udp")
///                 .dnsType("NS")
///                 .dnsHijackWhitelist("DnsHijackWhitelist")
///                 .httpMethod("post")
///                 .assertions(SiteMonitorOptionJsonAssertionArgs.builder()
///                     .operator("lessThan")
///                     .target("300")
///                     .type("response_time")
///                     .build())
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
///     default: terraform-example
/// resources:
///   basic:
///     type: alicloud:cms:SiteMonitor
///     properties:
///       address: https://www.alibabacloud.com
///       taskName: ${name}
///       taskType: HTTP
///       interval: 5
///       ispCities:
///         - isp: '232'
///           city: '641'
///           type: IDC
///       optionJson:
///         responseContent: example
///         expectValue: example
///         port: 81
///         isBaseEncode: true
///         pingNum: 5
///         matchRule: 1
///         failureRate: '0.3'
///         requestContent: example
///         attempts: 4
///         requestFormat: hex
///         password: YourPassword123!
///         diagnosisPing: true
///         responseFormat: hex
///         cookie: key2=value2
///         pingPort: 443
///         userName: example
///         dnsMatchRule: DNS_IN
///         timeout: 3000
///         dnsServer: 223.6.6.6
///         diagnosisMtr: true
///         header: key2:value2
///         minTlsVersion: '1.1'
///         pingType: udp
///         dnsType: NS
///         dnsHijackWhitelist: DnsHijackWhitelist
///         httpMethod: post
///         assertions:
///           - operator: lessThan
///             target: 300
///             type: response_time
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Monitor Service Site Monitor can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cms/siteMonitor:SiteMonitor example <id>
/// ```
class SiteMonitor extends pulumi.CustomResource {
  /// The URL or IP address monitored by the site monitoring task.
  late final pulumi.Output<String> address;

  /// The type of the detection point. Default value: `PC`. Valid values: `PC`, `MOBILE`.
  late final pulumi.Output<String> agentGroup;

  /// Field `alert_ids` has been deprecated from provider version 1.262.0.
  late final pulumi.Output<List<String>?> alertIds;

  /// (Deprecated since v1.262.0) Field `create_time` has been deprecated from provider version 1.262.0.
  late final pulumi.Output<String> createTime;

  /// Custom probing period. Only a certain period of time from Monday to Sunday can be selected for detection. See `custom_schedule` below.
  late final pulumi.Output<SiteMonitorCustomSchedule?> customSchedule;

  /// The monitoring interval of the site monitoring task. Unit: minutes. Valid values: `1`, `5`, `15`, `30` and `60`. Default value: `1`. **NOTE:** From version 1.207.0, `interval` can be set to `30`, `60`.
  late final pulumi.Output<String> interval;

  /// The detection points in a JSON array. For example, `[{"city":"546","isp":"465"},{"city":"572","isp":"465"},{"city":"738","isp":"465"}]` indicates the detection points in Beijing, Hangzhou, and Qingdao respectively. You can call the [DescribeSiteMonitorISPCityList](https://www.alibabacloud.com/help/en/doc-detail/115045.htm) operation to query detection point information. If this parameter is not specified, three detection points will be chosen randomly for monitoring. See `isp_cities` below.
  late final pulumi.Output<List<Map<String, dynamic>>> ispCities;

  /// The extended options of the protocol that is used by the site monitoring task. See `option_json` below.
  late final pulumi.Output<SiteMonitorOptionJson> optionJson;

  /// Field `options_json` has been deprecated from provider version 1.262.0. New field `option_json` instead.
  late final pulumi.Output<String> optionsJson;

  /// The status of the site monitoring task. Valid values:
  late final pulumi.Output<String> status;

  /// The name of the site monitoring task. The name must be 4 to 100 characters in length. The name can contain the following types of characters: letters, digits, and underscores.
  late final pulumi.Output<String> taskName;

  /// (Deprecated since v1.262.0) Field `task_state` has been deprecated from provider version 1.262.0. New field `status` instead.
  late final pulumi.Output<String> taskState;

  /// The protocol of the site monitoring task. Currently, site monitoring supports the following protocols: HTTP, PING, TCP, UDP, DNS, SMTP, POP3, and FTP.
  late final pulumi.Output<String> taskType;

  /// (Deprecated since v1.262.0) Field `update_time` has been deprecated from provider version 1.262.0.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [SiteMonitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SiteMonitor]. {@macro pulumi_cms_site_monitor_site_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SiteMonitor(
    String name, {
    SiteMonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cms/siteMonitor:SiteMonitor',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    address = registerOutput<String>('address');
    agentGroup = registerOutput<String>('agentGroup');
    alertIds = registerOutput<List<String>?>('alertIds');
    createTime = registerOutput<String>('createTime');
    customSchedule = registerOutput<SiteMonitorCustomSchedule?>(
      'customSchedule',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SiteMonitorCustomSchedule.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    interval = registerOutput<String>('interval');
    ispCities = registerOutput<List<Map<String, dynamic>>>('ispCities');
    optionJson = registerOutput<SiteMonitorOptionJson>(
      'optionJson',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SiteMonitorOptionJson.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    optionsJson = registerOutput<String>('optionsJson');
    status = registerOutput<String>('status');
    taskName = registerOutput<String>('taskName');
    taskState = registerOutput<String>('taskState');
    taskType = registerOutput<String>('taskType');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [SiteMonitor] resource's state with the given [name] and [id].
  static SiteMonitor get(
    String name,
    pulumi.Input<String> id, {
    SiteMonitorState? state,
  }) {
    return SiteMonitor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SiteMonitor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cms/siteMonitor:SiteMonitor',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    address = registerOutput<String>('address');
    agentGroup = registerOutput<String>('agentGroup');
    alertIds = registerOutput<List<String>?>('alertIds');
    createTime = registerOutput<String>('createTime');
    customSchedule = registerOutput<SiteMonitorCustomSchedule?>(
      'customSchedule',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SiteMonitorCustomSchedule.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    interval = registerOutput<String>('interval');
    ispCities = registerOutput<List<Map<String, dynamic>>>('ispCities');
    optionJson = registerOutput<SiteMonitorOptionJson>(
      'optionJson',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SiteMonitorOptionJson.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    optionsJson = registerOutput<String>('optionsJson');
    status = registerOutput<String>('status');
    taskName = registerOutput<String>('taskName');
    taskState = registerOutput<String>('taskState');
    taskType = registerOutput<String>('taskType');
    updateTime = registerOutput<String>('updateTime');
  }
}
