import 'package:pulumi/pulumi.dart' as pulumi;
import 'alarm_contact_group_args.dart';
import 'alarm_contact_group_state.dart';

/// Provides a CMS Alarm Contact Group resource.
///
/// For information about CMS Alarm Contact Group and how to use it, see [What is Alarm Contact Group](https://www.alibabacloud.com/help/en/cloudmonitor/latest/putcontactgroup).
///
/// > **NOTE:** Available since v1.101.0.
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
/// const example = new alicloud.cms.AlarmContactGroup("example", {alarmContactGroupName: "tf-example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cms.AlarmContactGroup("example", alarm_contact_group_name="tf-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Cms.AlarmContactGroup("example", new()
///     {
///         AlarmContactGroupName = "tf-example",
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
/// 		_, err := cms.NewAlarmContactGroup(ctx, "example", &cms.AlarmContactGroupArgs{
/// 			AlarmContactGroupName: pulumi.String("tf-example"),
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
///         var example = new AlarmContactGroup("example", AlarmContactGroupArgs.builder()
///             .alarmContactGroupName("tf-example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:cms:AlarmContactGroup
///     properties:
///       alarmContactGroupName: tf-example
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CMS Alarm Contact Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cms/alarmContactGroup:AlarmContactGroup example tf-testacc123
/// ```
class AlarmContactGroup extends pulumi.CustomResource {
  /// The name of the alarm group.
  late final pulumi.Output<String> alarmContactGroupName;
  /// The name of the alert contact.
  late final pulumi.Output<List<String>?> contacts;
  /// The description of the alert group.
  late final pulumi.Output<String?> describe;
  /// Whether to open weekly subscription.
  late final pulumi.Output<bool> enableSubscribed;

  /// Creates a new [AlarmContactGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlarmContactGroup]. {@macro pulumi_cms_alarm_contact_group_alarm_contact_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlarmContactGroup(
    String name, {
    AlarmContactGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cms/alarmContactGroup:AlarmContactGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alarmContactGroupName = registerOutput<String>('alarmContactGroupName');
    this.contacts = registerOutput<List<String>?>('contacts');
    this.describe = registerOutput<String?>('describe');
    this.enableSubscribed = registerOutput<bool>('enableSubscribed');
  }

  /// Gets an existing [AlarmContactGroup] resource's state with the given [name] and [id].
  static AlarmContactGroup get(
    String name,
    pulumi.Input<String> id, {
    AlarmContactGroupState? state,
  }) {
    return AlarmContactGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlarmContactGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cms/alarmContactGroup:AlarmContactGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alarmContactGroupName = registerOutput<String>('alarmContactGroupName');
    this.contacts = registerOutput<List<String>?>('contacts');
    this.describe = registerOutput<String?>('describe');
    this.enableSubscribed = registerOutput<bool>('enableSubscribed');
  }
}
