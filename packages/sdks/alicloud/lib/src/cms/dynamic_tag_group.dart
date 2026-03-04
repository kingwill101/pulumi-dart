import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_tag_group_args.dart';
import 'dynamic_tag_group_state.dart';

/// Provides a Cloud Monitor Service Dynamic Tag Group resource.
///
/// For information about Cloud Monitor Service Dynamic Tag Group and how to use it, see [What is Dynamic Tag Group](https://www.alibabacloud.com/help/en/cloudmonitor/latest/createdynamictaggroup).
///
/// &gt; **NOTE:** Available since v1.142.0.
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
/// const _default = new alicloud.cms.AlarmContactGroup("default", {alarmContactGroupName: name});
/// const defaultDynamicTagGroup = new alicloud.cms.DynamicTagGroup("default", {
///     tagKey: name,
///     contactGroupLists: [_default.id],
///     matchExpresses: [{
///         tagValue: name,
///         tagValueMatchFunction: "all",
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
///     name = "terraform-example"
/// default = alicloud.cms.AlarmContactGroup("default", alarm_contact_group_name=name)
/// default_dynamic_tag_group = alicloud.cms.DynamicTagGroup("default",
///     tag_key=name,
///     contact_group_lists=[default.id],
///     match_expresses=[{
///         "tag_value": name,
///         "tag_value_match_function": "all",
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Cms.AlarmContactGroup("default", new()
///     {
///         AlarmContactGroupName = name,
///     });
///
///     var defaultDynamicTagGroup = new AliCloud.Cms.DynamicTagGroup("default", new()
///     {
///         TagKey = name,
///         ContactGroupLists = new[]
///         {
///             @default.Id,
///         },
///         MatchExpresses = new[]
///         {
///             new AliCloud.Cms.Inputs.DynamicTagGroupMatchExpressArgs
///             {
///                 TagValue = name,
///                 TagValueMatchFunction = "all",
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
/// 		_default, err := cms.NewAlarmContactGroup(ctx, "default", &cms.AlarmContactGroupArgs{
/// 			AlarmContactGroupName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cms.NewDynamicTagGroup(ctx, "default", &cms.DynamicTagGroupArgs{
/// 			TagKey: pulumi.String(name),
/// 			ContactGroupLists: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 			MatchExpresses: cms.DynamicTagGroupMatchExpressArray{
/// 				&cms.DynamicTagGroupMatchExpressArgs{
/// 					TagValue:              pulumi.String(name),
/// 					TagValueMatchFunction: pulumi.String("all"),
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
/// import com.pulumi.alicloud.cms.AlarmContactGroup;
/// import com.pulumi.alicloud.cms.AlarmContactGroupArgs;
/// import com.pulumi.alicloud.cms.DynamicTagGroup;
/// import com.pulumi.alicloud.cms.DynamicTagGroupArgs;
/// import com.pulumi.alicloud.cms.inputs.DynamicTagGroupMatchExpressArgs;
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
///         var default_ = new AlarmContactGroup("default", AlarmContactGroupArgs.builder()
///             .alarmContactGroupName(name)
///             .build());
///
///         var defaultDynamicTagGroup = new DynamicTagGroup("defaultDynamicTagGroup", DynamicTagGroupArgs.builder()
///             .tagKey(name)
///             .contactGroupLists(default_.id())
///             .matchExpresses(DynamicTagGroupMatchExpressArgs.builder()
///                 .tagValue(name)
///                 .tagValueMatchFunction("all")
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
///   default:
///     type: alicloud:cms:AlarmContactGroup
///     properties:
///       alarmContactGroupName: ${name}
///   defaultDynamicTagGroup:
///     type: alicloud:cms:DynamicTagGroup
///     name: default
///     properties:
///       tagKey: ${name}
///       contactGroupLists:
///         - ${default.id}
///       matchExpresses:
///         - tagValue: ${name}
///           tagValueMatchFunction: all
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Monitor Service Dynamic Tag Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cms/dynamicTagGroup:DynamicTagGroup example <id>
/// ```
class DynamicTagGroup extends pulumi.CustomResource {
  /// The alert contact groups. The alert notifications of the application group are sent to the alert contacts that belong to the specified alert contact groups.
  late final pulumi.Output<List<String>> contactGroupLists;

  /// The relationship between the conditional expressions for the tag values of the cloud resources. Valid values: `and`, `or`.
  late final pulumi.Output<String> matchExpressFilterRelation;

  /// The conditional expressions used to create an application group based on the tag. See `match_express` below.
  late final pulumi.Output<List<Map<String, dynamic>>> matchExpresses;

  /// The status of the Dynamic Tag Group.
  late final pulumi.Output<String> status;

  /// The tag keys of the cloud resources.
  late final pulumi.Output<String> tagKey;

  /// The IDs of the alert templates.
  late final pulumi.Output<List<String>?> templateIdLists;

  /// Creates a new [DynamicTagGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DynamicTagGroup]. {@macro pulumi_cms_dynamic_tag_group_dynamic_tag_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DynamicTagGroup(
    String name, {
    DynamicTagGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cms/dynamicTagGroup:DynamicTagGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    contactGroupLists = registerOutput<List<String>>('contactGroupLists');
    matchExpressFilterRelation = registerOutput<String>(
      'matchExpressFilterRelation',
    );
    matchExpresses = registerOutput<List<Map<String, dynamic>>>(
      'matchExpresses',
    );
    status = registerOutput<String>('status');
    tagKey = registerOutput<String>('tagKey');
    templateIdLists = registerOutput<List<String>?>('templateIdLists');
  }

  /// Gets an existing [DynamicTagGroup] resource's state with the given [name] and [id].
  static DynamicTagGroup get(
    String name,
    pulumi.Input<String> id, {
    DynamicTagGroupState? state,
  }) {
    return DynamicTagGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DynamicTagGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cms/dynamicTagGroup:DynamicTagGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    contactGroupLists = registerOutput<List<String>>('contactGroupLists');
    matchExpressFilterRelation = registerOutput<String>(
      'matchExpressFilterRelation',
    );
    matchExpresses = registerOutput<List<Map<String, dynamic>>>(
      'matchExpresses',
    );
    status = registerOutput<String>('status');
    tagKey = registerOutput<String>('tagKey');
    templateIdLists = registerOutput<List<String>?>('templateIdLists');
  }
}
