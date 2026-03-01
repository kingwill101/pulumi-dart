import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_robot_args.dart';
import 'alert_robot_state.dart';

/// Provides a Application Real-Time Monitoring Service (ARMS) Alert Robot resource.
///
/// For information about Application Real-Time Monitoring Service (ARMS) Alert Robot and how to use it, see [What is Alert Robot](https://next.api.alibabacloud.com/document/ARMS/2019-08-08/CreateOrUpdateIMRobot).
///
/// > **NOTE:** Available since v1.237.0.
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
/// const wechat = new alicloud.arms.AlertRobot("wechat", {
///     alertRobotName: "example_wechat",
///     robotType: "wechat",
///     robotAddr: "https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=1c704e23",
///     dailyNoc: true,
///     dailyNocTime: "09:30,17:00",
/// });
/// const dingding = new alicloud.arms.AlertRobot("dingding", {
///     alertRobotName: "example_dingding",
///     robotType: "dingding",
///     robotAddr: "https://oapi.dingtalk.com/robot/send?access_token=1c704e23",
///     dailyNoc: true,
///     dailyNocTime: "09:30,17:00",
/// });
/// const feishu = new alicloud.arms.AlertRobot("feishu", {
///     alertRobotName: "example_feishu",
///     robotType: "feishu",
///     robotAddr: "https://open.feishu.cn/open-apis/bot/v2/hook/a48efa01",
///     dailyNoc: true,
///     dailyNocTime: "09:30,17:00",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// wechat = alicloud.arms.AlertRobot("wechat",
///     alert_robot_name="example_wechat",
///     robot_type="wechat",
///     robot_addr="https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=1c704e23",
///     daily_noc=True,
///     daily_noc_time="09:30,17:00")
/// dingding = alicloud.arms.AlertRobot("dingding",
///     alert_robot_name="example_dingding",
///     robot_type="dingding",
///     robot_addr="https://oapi.dingtalk.com/robot/send?access_token=1c704e23",
///     daily_noc=True,
///     daily_noc_time="09:30,17:00")
/// feishu = alicloud.arms.AlertRobot("feishu",
///     alert_robot_name="example_feishu",
///     robot_type="feishu",
///     robot_addr="https://open.feishu.cn/open-apis/bot/v2/hook/a48efa01",
///     daily_noc=True,
///     daily_noc_time="09:30,17:00")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var wechat = new AliCloud.Arms.AlertRobot("wechat", new()
///     {
///         AlertRobotName = "example_wechat",
///         RobotType = "wechat",
///         RobotAddr = "https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=1c704e23",
///         DailyNoc = true,
///         DailyNocTime = "09:30,17:00",
///     });
///
///     var dingding = new AliCloud.Arms.AlertRobot("dingding", new()
///     {
///         AlertRobotName = "example_dingding",
///         RobotType = "dingding",
///         RobotAddr = "https://oapi.dingtalk.com/robot/send?access_token=1c704e23",
///         DailyNoc = true,
///         DailyNocTime = "09:30,17:00",
///     });
///
///     var feishu = new AliCloud.Arms.AlertRobot("feishu", new()
///     {
///         AlertRobotName = "example_feishu",
///         RobotType = "feishu",
///         RobotAddr = "https://open.feishu.cn/open-apis/bot/v2/hook/a48efa01",
///         DailyNoc = true,
///         DailyNocTime = "09:30,17:00",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := arms.NewAlertRobot(ctx, "wechat", &arms.AlertRobotArgs{
/// 			AlertRobotName: pulumi.String("example_wechat"),
/// 			RobotType:      pulumi.String("wechat"),
/// 			RobotAddr:      pulumi.String("https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=1c704e23"),
/// 			DailyNoc:       pulumi.Bool(true),
/// 			DailyNocTime:   pulumi.String("09:30,17:00"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = arms.NewAlertRobot(ctx, "dingding", &arms.AlertRobotArgs{
/// 			AlertRobotName: pulumi.String("example_dingding"),
/// 			RobotType:      pulumi.String("dingding"),
/// 			RobotAddr:      pulumi.String("https://oapi.dingtalk.com/robot/send?access_token=1c704e23"),
/// 			DailyNoc:       pulumi.Bool(true),
/// 			DailyNocTime:   pulumi.String("09:30,17:00"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = arms.NewAlertRobot(ctx, "feishu", &arms.AlertRobotArgs{
/// 			AlertRobotName: pulumi.String("example_feishu"),
/// 			RobotType:      pulumi.String("feishu"),
/// 			RobotAddr:      pulumi.String("https://open.feishu.cn/open-apis/bot/v2/hook/a48efa01"),
/// 			DailyNoc:       pulumi.Bool(true),
/// 			DailyNocTime:   pulumi.String("09:30,17:00"),
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
/// import com.pulumi.alicloud.arms.AlertRobot;
/// import com.pulumi.alicloud.arms.AlertRobotArgs;
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
///         var wechat = new AlertRobot("wechat", AlertRobotArgs.builder()
///             .alertRobotName("example_wechat")
///             .robotType("wechat")
///             .robotAddr("https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=1c704e23")
///             .dailyNoc(true)
///             .dailyNocTime("09:30,17:00")
///             .build());
///
///         var dingding = new AlertRobot("dingding", AlertRobotArgs.builder()
///             .alertRobotName("example_dingding")
///             .robotType("dingding")
///             .robotAddr("https://oapi.dingtalk.com/robot/send?access_token=1c704e23")
///             .dailyNoc(true)
///             .dailyNocTime("09:30,17:00")
///             .build());
///
///         var feishu = new AlertRobot("feishu", AlertRobotArgs.builder()
///             .alertRobotName("example_feishu")
///             .robotType("feishu")
///             .robotAddr("https://open.feishu.cn/open-apis/bot/v2/hook/a48efa01")
///             .dailyNoc(true)
///             .dailyNocTime("09:30,17:00")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   wechat:
///     type: alicloud:arms:AlertRobot
///     properties:
///       alertRobotName: example_wechat
///       robotType: wechat
///       robotAddr: https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=1c704e23
///       dailyNoc: true
///       dailyNocTime: 09:30,17:00
///   dingding:
///     type: alicloud:arms:AlertRobot
///     properties:
///       alertRobotName: example_dingding
///       robotType: dingding
///       robotAddr: https://oapi.dingtalk.com/robot/send?access_token=1c704e23
///       dailyNoc: true
///       dailyNocTime: 09:30,17:00
///   feishu:
///     type: alicloud:arms:AlertRobot
///     properties:
///       alertRobotName: example_feishu
///       robotType: feishu
///       robotAddr: https://open.feishu.cn/open-apis/bot/v2/hook/a48efa01
///       dailyNoc: true
///       dailyNocTime: 09:30,17:00
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Application Real-Time Monitoring Service (ARMS) Alert Robot can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:arms/alertRobot:AlertRobot example <id>
/// ```
class AlertRobot extends pulumi.CustomResource {
  /// The name of the resource.
  late final pulumi.Output<String> alertRobotName;
  /// Specifies whether the alert robot receives daily notifications. Valid values: `true`: receives daily notifications. `false`: does not receive daily notifications, default to `false`.
  late final pulumi.Output<bool?> dailyNoc;
  /// The time of the daily notification.
  late final pulumi.Output<String?> dailyNocTime;
  /// The webhook url of the robot.
  late final pulumi.Output<String> robotAddr;
  /// The type of the robot, Valid values: `wechat`, `dingding`, `feishu`.
  late final pulumi.Output<String> robotType;

  /// Creates a new [AlertRobot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertRobot]. {@macro pulumi_arms_alert_robot_alert_robot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertRobot(
    String name, {
    AlertRobotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:arms/alertRobot:AlertRobot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alertRobotName = registerOutput<String>('alertRobotName');
    this.dailyNoc = registerOutput<bool?>('dailyNoc');
    this.dailyNocTime = registerOutput<String?>('dailyNocTime');
    this.robotAddr = registerOutput<String>('robotAddr');
    this.robotType = registerOutput<String>('robotType');
  }

  /// Gets an existing [AlertRobot] resource's state with the given [name] and [id].
  static AlertRobot get(
    String name,
    pulumi.Input<String> id, {
    AlertRobotState? state,
  }) {
    return AlertRobot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlertRobot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:arms/alertRobot:AlertRobot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alertRobotName = registerOutput<String>('alertRobotName');
    this.dailyNoc = registerOutput<bool?>('dailyNoc');
    this.dailyNocTime = registerOutput<String?>('dailyNocTime');
    this.robotAddr = registerOutput<String>('robotAddr');
    this.robotType = registerOutput<String>('robotType');
  }
}
