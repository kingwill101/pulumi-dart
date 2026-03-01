import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_args.dart';
import 'zone_state.dart';
import 'zone_user_info.dart';

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
/// const foo = new alicloud.pvtz.Zone("foo", {zoneName: "foo.example.com"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// foo = alicloud.pvtz.Zone("foo", zone_name="foo.example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new AliCloud.Pvtz.Zone("foo", new()
///     {
///         ZoneName = "foo.example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pvtz"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pvtz.NewZone(ctx, "foo", &pvtz.ZoneArgs{
/// 			ZoneName: pulumi.String("foo.example.com"),
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
/// import com.pulumi.alicloud.pvtz.Zone;
/// import com.pulumi.alicloud.pvtz.ZoneArgs;
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
///         var foo = new Zone("foo", ZoneArgs.builder()
///             .zoneName("foo.example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: alicloud:pvtz:Zone
///     properties:
///       zoneName: foo.example.com
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Private Zone can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:pvtz/zone:Zone example abc123456
/// ```
class Zone extends pulumi.CustomResource {
  /// Whether the Private Zone is ptr.
  late final pulumi.Output<bool> isPtr;
  /// The language. Valid values: "zh", "en", "jp".
  late final pulumi.Output<String?> lang;
  /// The name of the Private Zone. The `name` has been deprecated from provider version 1.107.0. Please use 'zone_name' instead.
  late final pulumi.Output<String> name;
  /// The recursive DNS proxy. Valid values:
  /// - ZONE: indicates that the recursive DNS proxy is disabled.
  /// - RECORD: indicates that the recursive DNS proxy is enabled.
  /// Default to "ZONE".
  late final pulumi.Output<String?> proxyPattern;
  /// The count of the Private Zone Record.
  late final pulumi.Output<int> recordCount;
  /// The remark of the Private Zone.
  late final pulumi.Output<String?> remark;
  /// The Id of resource group which the Private Zone belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// The status of the host synchronization task. Valid values:  `ON`,`OFF`. **NOTE:** You can update the `sync_status` to enable/disable the host synchronization task.
  late final pulumi.Output<String?> syncStatus;
  /// The tags of the Private Zone.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The IP address of the client.
  late final pulumi.Output<String?> userClientIp;
  /// The user information of the host synchronization task. See `user_info` below.
  late final pulumi.Output<List<ZoneUserInfo>> userInfos;
  /// The zone_name of the Private Zone. The `zone_name` is required when the value of the `name`  is Empty.
  late final pulumi.Output<String> zoneName;

  /// Creates a new [Zone].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Zone]. {@macro pulumi_pvtz_zone_zone_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Zone(
    String name, {
    ZoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pvtz/zone:Zone',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.isPtr = registerOutput<bool>('isPtr');
    this.lang = registerOutput<String?>('lang');
    this.name = registerOutput<String>('name');
    this.proxyPattern = registerOutput<String?>('proxyPattern');
    this.recordCount = registerOutput<int>('recordCount');
    this.remark = registerOutput<String?>('remark');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.syncStatus = registerOutput<String?>('syncStatus');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.userClientIp = registerOutput<String?>('userClientIp');
    this.userInfos = registerOutput<List<ZoneUserInfo>>('userInfos');
    this.zoneName = registerOutput<String>('zoneName');
  }

  /// Gets an existing [Zone] resource's state with the given [name] and [id].
  static Zone get(
    String name,
    pulumi.Input<String> id, {
    ZoneState? state,
  }) {
    return Zone._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Zone._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pvtz/zone:Zone',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.isPtr = registerOutput<bool>('isPtr');
    this.lang = registerOutput<String?>('lang');
    this.name = registerOutput<String>('name');
    this.proxyPattern = registerOutput<String?>('proxyPattern');
    this.recordCount = registerOutput<int>('recordCount');
    this.remark = registerOutput<String?>('remark');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.syncStatus = registerOutput<String?>('syncStatus');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.userClientIp = registerOutput<String?>('userClientIp');
    this.userInfos = registerOutput<List<ZoneUserInfo>>('userInfos');
    this.zoneName = registerOutput<String>('zoneName');
  }
}
