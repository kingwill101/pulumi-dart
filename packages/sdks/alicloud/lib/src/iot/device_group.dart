import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_group_args.dart';
import 'device_group_state.dart';

/// Provides a Iot Device Group resource.
///
/// For information about Iot Device Group and how to use it, see [What is Device Group](https://www.alibabacloud.com/help/product/30520.htm).
///
/// &gt; **NOTE:** Available since v1.134.0.
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
/// const name = config.get("name") || "tfexample";
/// const example = new alicloud.iot.DeviceGroup("example", {groupName: name});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfexample"
/// example = alicloud.iot.DeviceGroup("example", group_name=name)
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
///     var name = config.Get("name") ?? "tfexample";
///     var example = new AliCloud.Iot.DeviceGroup("example", new()
///     {
///         GroupName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/iot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tfexample"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := iot.NewDeviceGroup(ctx, "example", &iot.DeviceGroupArgs{
/// 			GroupName: pulumi.String(name),
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
/// import com.pulumi.alicloud.iot.DeviceGroup;
/// import com.pulumi.alicloud.iot.DeviceGroupArgs;
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
///         final var name = config.get("name").orElse("tfexample");
///         var example = new DeviceGroup("example", DeviceGroupArgs.builder()
///             .groupName(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfexample
/// resources:
///   example:
///     type: alicloud:iot:DeviceGroup
///     properties:
///       groupName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Iot Device Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:iot/deviceGroup:DeviceGroup example <id>
/// ```
class DeviceGroup extends pulumi.CustomResource {
  /// The GroupDesc of the device group.
  late final pulumi.Output<String?> groupDesc;
  /// The GroupName of the device group.
  late final pulumi.Output<String> groupName;
  /// The id of the Iot Instance.
  late final pulumi.Output<String?> iotInstanceId;
  /// The id of the SuperGroup.
  late final pulumi.Output<String?> superGroupId;

  /// Creates a new [DeviceGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeviceGroup]. {@macro pulumi_iot_device_group_device_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeviceGroup(
    String name, {
    DeviceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:iot/deviceGroup:DeviceGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    groupDesc = registerOutput<String?>('groupDesc');
    groupName = registerOutput<String>('groupName');
    iotInstanceId = registerOutput<String?>('iotInstanceId');
    superGroupId = registerOutput<String?>('superGroupId');
  }

  /// Gets an existing [DeviceGroup] resource's state with the given [name] and [id].
  static DeviceGroup get(
    String name,
    pulumi.Input<String> id, {
    DeviceGroupState? state,
  }) {
    return DeviceGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DeviceGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:iot/deviceGroup:DeviceGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    groupDesc = registerOutput<String?>('groupDesc');
    groupName = registerOutput<String>('groupName');
    iotInstanceId = registerOutput<String?>('iotInstanceId');
    superGroupId = registerOutput<String?>('superGroupId');
  }
}
