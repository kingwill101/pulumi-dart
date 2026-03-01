import 'package:pulumi/pulumi.dart' as pulumi;
import 'fc_trigger_args.dart';

/// Provides a CDN Fc Trigger resource.
///
/// For information about CDN Fc Trigger and how to use it, see [What is Fc Trigger](https://www.alibabacloud.com/help/en/cdn/developer-reference/api-cdn-2018-05-10-addfctrigger).
///
/// > **NOTE:** Available since v1.165.0.
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
/// const _default = alicloud.getAccount({});
/// const defaultGetRegions = alicloud.getRegions({
///     current: true,
/// });
/// const example = new alicloud.cdn.FcTrigger("example", {
///     eventMetaName: "LogFileCreated",
///     eventMetaVersion: "1.0.0",
///     notes: "example_value",
///     roleArn: _default.then(_default => `acs:ram::${_default.id}:role/aliyuncdneventnotificationrole`),
///     sourceArn: _default.then(_default => `acs:cdn:*:${_default.id}:domain/example.com`),
///     triggerArn: Promise.all([defaultGetRegions, _default]).then(([defaultGetRegions, _default]) => `acs:fc:${defaultGetRegions.regions?.[0]?.id}:${_default.id}:services/FCTestService/functions/printEvent/triggers/testtrigger`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_account()
/// default_get_regions = alicloud.get_regions(current=True)
/// example = alicloud.cdn.FcTrigger("example",
///     event_meta_name="LogFileCreated",
///     event_meta_version="1.0.0",
///     notes="example_value",
///     role_arn=f"acs:ram::{default.id}:role/aliyuncdneventnotificationrole",
///     source_arn=f"acs:cdn:*:{default.id}:domain/example.com",
///     trigger_arn=f"acs:fc:{default_get_regions.regions[0].id}:{default.id}:services/FCTestService/functions/printEvent/triggers/testtrigger")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var defaultGetRegions = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var example = new AliCloud.Cdn.FcTrigger("example", new()
///     {
///         EventMetaName = "LogFileCreated",
///         EventMetaVersion = "1.0.0",
///         Notes = "example_value",
///         RoleArn = @default.Apply(@default => $"acs:ram::{@default.Apply(getAccountResult => getAccountResult.Id)}:role/aliyuncdneventnotificationrole"),
///         SourceArn = @default.Apply(@default => $"acs:cdn:*:{@default.Apply(getAccountResult => getAccountResult.Id)}:domain/example.com"),
///         TriggerArn = Output.Tuple(defaultGetRegions, @default).Apply(values =>
///         {
///             var defaultGetRegions = values.Item1;
///             var @default = values.Item2;
///             return $"acs:fc:{defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)}:{@default.Apply(getAccountResult => getAccountResult.Id)}:services/FCTestService/functions/printEvent/triggers/testtrigger";
///         }),
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetRegions, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewFcTrigger(ctx, "example", &cdn.FcTriggerArgs{
/// 			EventMetaName:    pulumi.String("LogFileCreated"),
/// 			EventMetaVersion: pulumi.String("1.0.0"),
/// 			Notes:            pulumi.String("example_value"),
/// 			RoleArn:          pulumi.Sprintf("acs:ram::%v:role/aliyuncdneventnotificationrole", _default.Id),
/// 			SourceArn:        pulumi.Sprintf("acs:cdn:*:%v:domain/example.com", _default.Id),
/// 			TriggerArn:       pulumi.Sprintf("acs:fc:%v:%v:services/FCTestService/functions/printEvent/triggers/testtrigger", defaultGetRegions.Regions[0].Id, _default.Id),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.cdn.FcTrigger;
/// import com.pulumi.alicloud.cdn.FcTriggerArgs;
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
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var defaultGetRegions = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var example = new FcTrigger("example", FcTriggerArgs.builder()
///             .eventMetaName("LogFileCreated")
///             .eventMetaVersion("1.0.0")
///             .notes("example_value")
///             .roleArn(String.format("acs:ram::%s:role/aliyuncdneventnotificationrole", default_.id()))
///             .sourceArn(String.format("acs:cdn:*:%s:domain/example.com", default_.id()))
///             .triggerArn(String.format("acs:fc:%s:%s:services/FCTestService/functions/printEvent/triggers/testtrigger", defaultGetRegions.regions()[0].id(),default_.id()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:cdn:FcTrigger
///     properties:
///       eventMetaName: LogFileCreated
///       eventMetaVersion: 1.0.0
///       notes: example_value
///       roleArn: acs:ram::${default.id}:role/aliyuncdneventnotificationrole
///       sourceArn: acs:cdn:*:${default.id}:domain/example.com
///       triggerArn: acs:fc:${defaultGetRegions.regions[0].id}:${default.id}:services/FCTestService/functions/printEvent/triggers/testtrigger
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   defaultGetRegions:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CDN Fc Trigger can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cdn/fcTrigger:FcTrigger example <trigger_arn>
/// ```
class FcTrigger extends pulumi.CustomResource {
  /// The name of the Event.
  late final pulumi.Output<String> eventMetaName;
  /// The version of the Event.
  late final pulumi.Output<String> eventMetaVersion;
  /// The function arn. The value formats as `acs:fc:{RegionID}:{AccountID}:{Filter}`.
  late final pulumi.Output<String?> functionArn;
  /// The Note information.
  late final pulumi.Output<String> notes;
  /// The role authorized by RAM. The value formats as `acs:ram::{AccountID}:role/{RoleName}`.
  late final pulumi.Output<String> roleArn;
  /// Resources and filters for event listening. The value formats as `acs:cdn:{RegionID}:{AccountID}:{Filter}`.
  late final pulumi.Output<String> sourceArn;
  /// The trigger corresponding to the function Compute Service. The value formats as `acs:fc:{RegionID}:{AccountID}:{Filter}`. See [Create a CDN Fc Trigger](https://www.alibabacloud.com/help/en/cdn/developer-reference/api-cdn-2018-05-10-addfctrigger) for more details.
  late final pulumi.Output<String> triggerArn;

  /// Creates a new [FcTrigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FcTrigger]. {@macro pulumi_cdn_fc_trigger_fc_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FcTrigger(
    String name, {
    FcTriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cdn/fcTrigger:FcTrigger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.eventMetaName = registerOutput<String>('eventMetaName');
    this.eventMetaVersion = registerOutput<String>('eventMetaVersion');
    this.functionArn = registerOutput<String?>('functionArn');
    this.notes = registerOutput<String>('notes');
    this.roleArn = registerOutput<String>('roleArn');
    this.sourceArn = registerOutput<String>('sourceArn');
    this.triggerArn = registerOutput<String>('triggerArn');
  }
}
