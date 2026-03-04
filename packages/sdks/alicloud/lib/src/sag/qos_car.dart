import 'package:pulumi/pulumi.dart' as pulumi;
import 'qos_car_args.dart';
import 'qos_car_state.dart';

/// Provides a Sag Qos Car resource.
///
/// For information about Sag Qos Car and how to use it, see [What is Qos Car](https://www.alibabacloud.com/help/en/smart-access-gateway/latest/createqoscar).
///
/// &gt; **NOTE:** Available since v1.60.0.
///
/// &gt; **NOTE:** Only the following regions support. [`cn-shanghai`, `cn-shanghai-finance-1`, `cn-hongkong`, `ap-southeast-1`, `ap-southeast-3`, `ap-southeast-5`, `ap-northeast-1`, `eu-central-1`]
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
/// const name = config.get("name") || "tf_example";
/// const _default = new alicloud.sag.Qos("default", {name: name});
/// const defaultQosCar = new alicloud.sag.QosCar("default", {
///     qosId: _default.id,
///     name: name,
///     description: name,
///     priority: 1,
///     limitType: "Absolute",
///     minBandwidthAbs: 10,
///     maxBandwidthAbs: 20,
///     percentSourceType: "InternetUpBandwidth",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.sag.Qos("default", name=name)
/// default_qos_car = alicloud.sag.QosCar("default",
///     qos_id=default.id,
///     name=name,
///     description=name,
///     priority=1,
///     limit_type="Absolute",
///     min_bandwidth_abs=10,
///     max_bandwidth_abs=20,
///     percent_source_type="InternetUpBandwidth")
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
///     var name = config.Get("name") ?? "tf_example";
///     var @default = new AliCloud.Sag.Qos("default", new()
///     {
///         Name = name,
///     });
///
///     var defaultQosCar = new AliCloud.Sag.QosCar("default", new()
///     {
///         QosId = @default.Id,
///         Name = name,
///         Description = name,
///         Priority = 1,
///         LimitType = "Absolute",
///         MinBandwidthAbs = 10,
///         MaxBandwidthAbs = 20,
///         PercentSourceType = "InternetUpBandwidth",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sag"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := sag.NewQos(ctx, "default", &sag.QosArgs{
/// 			Name: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sag.NewQosCar(ctx, "default", &sag.QosCarArgs{
/// 			QosId:             _default.ID(),
/// 			Name:              pulumi.String(name),
/// 			Description:       pulumi.String(name),
/// 			Priority:          pulumi.Int(1),
/// 			LimitType:         pulumi.String("Absolute"),
/// 			MinBandwidthAbs:   pulumi.Int(10),
/// 			MaxBandwidthAbs:   pulumi.Int(20),
/// 			PercentSourceType: pulumi.String("InternetUpBandwidth"),
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
/// import com.pulumi.alicloud.sag.Qos;
/// import com.pulumi.alicloud.sag.QosArgs;
/// import com.pulumi.alicloud.sag.QosCar;
/// import com.pulumi.alicloud.sag.QosCarArgs;
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
///         var default_ = new Qos("default", QosArgs.builder()
///             .name(name)
///             .build());
///
///         var defaultQosCar = new QosCar("defaultQosCar", QosCarArgs.builder()
///             .qosId(default_.id())
///             .name(name)
///             .description(name)
///             .priority(1)
///             .limitType("Absolute")
///             .minBandwidthAbs(10)
///             .maxBandwidthAbs(20)
///             .percentSourceType("InternetUpBandwidth")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   default:
///     type: alicloud:sag:Qos
///     properties:
///       name: ${name}
///   defaultQosCar:
///     type: alicloud:sag:QosCar
///     name: default
///     properties:
///       qosId: ${default.id}
///       name: ${name}
///       description: ${name}
///       priority: '1'
///       limitType: Absolute
///       minBandwidthAbs: '10'
///       maxBandwidthAbs: '20'
///       percentSourceType: InternetUpBandwidth
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// The Sag Qos Car can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sag/qosCar:QosCar example <qos_id>:<qos_car_id>
/// ```
class QosCar extends pulumi.CustomResource {
  /// The description of the QoS speed limiting rule.
  late final pulumi.Output<String?> description;

  /// The speed limiting method. Valid values: `Absolute`, `Percent`.
  late final pulumi.Output<String> limitType;

  /// The maximum bandwidth allowed for the stream specified in the quintuple rule. This parameter is required when the value of the LimitType is Absolute.
  late final pulumi.Output<int?> maxBandwidthAbs;

  /// The maximum bandwidth percentage allowed for the stream specified in the quintuple rule. It is based on the maximum upstream bandwidth you set for the associated Smart Access Gateway (SAG) instance.This parameter is required when the value of the LimitType parameter is Percent.
  late final pulumi.Output<int?> maxBandwidthPercent;

  /// The minimum bandwidth allowed for the stream specified in the quintuple rule. This parameter is required when the value of the LimitType parameter is Absolute.
  late final pulumi.Output<int?> minBandwidthAbs;

  /// The minimum bandwidth percentage allowed for the stream specified in the quintuple rule. It is based on the maximum upstream bandwidth you set for the associated SAG instance.This parameter is required when the value of the LimitType parameter is Percent.
  late final pulumi.Output<int?> minBandwidthPercent;

  /// The name of the QoS speed limiting rule..
  late final pulumi.Output<String> name;

  /// The bandwidth type when the speed is limited based on percentage. Valid values: CcnBandwidth, InternetUpBandwidth.The default value is InternetUpBandwidth.
  late final pulumi.Output<String?> percentSourceType;

  /// The priority of the specified stream.
  late final pulumi.Output<int> priority;

  /// The instance ID of the QoS.
  late final pulumi.Output<String> qosId;

  /// Creates a new [QosCar].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QosCar]. {@macro pulumi_sag_qos_car_qos_car_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QosCar(String name, {QosCarArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:sag/qosCar:QosCar',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    description = registerOutput<String?>('description');
    limitType = registerOutput<String>('limitType');
    maxBandwidthAbs = registerOutput<int?>('maxBandwidthAbs');
    maxBandwidthPercent = registerOutput<int?>('maxBandwidthPercent');
    minBandwidthAbs = registerOutput<int?>('minBandwidthAbs');
    minBandwidthPercent = registerOutput<int?>('minBandwidthPercent');
    this.name = registerOutput<String>('name');
    percentSourceType = registerOutput<String?>('percentSourceType');
    priority = registerOutput<int>('priority');
    qosId = registerOutput<String>('qosId');
  }

  /// Gets an existing [QosCar] resource's state with the given [name] and [id].
  static QosCar get(
    String name,
    pulumi.Input<String> id, {
    QosCarState? state,
  }) {
    return QosCar._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  QosCar._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:sag/qosCar:QosCar',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    limitType = registerOutput<String>('limitType');
    maxBandwidthAbs = registerOutput<int?>('maxBandwidthAbs');
    maxBandwidthPercent = registerOutput<int?>('maxBandwidthPercent');
    minBandwidthAbs = registerOutput<int?>('minBandwidthAbs');
    minBandwidthPercent = registerOutput<int?>('minBandwidthPercent');
    this.name = registerOutput<String>('name');
    percentSourceType = registerOutput<String?>('percentSourceType');
    priority = registerOutput<int>('priority');
    qosId = registerOutput<String>('qosId');
  }
}
