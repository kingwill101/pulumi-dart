import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_args.dart';
import 'listener_forwarded_for_config.dart';
import 'listener_state.dart';

/// Provides a Global Accelerator (GA) Listener resource.
///
/// For information about Global Accelerator (GA) Listener and how to use it, see [What is Listener](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createlistener).
///
/// &gt; **NOTE:** Available since v1.111.0.
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
/// const _default = new alicloud.ga.Accelerator("default", {
///     duration: 1,
///     autoUseCoupon: true,
///     spec: "1",
/// });
/// const defaultBandwidthPackage = new alicloud.ga.BandwidthPackage("default", {
///     bandwidth: 100,
///     type: "Basic",
///     bandwidthType: "Basic",
///     paymentType: "PayAsYouGo",
///     billingType: "PayBy95",
///     ratio: 30,
/// });
/// const defaultBandwidthPackageAttachment = new alicloud.ga.BandwidthPackageAttachment("default", {
///     acceleratorId: _default.id,
///     bandwidthPackageId: defaultBandwidthPackage.id,
/// });
/// const defaultListener = new alicloud.ga.Listener("default", {
///     acceleratorId: defaultBandwidthPackageAttachment.acceleratorId,
///     portRanges: [{
///         fromPort: 80,
///         toPort: 80,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ga.Accelerator("default",
///     duration=1,
///     auto_use_coupon=True,
///     spec="1")
/// default_bandwidth_package = alicloud.ga.BandwidthPackage("default",
///     bandwidth=100,
///     type="Basic",
///     bandwidth_type="Basic",
///     payment_type="PayAsYouGo",
///     billing_type="PayBy95",
///     ratio=30)
/// default_bandwidth_package_attachment = alicloud.ga.BandwidthPackageAttachment("default",
///     accelerator_id=default.id,
///     bandwidth_package_id=default_bandwidth_package.id)
/// default_listener = alicloud.ga.Listener("default",
///     accelerator_id=default_bandwidth_package_attachment.accelerator_id,
///     port_ranges=[{
///         "from_port": 80,
///         "to_port": 80,
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
///     var @default = new AliCloud.Ga.Accelerator("default", new()
///     {
///         Duration = 1,
///         AutoUseCoupon = true,
///         Spec = "1",
///     });
///
///     var defaultBandwidthPackage = new AliCloud.Ga.BandwidthPackage("default", new()
///     {
///         Bandwidth = 100,
///         Type = "Basic",
///         BandwidthType = "Basic",
///         PaymentType = "PayAsYouGo",
///         BillingType = "PayBy95",
///         Ratio = 30,
///     });
///
///     var defaultBandwidthPackageAttachment = new AliCloud.Ga.BandwidthPackageAttachment("default", new()
///     {
///         AcceleratorId = @default.Id,
///         BandwidthPackageId = defaultBandwidthPackage.Id,
///     });
///
///     var defaultListener = new AliCloud.Ga.Listener("default", new()
///     {
///         AcceleratorId = defaultBandwidthPackageAttachment.AcceleratorId,
///         PortRanges = new[]
///         {
///             new AliCloud.Ga.Inputs.ListenerPortRangeArgs
///             {
///                 FromPort = 80,
///                 ToPort = 80,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ga.NewAccelerator(ctx, "default", &ga.AcceleratorArgs{
/// 			Duration:      pulumi.Int(1),
/// 			AutoUseCoupon: pulumi.Bool(true),
/// 			Spec:          pulumi.String("1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBandwidthPackage, err := ga.NewBandwidthPackage(ctx, "default", &ga.BandwidthPackageArgs{
/// 			Bandwidth:     pulumi.Int(100),
/// 			Type:          pulumi.String("Basic"),
/// 			BandwidthType: pulumi.String("Basic"),
/// 			PaymentType:   pulumi.String("PayAsYouGo"),
/// 			BillingType:   pulumi.String("PayBy95"),
/// 			Ratio:         pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBandwidthPackageAttachment, err := ga.NewBandwidthPackageAttachment(ctx, "default", &ga.BandwidthPackageAttachmentArgs{
/// 			AcceleratorId:      _default.ID(),
/// 			BandwidthPackageId: defaultBandwidthPackage.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ga.NewListener(ctx, "default", &ga.ListenerArgs{
/// 			AcceleratorId: defaultBandwidthPackageAttachment.AcceleratorId,
/// 			PortRanges: ga.ListenerPortRangeArray{
/// 				&ga.ListenerPortRangeArgs{
/// 					FromPort: pulumi.Int(80),
/// 					ToPort:   pulumi.Int(80),
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
/// import com.pulumi.alicloud.ga.Accelerator;
/// import com.pulumi.alicloud.ga.AcceleratorArgs;
/// import com.pulumi.alicloud.ga.BandwidthPackage;
/// import com.pulumi.alicloud.ga.BandwidthPackageArgs;
/// import com.pulumi.alicloud.ga.BandwidthPackageAttachment;
/// import com.pulumi.alicloud.ga.BandwidthPackageAttachmentArgs;
/// import com.pulumi.alicloud.ga.Listener;
/// import com.pulumi.alicloud.ga.ListenerArgs;
/// import com.pulumi.alicloud.ga.inputs.ListenerPortRangeArgs;
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
///         var default_ = new Accelerator("default", AcceleratorArgs.builder()
///             .duration(1)
///             .autoUseCoupon(true)
///             .spec("1")
///             .build());
///
///         var defaultBandwidthPackage = new BandwidthPackage("defaultBandwidthPackage", BandwidthPackageArgs.builder()
///             .bandwidth(100)
///             .type("Basic")
///             .bandwidthType("Basic")
///             .paymentType("PayAsYouGo")
///             .billingType("PayBy95")
///             .ratio(30)
///             .build());
///
///         var defaultBandwidthPackageAttachment = new BandwidthPackageAttachment("defaultBandwidthPackageAttachment", BandwidthPackageAttachmentArgs.builder()
///             .acceleratorId(default_.id())
///             .bandwidthPackageId(defaultBandwidthPackage.id())
///             .build());
///
///         var defaultListener = new Listener("defaultListener", ListenerArgs.builder()
///             .acceleratorId(defaultBandwidthPackageAttachment.acceleratorId())
///             .portRanges(ListenerPortRangeArgs.builder()
///                 .fromPort(80)
///                 .toPort(80)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:ga:Accelerator
///     properties:
///       duration: 1
///       autoUseCoupon: true
///       spec: '1'
///   defaultBandwidthPackage:
///     type: alicloud:ga:BandwidthPackage
///     name: default
///     properties:
///       bandwidth: 100
///       type: Basic
///       bandwidthType: Basic
///       paymentType: PayAsYouGo
///       billingType: PayBy95
///       ratio: 30
///   defaultBandwidthPackageAttachment:
///     type: alicloud:ga:BandwidthPackageAttachment
///     name: default
///     properties:
///       acceleratorId: ${default.id}
///       bandwidthPackageId: ${defaultBandwidthPackage.id}
///   defaultListener:
///     type: alicloud:ga:Listener
///     name: default
///     properties:
///       acceleratorId: ${defaultBandwidthPackageAttachment.acceleratorId}
///       portRanges:
///         - fromPort: 80
///           toPort: 80
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ga Listener can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/listener:Listener example <id>
/// ```
class Listener extends pulumi.CustomResource {
  /// The accelerator id.
  late final pulumi.Output<String> acceleratorId;

  /// The certificates of the listener. See `certificates` below.
  /// &gt; **NOTE:** This parameter needs to be configured only for monitoring of the `HTTPS` protocol.
  late final pulumi.Output<List<Map<String, dynamic>>?> certificates;

  /// The clientAffinity of the listener. Default value: `NONE`. Valid values:
  /// - `NONE`: client affinity is not maintained, that is, connection requests from the same client cannot always be directed to the same terminal node.
  /// - `SOURCE_IP`: maintain client affinity. When a client accesses a stateful application, all requests from the same client can be directed to the same terminal node, regardless of the source port and protocol.
  late final pulumi.Output<String?> clientAffinity;

  /// The description of the listener.
  late final pulumi.Output<String?> description;

  /// The XForward headers. See `forwarded_for_config` below.
  late final pulumi.Output<ListenerForwardedForConfig?> forwardedForConfig;

  /// The maximum version of the HTTP protocol. Default Value: `http2`. Valid values: `http1.1`, `http2`, `http3`.
  /// &gt; **NOTE:** `http_version` is only valid when `protocol` is `HTTPS`.
  late final pulumi.Output<String> httpVersion;

  /// The timeout period of idle connections. Unit: seconds. Valid values:
  /// - If you set `protocol` to `TCP`. Default Value: `900`. Valid values: `10` to `900`.
  /// - If you set `protocol` to `UDP`. Default Value: `20`. Valid values: `10` to `20`.
  /// - If you set `protocol` to `HTTP` or `HTTPS`. Default Value: `15`. Valid values: `1` to `60`.
  late final pulumi.Output<int> idleTimeout;

  /// The routing type of the listener. Default Value: `Standard`. Valid values:
  /// - `Standard`: intelligent routing.
  /// - `CustomRouting`: custom routing.
  late final pulumi.Output<String?> listenerType;

  /// The name of the listener. The length of the name is 2-128 characters. It starts with uppercase and lowercase letters or Chinese characters. It can contain numbers and underscores and dashes.
  late final pulumi.Output<String> name;

  /// The portRanges of the listener. See `port_ranges` below.
  /// &gt; **NOTE:** For `HTTP` or `HTTPS` protocol monitoring, only one monitoring port can be configured, that is, the start monitoring port and end monitoring port should be the same.
  late final pulumi.Output<List<Map<String, dynamic>>> portRanges;

  /// Type of network transport protocol monitored. Default value: `TCP`. Valid values: `TCP`, `UDP`, `HTTP`, `HTTPS`.
  late final pulumi.Output<String?> protocol;

  /// The proxy protocol of the listener. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> proxyProtocol;

  /// The timeout period for HTTP or HTTPS requests. Unit: seconds. Default Value: `60`. Valid values: `1` to `180`.
  /// &gt; **NOTE:** `request_timeout` is only valid when `protocol` is `HTTP` or `HTTPS`.
  late final pulumi.Output<int> requestTimeout;

  /// The ID of the security policy. **NOTE:** Only `HTTPS` listeners support this parameter. Valid values:
  late final pulumi.Output<String> securityPolicyId;

  /// The status of the listener.
  late final pulumi.Output<String> status;

  /// Creates a new [Listener].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Listener]. {@macro pulumi_ga_listener_listener_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Listener(
    String name, {
    ListenerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ga/listener:Listener',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceleratorId = registerOutput<String>('acceleratorId');
    certificates = registerOutput<List<Map<String, dynamic>>?>('certificates');
    clientAffinity = registerOutput<String?>('clientAffinity');
    description = registerOutput<String?>('description');
    forwardedForConfig = registerOutput<ListenerForwardedForConfig?>(
      'forwardedForConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ListenerForwardedForConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    httpVersion = registerOutput<String>('httpVersion');
    idleTimeout = registerOutput<int>('idleTimeout');
    listenerType = registerOutput<String?>('listenerType');
    this.name = registerOutput<String>('name');
    portRanges = registerOutput<List<Map<String, dynamic>>>('portRanges');
    protocol = registerOutput<String?>('protocol');
    proxyProtocol = registerOutput<bool?>('proxyProtocol');
    requestTimeout = registerOutput<int>('requestTimeout');
    securityPolicyId = registerOutput<String>('securityPolicyId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [Listener] resource's state with the given [name] and [id].
  static Listener get(
    String name,
    pulumi.Input<String> id, {
    ListenerState? state,
  }) {
    return Listener._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Listener._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ga/listener:Listener',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceleratorId = registerOutput<String>('acceleratorId');
    certificates = registerOutput<List<Map<String, dynamic>>?>('certificates');
    clientAffinity = registerOutput<String?>('clientAffinity');
    description = registerOutput<String?>('description');
    forwardedForConfig = registerOutput<ListenerForwardedForConfig?>(
      'forwardedForConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ListenerForwardedForConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    httpVersion = registerOutput<String>('httpVersion');
    idleTimeout = registerOutput<int>('idleTimeout');
    listenerType = registerOutput<String?>('listenerType');
    this.name = registerOutput<String>('name');
    portRanges = registerOutput<List<Map<String, dynamic>>>('portRanges');
    protocol = registerOutput<String?>('protocol');
    proxyProtocol = registerOutput<bool?>('proxyProtocol');
    requestTimeout = registerOutput<int>('requestTimeout');
    securityPolicyId = registerOutput<String>('securityPolicyId');
    status = registerOutput<String>('status');
  }
}
