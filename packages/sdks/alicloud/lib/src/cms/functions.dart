import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alarm_contact_groups_args.dart';
import 'get_alarm_contact_groups_result.dart';
import 'get_alarm_contacts_args.dart';
import 'get_alarm_contacts_result.dart';
import 'get_dynamic_tag_groups_args.dart';
import 'get_dynamic_tag_groups_result.dart';
import 'get_event_rules_args.dart';
import 'get_event_rules_result.dart';
import 'get_group_metric_rules_args.dart';
import 'get_group_metric_rules_result.dart';
import 'get_hybrid_monitor_datas_args.dart';
import 'get_hybrid_monitor_datas_result.dart';
import 'get_hybrid_monitor_fc_tasks_args.dart';
import 'get_hybrid_monitor_fc_tasks_result.dart';
import 'get_hybrid_monitor_sls_tasks_args.dart';
import 'get_hybrid_monitor_sls_tasks_result.dart';
import 'get_metric_rule_black_lists_args.dart';
import 'get_metric_rule_black_lists_result.dart';
import 'get_metric_rule_templates_args.dart';
import 'get_metric_rule_templates_result.dart';
import 'get_monitor_group_instances_args.dart';
import 'get_monitor_group_instances_result.dart';
import 'get_monitor_groups_args.dart';
import 'get_monitor_groups_result.dart';
import 'get_namespaces_args.dart';
import 'get_namespaces_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_site_monitors_args.dart';
import 'get_site_monitors_result.dart';
import 'get_sls_groups_args.dart';
import 'get_sls_groups_result.dart';

/// This data source provides the CMS Groups of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.101.0+.
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
/// const example = alicloud.cms.getAlarmContactGroups({
///     nameRegex: "tf-testacc",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cms.get_alarm_contact_groups(name_regex="tf-testacc")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Cms.GetAlarmContactGroups.Invoke(new()
///     {
///         NameRegex = "tf-testacc",
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
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cms.GetAlarmContactGroups(ctx, &cms.GetAlarmContactGroupsArgs{
/// 			NameRegex: pulumi.StringRef("tf-testacc"),
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
/// import com.pulumi.alicloud.cms.CmsFunctions;
/// import com.pulumi.alicloud.cms.inputs.GetAlarmContactGroupsArgs;
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
///         final var example = CmsFunctions.getAlarmContactGroups(GetAlarmContactGroupsArgs.builder()
///             .nameRegex("tf-testacc")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cms:getAlarmContactGroups
///       arguments:
///         nameRegex: tf-testacc
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cms_get_alarm_contact_groups_get_alarm_contact_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlarmContactGroupsResult> getAlarmContactGroups(
  GetAlarmContactGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cms/getAlarmContactGroups:getAlarmContactGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlarmContactGroupsResult.fromMap(result);
}

/// Provides a list of alarm contact owned by an Alibaba Cloud account.
///
/// > **NOTE:** Available in v1.99.0+.
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
/// export = async () => {
///     const example = await alicloud.cms.getAlarmContacts({
///         ids: ["tf-testAccCmsAlarmContact"],
///     });
///     return {
///         "first-contact": _this.contacts,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cms.get_alarm_contacts(ids=["tf-testAccCmsAlarmContact"])
/// pulumi.export("first-contact", this["contacts"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Cms.GetAlarmContacts.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "tf-testAccCmsAlarmContact",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["first-contact"] = @this.Contacts,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cms.GetAlarmContacts(ctx, &cms.GetAlarmContactsArgs{
/// 			Ids: []string{
/// 				"tf-testAccCmsAlarmContact",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("first-contact", this.Contacts)
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
/// import com.pulumi.alicloud.cms.CmsFunctions;
/// import com.pulumi.alicloud.cms.inputs.GetAlarmContactsArgs;
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
///         final var example = CmsFunctions.getAlarmContacts(GetAlarmContactsArgs.builder()
///             .ids("tf-testAccCmsAlarmContact")
///             .build());
///
///         ctx.export("first-contact", this_.contacts());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cms:getAlarmContacts
///       arguments:
///         ids:
///           - tf-testAccCmsAlarmContact
/// outputs:
///   first-contact: ${this.contacts}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cms_get_alarm_contacts_get_alarm_contacts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlarmContactsResult> getAlarmContacts(
  GetAlarmContactsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cms/getAlarmContacts:getAlarmContacts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlarmContactsResult.fromMap(result);
}

/// This data source provides the Cms Dynamic Tag Groups of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.142.0+.
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
/// const name = config.get("name") || "example_value";
/// const _default = new alicloud.cms.AlarmContactGroup("default", {
///     alarmContactGroupName: name,
///     describe: "example_value",
///     enableSubscribed: true,
/// });
/// const defaultDynamicTagGroup = new alicloud.cms.DynamicTagGroup("default", {
///     contactGroupLists: [_default.id],
///     tagKey: "your_tag_key",
///     matchExpresses: [{
///         tagValue: "your_tag_value",
///         tagValueMatchFunction: "all",
///     }],
/// });
/// const ids = alicloud.cms.getDynamicTagGroupsOutput({
///     ids: [defaultDynamicTagGroup.id],
/// });
/// export const cmsDynamicTagGroupId1 = ids.apply(ids => ids.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "example_value"
/// default = alicloud.cms.AlarmContactGroup("default",
///     alarm_contact_group_name=name,
///     describe="example_value",
///     enable_subscribed=True)
/// default_dynamic_tag_group = alicloud.cms.DynamicTagGroup("default",
///     contact_group_lists=[default.id],
///     tag_key="your_tag_key",
///     match_expresses=[{
///         "tag_value": "your_tag_value",
///         "tag_value_match_function": "all",
///     }])
/// ids = alicloud.cms.get_dynamic_tag_groups_output(ids=[default_dynamic_tag_group.id])
/// pulumi.export("cmsDynamicTagGroupId1", ids.groups[0].id)
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
///     var name = config.Get("name") ?? "example_value";
///     var @default = new AliCloud.Cms.AlarmContactGroup("default", new()
///     {
///         AlarmContactGroupName = name,
///         Describe = "example_value",
///         EnableSubscribed = true,
///     });
///
///     var defaultDynamicTagGroup = new AliCloud.Cms.DynamicTagGroup("default", new()
///     {
///         ContactGroupLists = new[]
///         {
///             @default.Id,
///         },
///         TagKey = "your_tag_key",
///         MatchExpresses = new[]
///         {
///             new AliCloud.Cms.Inputs.DynamicTagGroupMatchExpressArgs
///             {
///                 TagValue = "your_tag_value",
///                 TagValueMatchFunction = "all",
///             },
///         },
///     });
///
///     var ids = AliCloud.Cms.GetDynamicTagGroups.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultDynamicTagGroup.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cmsDynamicTagGroupId1"] = ids.Apply(getDynamicTagGroupsResult => getDynamicTagGroupsResult.Groups[0]?.Id),
///     };
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
/// 		name := "example_value"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := cms.NewAlarmContactGroup(ctx, "default", &cms.AlarmContactGroupArgs{
/// 			AlarmContactGroupName: pulumi.String(name),
/// 			Describe:              pulumi.String("example_value"),
/// 			EnableSubscribed:      pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDynamicTagGroup, err := cms.NewDynamicTagGroup(ctx, "default", &cms.DynamicTagGroupArgs{
/// 			ContactGroupLists: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 			TagKey: pulumi.String("your_tag_key"),
/// 			MatchExpresses: cms.DynamicTagGroupMatchExpressArray{
/// 				&cms.DynamicTagGroupMatchExpressArgs{
/// 					TagValue:              pulumi.String("your_tag_value"),
/// 					TagValueMatchFunction: pulumi.String("all"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := cms.GetDynamicTagGroupsOutput(ctx, cms.GetDynamicTagGroupsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultDynamicTagGroup.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("cmsDynamicTagGroupId1", ids.ApplyT(func(ids cms.GetDynamicTagGroupsResult) (*string, error) {
/// 			return &ids.Groups[0].Id, nil
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
/// import com.pulumi.alicloud.cms.AlarmContactGroup;
/// import com.pulumi.alicloud.cms.AlarmContactGroupArgs;
/// import com.pulumi.alicloud.cms.DynamicTagGroup;
/// import com.pulumi.alicloud.cms.DynamicTagGroupArgs;
/// import com.pulumi.alicloud.cms.inputs.DynamicTagGroupMatchExpressArgs;
/// import com.pulumi.alicloud.cms.CmsFunctions;
/// import com.pulumi.alicloud.cms.inputs.GetDynamicTagGroupsArgs;
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
///         final var name = config.get("name").orElse("example_value");
///         var default_ = new AlarmContactGroup("default", AlarmContactGroupArgs.builder()
///             .alarmContactGroupName(name)
///             .describe("example_value")
///             .enableSubscribed(true)
///             .build());
///
///         var defaultDynamicTagGroup = new DynamicTagGroup("defaultDynamicTagGroup", DynamicTagGroupArgs.builder()
///             .contactGroupLists(default_.id())
///             .tagKey("your_tag_key")
///             .matchExpresses(DynamicTagGroupMatchExpressArgs.builder()
///                 .tagValue("your_tag_value")
///                 .tagValueMatchFunction("all")
///                 .build())
///             .build());
///
///         final var ids = CmsFunctions.getDynamicTagGroups(GetDynamicTagGroupsArgs.builder()
///             .ids(defaultDynamicTagGroup.id())
///             .build());
///
///         ctx.export("cmsDynamicTagGroupId1", ids.applyValue(_ids -> _ids.groups()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: example_value
/// resources:
///   default:
///     type: alicloud:cms:AlarmContactGroup
///     properties:
///       alarmContactGroupName: ${name}
///       describe: example_value
///       enableSubscribed: true
///   defaultDynamicTagGroup:
///     type: alicloud:cms:DynamicTagGroup
///     name: default
///     properties:
///       contactGroupLists:
///         - ${default.id}
///       tagKey: your_tag_key
///       matchExpresses:
///         - tagValue: your_tag_value
///           tagValueMatchFunction: all
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cms:getDynamicTagGroups
///       arguments:
///         ids:
///           - ${defaultDynamicTagGroup.id}
/// outputs:
///   cmsDynamicTagGroupId1: ${ids.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cms_get_dynamic_tag_groups_get_dynamic_tag_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDynamicTagGroupsResult> getDynamicTagGroups(
  GetDynamicTagGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cms/getDynamicTagGroups:getDynamicTagGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDynamicTagGroupsResult.fromMap(result);
}

/// This data source provides the Cms Event Rules of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.182.0+.
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
/// const ids = alicloud.cms.getEventRules({
///     ids: ["example_id"],
/// });
/// export const cmsEventRuleId1 = ids.then(ids => ids.rules?.[0]?.id);
/// const nameRegex = alicloud.cms.getEventRules({
///     nameRegex: "^my-EventRule",
/// });
/// export const cmsEventRuleId2 = nameRegex.then(nameRegex => nameRegex.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cms.get_event_rules(ids=["example_id"])
/// pulumi.export("cmsEventRuleId1", ids.rules[0].id)
/// name_regex = alicloud.cms.get_event_rules(name_regex="^my-EventRule")
/// pulumi.export("cmsEventRuleId2", name_regex.rules[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Cms.GetEventRules.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Cms.GetEventRules.Invoke(new()
///     {
///         NameRegex = "^my-EventRule",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cmsEventRuleId1"] = ids.Apply(getEventRulesResult => getEventRulesResult.Rules[0]?.Id),
///         ["cmsEventRuleId2"] = nameRegex.Apply(getEventRulesResult => getEventRulesResult.Rules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cms.GetEventRules(ctx, &cms.GetEventRulesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cmsEventRuleId1", ids.Rules[0].Id)
/// 		nameRegex, err := cms.GetEventRules(ctx, &cms.GetEventRulesArgs{
/// 			NameRegex: pulumi.StringRef("^my-EventRule"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cmsEventRuleId2", nameRegex.Rules[0].Id)
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
/// import com.pulumi.alicloud.cms.CmsFunctions;
/// import com.pulumi.alicloud.cms.inputs.GetEventRulesArgs;
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
///         final var ids = CmsFunctions.getEventRules(GetEventRulesArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("cmsEventRuleId1", ids.rules()[0].id());
///         final var nameRegex = CmsFunctions.getEventRules(GetEventRulesArgs.builder()
///             .nameRegex("^my-EventRule")
///             .build());
///
///         ctx.export("cmsEventRuleId2", nameRegex.rules()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cms:getEventRules
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:cms:getEventRules
///       arguments:
///         nameRegex: ^my-EventRule
/// outputs:
///   cmsEventRuleId1: ${ids.rules[0].id}
///   cmsEventRuleId2: ${nameRegex.rules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cms_get_event_rules_get_event_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventRulesResult> getEventRules(
  GetEventRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cms/getEventRules:getEventRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventRulesResult.fromMap(result);
}

/// This data source provides the Cms Group Metric Rules of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.104.0+.
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
/// const example = alicloud.cms.getGroupMetricRules({
///     ids: ["4a9a8978-a9cc-55ca-aa7c-530ccd91ae57"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstCmsGroupMetricRuleId = example.then(example => example.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cms.get_group_metric_rules(ids=["4a9a8978-a9cc-55ca-aa7c-530ccd91ae57"],
///     name_regex="the_resource_name")
/// pulumi.export("firstCmsGroupMetricRuleId", example.rules[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Cms.GetGroupMetricRules.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "4a9a8978-a9cc-55ca-aa7c-530ccd91ae57",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstCmsGroupMetricRuleId"] = example.Apply(getGroupMetricRulesResult => getGroupMetricRulesResult.Rules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cms.GetGroupMetricRules(ctx, &cms.GetGroupMetricRulesArgs{
/// 			Ids: []string{
/// 				"4a9a8978-a9cc-55ca-aa7c-530ccd91ae57",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstCmsGroupMetricRuleId", example.Rules[0].Id)
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
/// import com.pulumi.alicloud.cms.CmsFunctions;
/// import com.pulumi.alicloud.cms.inputs.GetGroupMetricRulesArgs;
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
///         final var example = CmsFunctions.getGroupMetricRules(GetGroupMetricRulesArgs.builder()
///             .ids("4a9a8978-a9cc-55ca-aa7c-530ccd91ae57")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstCmsGroupMetricRuleId", example.rules()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cms:getGroupMetricRules
///       arguments:
///         ids:
///           - 4a9a8978-a9cc-55ca-aa7c-530ccd91ae57
///         nameRegex: the_resource_name
/// outputs:
///   firstCmsGroupMetricRuleId: ${example.rules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cms_get_group_metric_rules_get_group_metric_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupMetricRulesResult> getGroupMetricRules(
  GetGroupMetricRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cms/getGroupMetricRules:getGroupMetricRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupMetricRulesResult.fromMap(result);
}

/// This data source provides the Cms Hybrid Monitor Datas of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.177.0+.
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
/// const _default = alicloud.cms.getHybridMonitorDatas({
///     namespace: "example_value",
///     promSql: "AliyunEcs_cpu_total",
///     start: "1657505665",
///     end: "1657520065",
/// });
/// export const cmsMetricRuleTemplateId1 = _default.then(_default => _default.datas?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cms.get_hybrid_monitor_datas(namespace="example_value",
///     prom_sql="AliyunEcs_cpu_total",
///     start="1657505665",
///     end="1657520065")
/// pulumi.export("cmsMetricRuleTemplateId1", default.datas[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Cms.GetHybridMonitorDatas.Invoke(new()
///     {
///         Namespace = "example_value",
///         PromSql = "AliyunEcs_cpu_total",
///         Start = "1657505665",
///         End = "1657520065",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cmsMetricRuleTemplateId1"] = @default.Apply(@default => @default.Apply(getHybridMonitorDatasResult => getHybridMonitorDatasResult.Datas[0])),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := cms.GetHybridMonitorDatas(ctx, &cms.GetHybridMonitorDatasArgs{
/// 			Namespace: "example_value",
/// 			PromSql:   "AliyunEcs_cpu_total",
/// 			Start:     "1657505665",
/// 			End:       "1657520065",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cmsMetricRuleTemplateId1", _default.Datas[0])
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
/// import com.pulumi.alicloud.cms.CmsFunctions;
/// import com.pulumi.alicloud.cms.inputs.GetHybridMonitorDatasArgs;
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
///         final var default = CmsFunctions.getHybridMonitorDatas(GetHybridMonitorDatasArgs.builder()
///             .namespace("example_value")
///             .promSql("AliyunEcs_cpu_total")
///             .start("1657505665")
///             .end("1657520065")
///             .build());
///
///         ctx.export("cmsMetricRuleTemplateId1", default_.datas()[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cms:getHybridMonitorDatas
///       arguments:
///         namespace: example_value
///         promSql: AliyunEcs_cpu_total
///         start: '1657505665'
///         end: '1657520065'
/// outputs:
///   cmsMetricRuleTemplateId1: ${default.datas[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cms_get_hybrid_monitor_datas_get_hybrid_monitor_datas_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHybridMonitorDatasResult> getHybridMonitorDatas(
  GetHybridMonitorDatasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cms/getHybridMonitorDatas:getHybridMonitorDatas',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHybridMonitorDatasResult.fromMap(result);
}

/// This data source provides the Cms Hybrid Monitor Fc Tasks of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.179.0+.
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
/// const ids = alicloud.cms.getHybridMonitorFcTasks({
///     ids: ["example_value"],
/// });
/// export const cmsHybridMonitorFcTaskId1 = ids.then(ids => ids.tasks?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cms.get_hybrid_monitor_fc_tasks(ids=["example_value"])
/// pulumi.export("cmsHybridMonitorFcTaskId1", ids.tasks[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Cms.GetHybridMonitorFcTasks.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cmsHybridMonitorFcTaskId1"] = ids.Apply(getHybridMonitorFcTasksResult => getHybridMonitorFcTasksResult.Tasks[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cms.GetHybridMonitorFcTasks(ctx, &cms.GetHybridMonitorFcTasksArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cmsHybridMonitorFcTaskId1", ids.Tasks[0].Id)
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
/// import com.pulumi.alicloud.cms.CmsFunctions;
/// import com.pulumi.alicloud.cms.inputs.GetHybridMonitorFcTasksArgs;
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
///         final var ids = CmsFunctions.getHybridMonitorFcTasks(GetHybridMonitorFcTasksArgs.builder()
///             .ids("example_value")
///             .build());
///
///         ctx.export("cmsHybridMonitorFcTaskId1", ids.tasks()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cms:getHybridMonitorFcTasks
///       arguments:
///         ids:
///           - example_value
/// outputs:
///   cmsHybridMonitorFcTaskId1: ${ids.tasks[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cms_get_hybrid_monitor_fc_tasks_get_hybrid_monitor_fc_tasks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHybridMonitorFcTasksResult> getHybridMonitorFcTasks(
  GetHybridMonitorFcTasksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cms/getHybridMonitorFcTasks:getHybridMonitorFcTasks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHybridMonitorFcTasksResult.fromMap(result);
}

/// This data source provides the Cms Hybrid Monitor Sls Tasks of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.179.0+.
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
/// const ids = alicloud.cms.getHybridMonitorSlsTasks({
///     ids: ["example_value"],
/// });
/// export const cmsHybridMonitorSlsTaskId1 = ids.then(ids => ids.tasks?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cms.get_hybrid_monitor_sls_tasks(ids=["example_value"])
/// pulumi.export("cmsHybridMonitorSlsTaskId1", ids.tasks[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Cms.GetHybridMonitorSlsTasks.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cmsHybridMonitorSlsTaskId1"] = ids.Apply(getHybridMonitorSlsTasksResult => getHybridMonitorSlsTasksResult.Tasks[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cms.GetHybridMonitorSlsTasks(ctx, &cms.GetHybridMonitorSlsTasksArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cmsHybridMonitorSlsTaskId1", ids.Tasks[0].Id)
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
/// import com.pulumi.alicloud.cms.CmsFunctions;
/// import com.pulumi.alicloud.cms.inputs.GetHybridMonitorSlsTasksArgs;
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
///         final var ids = CmsFunctions.getHybridMonitorSlsTasks(GetHybridMonitorSlsTasksArgs.builder()
///             .ids("example_value")
///             .build());
///
///         ctx.export("cmsHybridMonitorSlsTaskId1", ids.tasks()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cms:getHybridMonitorSlsTasks
///       arguments:
///         ids:
///           - example_value
/// outputs:
///   cmsHybridMonitorSlsTaskId1: ${ids.tasks[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cms_get_hybrid_monitor_sls_tasks_get_hybrid_monitor_sls_tasks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHybridMonitorSlsTasksResult> getHybridMonitorSlsTasks(
  GetHybridMonitorSlsTasksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cms/getHybridMonitorSlsTasks:getHybridMonitorSlsTasks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHybridMonitorSlsTasksResult.fromMap(result);
}

/// This data source provides Cloud Monitor Service Metric Rule Black List available to the user.[What is Metric Rule Black List](https://www.alibabacloud.com/help/en/cloudmonitor/latest/describemetricruleblacklist)
///
/// > **NOTE:** Available in 1.194.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.cms.getMetricRuleBlackLists({
///     ids: [defaultAlicloudCmsMetricRuleBlackLists.id],
///     category: "ecs",
///     namespace: "acs_ecs_dashboard",
/// });
/// export const alicloudCmsRuleBlackListExampleId = lists[0].id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cms.get_metric_rule_black_lists(ids=[default_alicloud_cms_metric_rule_black_lists["id"]],
///     category="ecs",
///     namespace="acs_ecs_dashboard")
/// pulumi.export("alicloudCmsRuleBlackListExampleId", lists[0]["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Cms.GetMetricRuleBlackLists.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudCmsMetricRuleBlackLists.Id,
///         },
///         Category = "ecs",
///         Namespace = "acs_ecs_dashboard",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCmsRuleBlackListExampleId"] = lists[0].Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cms.GetMetricRuleBlackLists(ctx, &cms.GetMetricRuleBlackListsArgs{
/// Ids: interface{}{
/// defaultAlicloudCmsMetricRuleBlackLists.Id,
/// },
/// Category: pulumi.StringRef("ecs"),
/// Namespace: pulumi.StringRef("acs_ecs_dashboard"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudCmsRuleBlackListExampleId", lists[0].Id)
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.cms.CmsFunctions;
/// import com.pulumi.alicloud.cms.inputs.GetMetricRuleBlackListsArgs;
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
///         final var default = CmsFunctions.getMetricRuleBlackLists(GetMetricRuleBlackListsArgs.builder()
///             .ids(defaultAlicloudCmsMetricRuleBlackLists.id())
///             .category("ecs")
///             .namespace("acs_ecs_dashboard")
///             .build());
///
///         ctx.export("alicloudCmsRuleBlackListExampleId", lists[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cms:getMetricRuleBlackLists
///       arguments:
///         ids:
///           - ${defaultAlicloudCmsMetricRuleBlackLists.id}
///         category: ecs
///         namespace: acs_ecs_dashboard
/// outputs:
///   alicloudCmsRuleBlackListExampleId: ${lists[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cms_get_metric_rule_black_lists_get_metric_rule_black_lists_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetricRuleBlackListsResult> getMetricRuleBlackLists(
  GetMetricRuleBlackListsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cms/getMetricRuleBlackLists:getMetricRuleBlackLists',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetricRuleBlackListsResult.fromMap(result);
}

/// This data source provides the Cms Metric Rule Templates of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.134.0+.
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
/// const ids = alicloud.cms.getMetricRuleTemplates({
///     ids: ["example_value"],
/// });
/// export const cmsMetricRuleTemplateId1 = ids.then(ids => ids.templates?.[0]?.id);
/// const nameRegex = alicloud.cms.getMetricRuleTemplates({
///     nameRegex: "^my-MetricRuleTemplate",
/// });
/// export const cmsMetricRuleTemplateId2 = nameRegex.then(nameRegex => nameRegex.templates?.[0]?.id);
/// const keyword = alicloud.cms.getMetricRuleTemplates({
///     keyword: "^my-MetricRuleTemplate",
/// });
/// export const cmsMetricRuleTemplateId3 = nameRegex.then(nameRegex => nameRegex.templates?.[0]?.id);
/// const templateId = alicloud.cms.getMetricRuleTemplates({
///     templateId: "example_value",
/// });
/// export const cmsMetricRuleTemplateId4 = nameRegex.then(nameRegex => nameRegex.templates?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cms.get_metric_rule_templates(ids=["example_value"])
/// pulumi.export("cmsMetricRuleTemplateId1", ids.templates[0].id)
/// name_regex = alicloud.cms.get_metric_rule_templates(name_regex="^my-MetricRuleTemplate")
/// pulumi.export("cmsMetricRuleTemplateId2", name_regex.templates[0].id)
/// keyword = alicloud.cms.get_metric_rule_templates(keyword="^my-MetricRuleTemplate")
/// pulumi.export("cmsMetricRuleTemplateId3", name_regex.templates[0].id)
/// template_id = alicloud.cms.get_metric_rule_templates(template_id="example_value")
/// pulumi.export("cmsMetricRuleTemplateId4", name_regex.templates[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Cms.GetMetricRuleTemplates.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///     });
///
///     var nameRegex = AliCloud.Cms.GetMetricRuleTemplates.Invoke(new()
///     {
///         NameRegex = "^my-MetricRuleTemplate",
///     });
///
///     var keyword = AliCloud.Cms.GetMetricRuleTemplates.Invoke(new()
///     {
///         Keyword = "^my-MetricRuleTemplate",
///     });
///
///     var templateId = AliCloud.Cms.GetMetricRuleTemplates.Invoke(new()
///     {
///         TemplateId = "example_value",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cmsMetricRuleTemplateId1"] = ids.Apply(getMetricRuleTemplatesResult => getMetricRuleTemplatesResult.Templates[0]?.Id),
///         ["cmsMetricRuleTemplateId2"] = nameRegex.Apply(getMetricRuleTemplatesResult => getMetricRuleTemplatesResult.Templates[0]?.Id),
///         ["cmsMetricRuleTemplateId3"] = nameRegex.Apply(getMetricRuleTemplatesResult => getMetricRuleTemplatesResult.Templates[0]?.Id),
///         ["cmsMetricRuleTemplateId4"] = nameRegex.Apply(getMetricRuleTemplatesResult => getMetricRuleTemplatesResult.Templates[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cms.GetMetricRuleTemplates(ctx, &cms.GetMetricRuleTemplatesArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cmsMetricRuleTemplateId1", ids.Templates[0].Id)
/// 		nameRegex, err := cms.GetMetricRuleTemplates(ctx, &cms.GetMetricRuleTemplatesArgs{
/// 			NameRegex: pulumi.StringRef("^my-MetricRuleTemplate"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cmsMetricRuleTemplateId2", nameRegex.Templates[0].Id)
/// 		_, err = cms.GetMetricRuleTemplates(ctx, &cms.GetMetricRuleTemplatesArgs{
/// 			Keyword: pulumi.StringRef("^my-MetricRuleTemplate"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cmsMetricRuleTemplateId3", nameRegex.Templates[0].Id)
/// 		_, err = cms.GetMetricRuleTemplates(ctx, &cms.GetMetricRuleTemplatesArgs{
/// 			TemplateId: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cmsMetricRuleTemplateId4", nameRegex.Templates[0].Id)
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
/// import com.pulumi.alicloud.cms.CmsFunctions;
/// import com.pulumi.alicloud.cms.inputs.GetMetricRuleTemplatesArgs;
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
///         final var ids = CmsFunctions.getMetricRuleTemplates(GetMetricRuleTemplatesArgs.builder()
///             .ids("example_value")
///             .build());
///
///         ctx.export("cmsMetricRuleTemplateId1", ids.templates()[0].id());
///         final var nameRegex = CmsFunctions.getMetricRuleTemplates(GetMetricRuleTemplatesArgs.builder()
///             .nameRegex("^my-MetricRuleTemplate")
///             .build());
///
///         ctx.export("cmsMetricRuleTemplateId2", nameRegex.templates()[0].id());
///         final var keyword = CmsFunctions.getMetricRuleTemplates(GetMetricRuleTemplatesArgs.builder()
///             .keyword("^my-MetricRuleTemplate")
///             .build());
///
///         ctx.export("cmsMetricRuleTemplateId3", nameRegex.templates()[0].id());
///         final var templateId = CmsFunctions.getMetricRuleTemplates(GetMetricRuleTemplatesArgs.builder()
///             .templateId("example_value")
///             .build());
///
///         ctx.export("cmsMetricRuleTemplateId4", nameRegex.templates()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cms:getMetricRuleTemplates
///       arguments:
///         ids:
///           - example_value
///   nameRegex:
///     fn::invoke:
///       function: alicloud:cms:getMetricRuleTemplates
///       arguments:
///         nameRegex: ^my-MetricRuleTemplate
///   keyword:
///     fn::invoke:
///       function: alicloud:cms:getMetricRuleTemplates
///       arguments:
///         keyword: ^my-MetricRuleTemplate
///   templateId:
///     fn::invoke:
///       function: alicloud:cms:getMetricRuleTemplates
///       arguments:
///         templateId: example_value
/// outputs:
///   cmsMetricRuleTemplateId1: ${ids.templates[0].id}
///   cmsMetricRuleTemplateId2: ${nameRegex.templates[0].id}
///   cmsMetricRuleTemplateId3: ${nameRegex.templates[0].id}
///   cmsMetricRuleTemplateId4: ${nameRegex.templates[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cms_get_metric_rule_templates_get_metric_rule_templates_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetricRuleTemplatesResult> getMetricRuleTemplates(
  GetMetricRuleTemplatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cms/getMetricRuleTemplates:getMetricRuleTemplates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetricRuleTemplatesResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_cms_get_monitor_group_instances_get_monitor_group_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMonitorGroupInstancesResult> getMonitorGroupInstances(
  GetMonitorGroupInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cms/getMonitorGroupInstances:getMonitorGroupInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMonitorGroupInstancesResult.fromMap(result);
}

/// This data source provides the Cms Monitor Groups of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.113.0+.
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
/// const example = alicloud.cms.getMonitorGroups({
///     ids: ["example_value"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstCmsMonitorGroupId = example.then(example => example.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cms.get_monitor_groups(ids=["example_value"],
///     name_regex="the_resource_name")
/// pulumi.export("firstCmsMonitorGroupId", example.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Cms.GetMonitorGroups.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstCmsMonitorGroupId"] = example.Apply(getMonitorGroupsResult => getMonitorGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cms.GetMonitorGroups(ctx, &cms.GetMonitorGroupsArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstCmsMonitorGroupId", example.Groups[0].Id)
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
/// import com.pulumi.alicloud.cms.CmsFunctions;
/// import com.pulumi.alicloud.cms.inputs.GetMonitorGroupsArgs;
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
///         final var example = CmsFunctions.getMonitorGroups(GetMonitorGroupsArgs.builder()
///             .ids("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstCmsMonitorGroupId", example.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cms:getMonitorGroups
///       arguments:
///         ids:
///           - example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstCmsMonitorGroupId: ${example.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cms_get_monitor_groups_get_monitor_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMonitorGroupsResult> getMonitorGroups(
  GetMonitorGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cms/getMonitorGroups:getMonitorGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMonitorGroupsResult.fromMap(result);
}

/// This data source provides the Cms Namespaces of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.171.0+.
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
/// const ids = alicloud.cms.getNamespaces({
///     ids: ["example_id"],
/// });
/// export const cmsNamespaceId1 = ids.then(ids => ids.namespaces?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cms.get_namespaces(ids=["example_id"])
/// pulumi.export("cmsNamespaceId1", ids.namespaces[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Cms.GetNamespaces.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cmsNamespaceId1"] = ids.Apply(getNamespacesResult => getNamespacesResult.Namespaces[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cms.GetNamespaces(ctx, &cms.GetNamespacesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cmsNamespaceId1", ids.Namespaces[0].Id)
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
/// import com.pulumi.alicloud.cms.CmsFunctions;
/// import com.pulumi.alicloud.cms.inputs.GetNamespacesArgs;
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
///         final var ids = CmsFunctions.getNamespaces(GetNamespacesArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("cmsNamespaceId1", ids.namespaces()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cms:getNamespaces
///       arguments:
///         ids:
///           - example_id
/// outputs:
///   cmsNamespaceId1: ${ids.namespaces[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cms_get_namespaces_get_namespaces_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespacesResult> getNamespaces(
  GetNamespacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cms/getNamespaces:getNamespaces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespacesResult.fromMap(result);
}

/// Using this data source can open CMS service automatically. If the service has been opened, it will return opened.
///
/// For information about CMS and how to use it, see [What is CMS](https://help.aliyun.com/product/28572.html).
///
/// > **NOTE:** Available in v1.111.0+
///
/// > **DEPRECATED:**  This data source has been deprecated from version `1.219.0`. The Cloud Monitor Service is no longer needed to open in the product dimension and the OpenAPI has been taken [offline](https://api.alibabacloud.com/api/Cms/2019-01-01/OpenCmsService).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.cms.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.cms.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.Cms.GetService.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cms.GetService(ctx, &cms.GetServiceArgs{
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
/// import com.pulumi.alicloud.cms.CmsFunctions;
/// import com.pulumi.alicloud.cms.inputs.GetServiceArgs;
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
///         final var open = CmsFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:cms:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cms_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cms/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// This data source provides Cloud Monitor Service Site Monitor available to the user.[What is Site Monitor](https://www.alibabacloud.com/help/en/cms/developer-reference/api-cms-2019-01-01-createsitemonitor)
///
/// > **NOTE:** Available since v1.224.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultSiteMonitor = new alicloud.cms.SiteMonitor("default", {
///     address: "http://www.alibabacloud.com",
///     taskName: `terraform-example-${defaultInteger.result}`,
///     taskType: "HTTP",
///     interval: "5",
///     ispCities: [{
///         city: "546",
///         isp: "465",
///     }],
///     optionsJson: `{
///     \\"http_method\\": \\"get\\",
///     \\"waitTime_after_completion\\": null,
///     \\"ipv6_task\\": false,
///     \\"diagnosis_ping\\": false,
///     \\"diagnosis_mtr\\": false,
///     \\"assertions\\": [
///         {
///             \\"operator\\": \\"lessThan\\",
///             \\"type\\": \\"response_time\\",
///             \\"target\\": 1000
///         }
///     ],
///     \\"time_out\\": 30000
/// }
/// `,
/// });
/// const _default = alicloud.cms.getSiteMonitorsOutput({
///     ids: [defaultSiteMonitor.id],
///     taskType: "HTTP",
/// });
/// export const alicloudCmsSiteMonitorExampleId = _default.apply(_default => _default.monitors?.[0]?.taskId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_site_monitor = alicloud.cms.SiteMonitor("default",
///     address="http://www.alibabacloud.com",
///     task_name=f"terraform-example-{default_integer['result']}",
///     task_type="HTTP",
///     interval="5",
///     isp_cities=[{
///         "city": "546",
///         "isp": "465",
///     }],
///     options_json="""{
///     \"http_method\": \"get\",
///     \"waitTime_after_completion\": null,
///     \"ipv6_task\": false,
///     \"diagnosis_ping\": false,
///     \"diagnosis_mtr\": false,
///     \"assertions\": [
///         {
///             \"operator\": \"lessThan\",
///             \"type\": \"response_time\",
///             \"target\": 1000
///         }
///     ],
///     \"time_out\": 30000
/// }
/// """)
/// default = alicloud.cms.get_site_monitors_output(ids=[default_site_monitor.id],
///     task_type="HTTP")
/// pulumi.export("alicloudCmsSiteMonitorExampleId", default.monitors[0].task_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example";
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultSiteMonitor = new AliCloud.Cms.SiteMonitor("default", new()
///     {
///         Address = "http://www.alibabacloud.com",
///         TaskName = $"terraform-example-{defaultInteger.Result}",
///         TaskType = "HTTP",
///         Interval = "5",
///         IspCities = new[]
///         {
///             new AliCloud.Cms.Inputs.SiteMonitorIspCityArgs
///             {
///                 City = "546",
///                 Isp = "465",
///             },
///         },
///         OptionsJson = @"{
///     \""http_method\"": \""get\"",
///     \""waitTime_after_completion\"": null,
///     \""ipv6_task\"": false,
///     \""diagnosis_ping\"": false,
///     \""diagnosis_mtr\"": false,
///     \""assertions\"": [
///         {
///             \""operator\"": \""lessThan\"",
///             \""type\"": \""response_time\"",
///             \""target\"": 1000
///         }
///     ],
///     \""time_out\"": 30000
/// }
/// ",
///     });
///
///     var @default = AliCloud.Cms.GetSiteMonitors.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultSiteMonitor.Id,
///         },
///         TaskType = "HTTP",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCmsSiteMonitorExampleId"] = @default.Apply(@default => @default.Apply(getSiteMonitorsResult => getSiteMonitorsResult.Monitors[0]?.TaskId)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "tf_example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// Min: 10000,
/// Max: 99999,
/// })
/// if err != nil {
/// return err
/// }
/// defaultSiteMonitor, err := cms.NewSiteMonitor(ctx, "default", &cms.SiteMonitorArgs{
/// Address: pulumi.String("http://www.alibabacloud.com"),
/// TaskName: pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// TaskType: pulumi.String("HTTP"),
/// Interval: pulumi.String("5"),
/// IspCities: cms.SiteMonitorIspCityArray{
/// &cms.SiteMonitorIspCityArgs{
/// City: pulumi.String("546"),
/// Isp: pulumi.String("465"),
/// },
/// },
/// OptionsJson: pulumi.String(`{
///     \"http_method\": \"get\",
///     \"waitTime_after_completion\": null,
///     \"ipv6_task\": false,
///     \"diagnosis_ping\": false,
///     \"diagnosis_mtr\": false,
///     \"assertions\": [
///         {
///             \"operator\": \"lessThan\",
///             \"type\": \"response_time\",
///             \"target\": 1000
///         }
///     ],
///     \"time_out\": 30000
/// }
/// `),
/// })
/// if err != nil {
/// return err
/// }
/// _default := cms.GetSiteMonitorsOutput(ctx, cms.GetSiteMonitorsOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultSiteMonitor.ID(),
/// },
/// TaskType: pulumi.String("HTTP"),
/// }, nil);
/// ctx.Export("alicloudCmsSiteMonitorExampleId", _default.ApplyT(func(_default cms.GetSiteMonitorsResult) (*string, error) {
/// return &default.Monitors[0].TaskId, nil
/// }).(pulumi.StringPtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.cms.SiteMonitor;
/// import com.pulumi.alicloud.cms.SiteMonitorArgs;
/// import com.pulumi.alicloud.cms.inputs.SiteMonitorIspCityArgs;
/// import com.pulumi.alicloud.cms.CmsFunctions;
/// import com.pulumi.alicloud.cms.inputs.GetSiteMonitorsArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultSiteMonitor = new SiteMonitor("defaultSiteMonitor", SiteMonitorArgs.builder()
///             .address("http://www.alibabacloud.com")
///             .taskName(String.format("terraform-example-%s", defaultInteger.result()))
///             .taskType("HTTP")
///             .interval("5")
///             .ispCities(SiteMonitorIspCityArgs.builder()
///                 .city("546")
///                 .isp("465")
///                 .build())
///             .optionsJson("""
/// {
///     \"http_method\": \"get\",
///     \"waitTime_after_completion\": null,
///     \"ipv6_task\": false,
///     \"diagnosis_ping\": false,
///     \"diagnosis_mtr\": false,
///     \"assertions\": [
///         {
///             \"operator\": \"lessThan\",
///             \"type\": \"response_time\",
///             \"target\": 1000
///         }
///     ],
///     \"time_out\": 30000
/// }
///             """)
///             .build());
///
///         final var default = CmsFunctions.getSiteMonitors(GetSiteMonitorsArgs.builder()
///             .ids(defaultSiteMonitor.id())
///             .taskType("HTTP")
///             .build());
///
///         ctx.export("alicloudCmsSiteMonitorExampleId", default_.applyValue(_default_ -> _default_.monitors()[0].taskId()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultSiteMonitor:
///     type: alicloud:cms:SiteMonitor
///     name: default
///     properties:
///       address: http://www.alibabacloud.com
///       taskName: terraform-example-${defaultInteger.result}
///       taskType: HTTP
///       interval: 5
///       ispCities:
///         - city: '546'
///           isp: '465'
///       optionsJson: |
///         {
///             \"http_method\": \"get\",
///             \"waitTime_after_completion\": null,
///             \"ipv6_task\": false,
///             \"diagnosis_ping\": false,
///             \"diagnosis_mtr\": false,
///             \"assertions\": [
///                 {
///                     \"operator\": \"lessThan\",
///                     \"type\": \"response_time\",
///                     \"target\": 1000
///                 }
///             ],
///             \"time_out\": 30000
///         }
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cms:getSiteMonitors
///       arguments:
///         ids:
///           - ${defaultSiteMonitor.id}
///         taskType: HTTP
/// outputs:
///   alicloudCmsSiteMonitorExampleId: ${default.monitors[0].taskId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cms_get_site_monitors_get_site_monitors_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSiteMonitorsResult> getSiteMonitors(
  GetSiteMonitorsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cms/getSiteMonitors:getSiteMonitors',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSiteMonitorsResult.fromMap(result);
}

/// This data source provides the Cms Sls Groups of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.171.0+.
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
/// const ids = alicloud.cms.getSlsGroups({
///     ids: ["example_id"],
/// });
/// export const cmsSlsGroupId1 = ids.then(ids => ids.groups?.[0]?.id);
/// const nameRegex = alicloud.cms.getSlsGroups({
///     nameRegex: "^my-SlsGroup",
/// });
/// export const cmsSlsGroupId2 = nameRegex.then(nameRegex => nameRegex.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cms.get_sls_groups(ids=["example_id"])
/// pulumi.export("cmsSlsGroupId1", ids.groups[0].id)
/// name_regex = alicloud.cms.get_sls_groups(name_regex="^my-SlsGroup")
/// pulumi.export("cmsSlsGroupId2", name_regex.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Cms.GetSlsGroups.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Cms.GetSlsGroups.Invoke(new()
///     {
///         NameRegex = "^my-SlsGroup",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cmsSlsGroupId1"] = ids.Apply(getSlsGroupsResult => getSlsGroupsResult.Groups[0]?.Id),
///         ["cmsSlsGroupId2"] = nameRegex.Apply(getSlsGroupsResult => getSlsGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cms.GetSlsGroups(ctx, &cms.GetSlsGroupsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cmsSlsGroupId1", ids.Groups[0].Id)
/// 		nameRegex, err := cms.GetSlsGroups(ctx, &cms.GetSlsGroupsArgs{
/// 			NameRegex: pulumi.StringRef("^my-SlsGroup"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cmsSlsGroupId2", nameRegex.Groups[0].Id)
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
/// import com.pulumi.alicloud.cms.CmsFunctions;
/// import com.pulumi.alicloud.cms.inputs.GetSlsGroupsArgs;
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
///         final var ids = CmsFunctions.getSlsGroups(GetSlsGroupsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("cmsSlsGroupId1", ids.groups()[0].id());
///         final var nameRegex = CmsFunctions.getSlsGroups(GetSlsGroupsArgs.builder()
///             .nameRegex("^my-SlsGroup")
///             .build());
///
///         ctx.export("cmsSlsGroupId2", nameRegex.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cms:getSlsGroups
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:cms:getSlsGroups
///       arguments:
///         nameRegex: ^my-SlsGroup
/// outputs:
///   cmsSlsGroupId1: ${ids.groups[0].id}
///   cmsSlsGroupId2: ${nameRegex.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cms_get_sls_groups_get_sls_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSlsGroupsResult> getSlsGroups(
  GetSlsGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cms/getSlsGroups:getSlsGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSlsGroupsResult.fromMap(result);
}
