import 'package:pulumi/pulumi.dart' as pulumi;
import 'dispatch_rule_args.dart';
import 'dispatch_rule_state.dart';

/// Provides a Application Real-Time Monitoring Service (ARMS) Alert Dispatch Rule resource.
///
/// For information about Application Real-Time Monitoring Service (ARMS) Alert Dispatch Rule and how to use it, see [What is Alert Dispatch_Rule](https://next.api.alibabacloud.com/document/ARMS/2019-08-08/CreateDispatchRule).
///
/// &gt; **NOTE:** Available since v1.136.0.
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
/// const _default = new alicloud.arms.AlertContact("default", {
///     alertContactName: "example_value",
///     email: "example_value@aaa.com",
/// });
/// const defaultAlertContactGroup = new alicloud.arms.AlertContactGroup("default", {
///     alertContactGroupName: "example_value",
///     contactIds: [_default.id],
/// });
/// const defaultDispatchRule = new alicloud.arms.DispatchRule("default", {
///     dispatchRuleName: "example_value",
///     dispatchType: "CREATE_ALERT",
///     groupRules: [{
///         groupWaitTime: 5,
///         groupInterval: 15,
///         repeatInterval: 100,
///         groupingFields: ["alertname"],
///     }],
///     labelMatchExpressionGrids: [{
///         labelMatchExpressionGroups: [{
///             labelMatchExpressions: [{
///                 key: "_aliyun_arms_involvedObject_kind",
///                 value: "app",
///                 operator: "eq",
///             }],
///         }],
///     }],
///     notifyRules: [{
///         notifyObjects: [
///             {
///                 notifyObjectId: _default.id,
///                 notifyType: "ARMS_CONTACT",
///                 name: "example_value",
///             },
///             {
///                 notifyObjectId: defaultAlertContactGroup.id,
///                 notifyType: "ARMS_CONTACT_GROUP",
///                 name: "example_value",
///             },
///         ],
///         notifyChannels: [
///             "dingTalk",
///             "wechat",
///         ],
///         notifyStartTime: "10:00",
///         notifyEndTime: "23:00",
///     }],
///     notifyTemplates: [{
///         emailTitle: "example_email_title",
///         emailContent: "example_email_content",
///         emailRecoverTitle: "example_email_recover_title",
///         emailRecoverContent: "example_email_recover_content",
///         smsContent: "example_sms_content",
///         smsRecoverContent: "example_sms_recover_content",
///         ttsContent: "example_tts_content",
///         ttsRecoverContent: "example_tts_recover_content",
///         robotContent: "example_robot_content",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.arms.AlertContact("default",
///     alert_contact_name="example_value",
///     email="example_value@aaa.com")
/// default_alert_contact_group = alicloud.arms.AlertContactGroup("default",
///     alert_contact_group_name="example_value",
///     contact_ids=[default.id])
/// default_dispatch_rule = alicloud.arms.DispatchRule("default",
///     dispatch_rule_name="example_value",
///     dispatch_type="CREATE_ALERT",
///     group_rules=[{
///         "group_wait_time": 5,
///         "group_interval": 15,
///         "repeat_interval": 100,
///         "grouping_fields": ["alertname"],
///     }],
///     label_match_expression_grids=[{
///         "label_match_expression_groups": [{
///             "label_match_expressions": [{
///                 "key": "_aliyun_arms_involvedObject_kind",
///                 "value": "app",
///                 "operator": "eq",
///             }],
///         }],
///     }],
///     notify_rules=[{
///         "notify_objects": [
///             {
///                 "notify_object_id": default.id,
///                 "notify_type": "ARMS_CONTACT",
///                 "name": "example_value",
///             },
///             {
///                 "notify_object_id": default_alert_contact_group.id,
///                 "notify_type": "ARMS_CONTACT_GROUP",
///                 "name": "example_value",
///             },
///         ],
///         "notify_channels": [
///             "dingTalk",
///             "wechat",
///         ],
///         "notify_start_time": "10:00",
///         "notify_end_time": "23:00",
///     }],
///     notify_templates=[{
///         "email_title": "example_email_title",
///         "email_content": "example_email_content",
///         "email_recover_title": "example_email_recover_title",
///         "email_recover_content": "example_email_recover_content",
///         "sms_content": "example_sms_content",
///         "sms_recover_content": "example_sms_recover_content",
///         "tts_content": "example_tts_content",
///         "tts_recover_content": "example_tts_recover_content",
///         "robot_content": "example_robot_content",
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
///     var @default = new AliCloud.Arms.AlertContact("default", new()
///     {
///         AlertContactName = "example_value",
///         Email = "example_value@aaa.com",
///     });
///
///     var defaultAlertContactGroup = new AliCloud.Arms.AlertContactGroup("default", new()
///     {
///         AlertContactGroupName = "example_value",
///         ContactIds = new[]
///         {
///             @default.Id,
///         },
///     });
///
///     var defaultDispatchRule = new AliCloud.Arms.DispatchRule("default", new()
///     {
///         DispatchRuleName = "example_value",
///         DispatchType = "CREATE_ALERT",
///         GroupRules = new[]
///         {
///             new AliCloud.Arms.Inputs.DispatchRuleGroupRuleArgs
///             {
///                 GroupWaitTime = 5,
///                 GroupInterval = 15,
///                 RepeatInterval = 100,
///                 GroupingFields = new[]
///                 {
///                     "alertname",
///                 },
///             },
///         },
///         LabelMatchExpressionGrids = new[]
///         {
///             new AliCloud.Arms.Inputs.DispatchRuleLabelMatchExpressionGridArgs
///             {
///                 LabelMatchExpressionGroups = new[]
///                 {
///                     new AliCloud.Arms.Inputs.DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupArgs
///                     {
///                         LabelMatchExpressions = new[]
///                         {
///                             new AliCloud.Arms.Inputs.DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpressionArgs
///                             {
///                                 Key = "_aliyun_arms_involvedObject_kind",
///                                 Value = "app",
///                                 Operator = "eq",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         NotifyRules = new[]
///         {
///             new AliCloud.Arms.Inputs.DispatchRuleNotifyRuleArgs
///             {
///                 NotifyObjects = new[]
///                 {
///                     new AliCloud.Arms.Inputs.DispatchRuleNotifyRuleNotifyObjectArgs
///                     {
///                         NotifyObjectId = @default.Id,
///                         NotifyType = "ARMS_CONTACT",
///                         Name = "example_value",
///                     },
///                     new AliCloud.Arms.Inputs.DispatchRuleNotifyRuleNotifyObjectArgs
///                     {
///                         NotifyObjectId = defaultAlertContactGroup.Id,
///                         NotifyType = "ARMS_CONTACT_GROUP",
///                         Name = "example_value",
///                     },
///                 },
///                 NotifyChannels = new[]
///                 {
///                     "dingTalk",
///                     "wechat",
///                 },
///                 NotifyStartTime = "10:00",
///                 NotifyEndTime = "23:00",
///             },
///         },
///         NotifyTemplates = new[]
///         {
///             new AliCloud.Arms.Inputs.DispatchRuleNotifyTemplateArgs
///             {
///                 EmailTitle = "example_email_title",
///                 EmailContent = "example_email_content",
///                 EmailRecoverTitle = "example_email_recover_title",
///                 EmailRecoverContent = "example_email_recover_content",
///                 SmsContent = "example_sms_content",
///                 SmsRecoverContent = "example_sms_recover_content",
///                 TtsContent = "example_tts_content",
///                 TtsRecoverContent = "example_tts_recover_content",
///                 RobotContent = "example_robot_content",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := arms.NewAlertContact(ctx, "default", &arms.AlertContactArgs{
/// 			AlertContactName: pulumi.String("example_value"),
/// 			Email:            pulumi.String("example_value@aaa.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAlertContactGroup, err := arms.NewAlertContactGroup(ctx, "default", &arms.AlertContactGroupArgs{
/// 			AlertContactGroupName: pulumi.String("example_value"),
/// 			ContactIds: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = arms.NewDispatchRule(ctx, "default", &arms.DispatchRuleArgs{
/// 			DispatchRuleName: pulumi.String("example_value"),
/// 			DispatchType:     pulumi.String("CREATE_ALERT"),
/// 			GroupRules: arms.DispatchRuleGroupRuleArray{
/// 				&arms.DispatchRuleGroupRuleArgs{
/// 					GroupWaitTime:  pulumi.Int(5),
/// 					GroupInterval:  pulumi.Int(15),
/// 					RepeatInterval: pulumi.Int(100),
/// 					GroupingFields: pulumi.StringArray{
/// 						pulumi.String("alertname"),
/// 					},
/// 				},
/// 			},
/// 			LabelMatchExpressionGrids: arms.DispatchRuleLabelMatchExpressionGridArray{
/// 				&arms.DispatchRuleLabelMatchExpressionGridArgs{
/// 					LabelMatchExpressionGroups: arms.DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupArray{
/// 						&arms.DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupArgs{
/// 							LabelMatchExpressions: arms.DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpressionArray{
/// 								&arms.DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpressionArgs{
/// 									Key:      pulumi.String("_aliyun_arms_involvedObject_kind"),
/// 									Value:    pulumi.String("app"),
/// 									Operator: pulumi.String("eq"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			NotifyRules: arms.DispatchRuleNotifyRuleArray{
/// 				&arms.DispatchRuleNotifyRuleArgs{
/// 					NotifyObjects: arms.DispatchRuleNotifyRuleNotifyObjectArray{
/// 						&arms.DispatchRuleNotifyRuleNotifyObjectArgs{
/// 							NotifyObjectId: _default.ID(),
/// 							NotifyType:     pulumi.String("ARMS_CONTACT"),
/// 							Name:           pulumi.String("example_value"),
/// 						},
/// 						&arms.DispatchRuleNotifyRuleNotifyObjectArgs{
/// 							NotifyObjectId: defaultAlertContactGroup.ID(),
/// 							NotifyType:     pulumi.String("ARMS_CONTACT_GROUP"),
/// 							Name:           pulumi.String("example_value"),
/// 						},
/// 					},
/// 					NotifyChannels: pulumi.StringArray{
/// 						pulumi.String("dingTalk"),
/// 						pulumi.String("wechat"),
/// 					},
/// 					NotifyStartTime: pulumi.String("10:00"),
/// 					NotifyEndTime:   pulumi.String("23:00"),
/// 				},
/// 			},
/// 			NotifyTemplates: arms.DispatchRuleNotifyTemplateArray{
/// 				&arms.DispatchRuleNotifyTemplateArgs{
/// 					EmailTitle:          pulumi.String("example_email_title"),
/// 					EmailContent:        pulumi.String("example_email_content"),
/// 					EmailRecoverTitle:   pulumi.String("example_email_recover_title"),
/// 					EmailRecoverContent: pulumi.String("example_email_recover_content"),
/// 					SmsContent:          pulumi.String("example_sms_content"),
/// 					SmsRecoverContent:   pulumi.String("example_sms_recover_content"),
/// 					TtsContent:          pulumi.String("example_tts_content"),
/// 					TtsRecoverContent:   pulumi.String("example_tts_recover_content"),
/// 					RobotContent:        pulumi.String("example_robot_content"),
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
/// import com.pulumi.alicloud.arms.AlertContact;
/// import com.pulumi.alicloud.arms.AlertContactArgs;
/// import com.pulumi.alicloud.arms.AlertContactGroup;
/// import com.pulumi.alicloud.arms.AlertContactGroupArgs;
/// import com.pulumi.alicloud.arms.DispatchRule;
/// import com.pulumi.alicloud.arms.DispatchRuleArgs;
/// import com.pulumi.alicloud.arms.inputs.DispatchRuleGroupRuleArgs;
/// import com.pulumi.alicloud.arms.inputs.DispatchRuleLabelMatchExpressionGridArgs;
/// import com.pulumi.alicloud.arms.inputs.DispatchRuleNotifyRuleArgs;
/// import com.pulumi.alicloud.arms.inputs.DispatchRuleNotifyTemplateArgs;
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
///         var default_ = new AlertContact("default", AlertContactArgs.builder()
///             .alertContactName("example_value")
///             .email("example_value@aaa.com")
///             .build());
///
///         var defaultAlertContactGroup = new AlertContactGroup("defaultAlertContactGroup", AlertContactGroupArgs.builder()
///             .alertContactGroupName("example_value")
///             .contactIds(default_.id())
///             .build());
///
///         var defaultDispatchRule = new DispatchRule("defaultDispatchRule", DispatchRuleArgs.builder()
///             .dispatchRuleName("example_value")
///             .dispatchType("CREATE_ALERT")
///             .groupRules(DispatchRuleGroupRuleArgs.builder()
///                 .groupWaitTime(5)
///                 .groupInterval(15)
///                 .repeatInterval(100)
///                 .groupingFields("alertname")
///                 .build())
///             .labelMatchExpressionGrids(DispatchRuleLabelMatchExpressionGridArgs.builder()
///                 .labelMatchExpressionGroups(DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupArgs.builder()
///                     .labelMatchExpressions(DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpressionArgs.builder()
///                         .key("_aliyun_arms_involvedObject_kind")
///                         .value("app")
///                         .operator("eq")
///                         .build())
///                     .build())
///                 .build())
///             .notifyRules(DispatchRuleNotifyRuleArgs.builder()
///                 .notifyObjects(
///                     DispatchRuleNotifyRuleNotifyObjectArgs.builder()
///                         .notifyObjectId(default_.id())
///                         .notifyType("ARMS_CONTACT")
///                         .name("example_value")
///                         .build(),
///                     DispatchRuleNotifyRuleNotifyObjectArgs.builder()
///                         .notifyObjectId(defaultAlertContactGroup.id())
///                         .notifyType("ARMS_CONTACT_GROUP")
///                         .name("example_value")
///                         .build())
///                 .notifyChannels(
///                     "dingTalk",
///                     "wechat")
///                 .notifyStartTime("10:00")
///                 .notifyEndTime("23:00")
///                 .build())
///             .notifyTemplates(DispatchRuleNotifyTemplateArgs.builder()
///                 .emailTitle("example_email_title")
///                 .emailContent("example_email_content")
///                 .emailRecoverTitle("example_email_recover_title")
///                 .emailRecoverContent("example_email_recover_content")
///                 .smsContent("example_sms_content")
///                 .smsRecoverContent("example_sms_recover_content")
///                 .ttsContent("example_tts_content")
///                 .ttsRecoverContent("example_tts_recover_content")
///                 .robotContent("example_robot_content")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:arms:AlertContact
///     properties:
///       alertContactName: example_value
///       email: example_value@aaa.com
///   defaultAlertContactGroup:
///     type: alicloud:arms:AlertContactGroup
///     name: default
///     properties:
///       alertContactGroupName: example_value
///       contactIds:
///         - ${default.id}
///   defaultDispatchRule:
///     type: alicloud:arms:DispatchRule
///     name: default
///     properties:
///       dispatchRuleName: example_value
///       dispatchType: CREATE_ALERT
///       groupRules:
///         - groupWaitTime: 5
///           groupInterval: 15
///           repeatInterval: 100
///           groupingFields:
///             - alertname
///       labelMatchExpressionGrids:
///         - labelMatchExpressionGroups:
///             - labelMatchExpressions:
///                 - key: _aliyun_arms_involvedObject_kind
///                   value: app
///                   operator: eq
///       notifyRules:
///         - notifyObjects:
///             - notifyObjectId: ${default.id}
///               notifyType: ARMS_CONTACT
///               name: example_value
///             - notifyObjectId: ${defaultAlertContactGroup.id}
///               notifyType: ARMS_CONTACT_GROUP
///               name: example_value
///           notifyChannels:
///             - dingTalk
///             - wechat
///           notifyStartTime: 10:00
///           notifyEndTime: 23:00
///       notifyTemplates:
///         - emailTitle: example_email_title
///           emailContent: example_email_content
///           emailRecoverTitle: example_email_recover_title
///           emailRecoverContent: example_email_recover_content
///           smsContent: example_sms_content
///           smsRecoverContent: example_sms_recover_content
///           ttsContent: example_tts_content
///           ttsRecoverContent: example_tts_recover_content
///           robotContent: example_robot_content
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Application Real-Time Monitoring Service (ARMS) Alert Contact can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:arms/dispatchRule:DispatchRule example <id>
/// ```
class DispatchRule extends pulumi.CustomResource {
  /// The name of the dispatch policy.
  late final pulumi.Output<String> dispatchRuleName;

  /// The alert handling method. Valid values: CREATE_ALERT: generates an alert. DISCARD_ALERT: discards the alert event and generates no alert.
  late final pulumi.Output<String?> dispatchType;

  /// Sets the event group. See `group_rules` below. It will be ignored  when `dispatch_type = "DISCARD_ALERT"`.
  late final pulumi.Output<List<Map<String, dynamic>>> groupRules;

  /// Specifies whether to send the restored alert. Valid values: true: sends the alert. false: does not send the alert.
  late final pulumi.Output<bool?> isRecover;

  /// Sets the dispatch rule. See `label_match_expression_grid` below.
  late final pulumi.Output<List<Map<String, dynamic>>>
  labelMatchExpressionGrids;

  /// Sets the notification rule. See `notify_rules` below. It will be ignored  when `dispatch_type = "DISCARD_ALERT"`.
  late final pulumi.Output<List<Map<String, dynamic>>> notifyRules;

  /// Sets the notification template. See `notify_template` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> notifyTemplates;

  /// The resource status of Alert Dispatch Rule.
  late final pulumi.Output<String> status;

  /// Creates a new [DispatchRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DispatchRule]. {@macro pulumi_arms_dispatch_rule_dispatch_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DispatchRule(
    String name, {
    DispatchRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:arms/dispatchRule:DispatchRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dispatchRuleName = registerOutput<String>('dispatchRuleName');
    dispatchType = registerOutput<String?>('dispatchType');
    groupRules = registerOutput<List<Map<String, dynamic>>>('groupRules');
    isRecover = registerOutput<bool?>('isRecover');
    labelMatchExpressionGrids = registerOutput<List<Map<String, dynamic>>>(
      'labelMatchExpressionGrids',
    );
    notifyRules = registerOutput<List<Map<String, dynamic>>>('notifyRules');
    notifyTemplates = registerOutput<List<Map<String, dynamic>>?>(
      'notifyTemplates',
    );
    status = registerOutput<String>('status');
  }

  /// Gets an existing [DispatchRule] resource's state with the given [name] and [id].
  static DispatchRule get(
    String name,
    pulumi.Input<String> id, {
    DispatchRuleState? state,
  }) {
    return DispatchRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DispatchRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:arms/dispatchRule:DispatchRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dispatchRuleName = registerOutput<String>('dispatchRuleName');
    dispatchType = registerOutput<String?>('dispatchType');
    groupRules = registerOutput<List<Map<String, dynamic>>>('groupRules');
    isRecover = registerOutput<bool?>('isRecover');
    labelMatchExpressionGrids = registerOutput<List<Map<String, dynamic>>>(
      'labelMatchExpressionGrids',
    );
    notifyRules = registerOutput<List<Map<String, dynamic>>>('notifyRules');
    notifyTemplates = registerOutput<List<Map<String, dynamic>>?>(
      'notifyTemplates',
    );
    status = registerOutput<String>('status');
  }
}
