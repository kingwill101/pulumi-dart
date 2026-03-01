import 'package:pulumi/pulumi.dart' as pulumi;
import 'value_added_service_args.dart';
import 'value_added_service_state.dart';

/// Provides a KMS Value Added Service resource.
///
/// Value Added Service.
///
/// For information about KMS Value Added Service and how to use it, see [What is Value Added Service](https://next.api.alibabacloud.com/document/BssOpenApi/2017-12-14/CreateInstance).
///
/// > **NOTE:** Available since v1.267.0.
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
/// const _default = new alicloud.kms.ValueAddedService("default", {
///     valueAddedService: "2",
///     period: 1,
///     paymentType: "Subscription",
///     renewPeriod: 1,
///     renewStatus: "AutoRenewal",
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
/// default = alicloud.kms.ValueAddedService("default",
///     value_added_service="2",
///     period=1,
///     payment_type="Subscription",
///     renew_period=1,
///     renew_status="AutoRenewal")
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
///     var @default = new AliCloud.Kms.ValueAddedService("default", new()
///     {
///         ServiceType = "2",
///         Period = 1,
///         PaymentType = "Subscription",
///         RenewPeriod = 1,
///         RenewStatus = "AutoRenewal",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
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
/// 		_, err := kms.NewValueAddedService(ctx, "default", &kms.ValueAddedServiceArgs{
/// 			ValueAddedService: pulumi.String("2"),
/// 			Period:            pulumi.Int(1),
/// 			PaymentType:       pulumi.String("Subscription"),
/// 			RenewPeriod:       pulumi.Int(1),
/// 			RenewStatus:       pulumi.String("AutoRenewal"),
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
/// import com.pulumi.alicloud.kms.ValueAddedService;
/// import com.pulumi.alicloud.kms.ValueAddedServiceArgs;
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
///         var default_ = new ValueAddedService("default", ValueAddedServiceArgs.builder()
///             .valueAddedService("2")
///             .period(1)
///             .paymentType("Subscription")
///             .renewPeriod(1)
///             .renewStatus("AutoRenewal")
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
///     type: alicloud:kms:ValueAddedService
///     properties:
///       valueAddedService: '2'
///       period: '1'
///       paymentType: Subscription
///       renewPeriod: '1'
///       renewStatus: AutoRenewal
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// KMS Value Added Service can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:kms/valueAddedService:ValueAddedService example <id>
/// ```
class ValueAddedService extends pulumi.CustomResource {
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// The payment type of the resource
  late final pulumi.Output<String> paymentType;
  late final pulumi.Output<int?> period;
  /// The region ID of the resource
  late final pulumi.Output<String> regionId;
  /// Automatic renewal period, in years.
  ///
  /// > **NOTE:**  When setting `RenewalStatus` to `AutoRenewal`, it must be set.
  late final pulumi.Output<int?> renewPeriod;
  /// The renewal status of the specified instance. Valid values:
  ///
  /// - AutoRenewal: The instance is automatically renewed.
  /// - ManualRenewal: The instance is manually renewed.
  /// - NotRenewal: The instance is not renewed.
  late final pulumi.Output<String?> renewStatus;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// value added service type, Instance Backup 1 default key rotation 2 Expert service 3
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> valueAddedService;

  /// Creates a new [ValueAddedService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ValueAddedService]. {@macro pulumi_kms_value_added_service_value_added_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ValueAddedService(
    String name, {
    ValueAddedServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:kms/valueAddedService:ValueAddedService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.regionId = registerOutput<String>('regionId');
    this.renewPeriod = registerOutput<int?>('renewPeriod');
    this.renewStatus = registerOutput<String?>('renewStatus');
    this.status = registerOutput<String>('status');
    this.valueAddedService = registerOutput<String?>('valueAddedService');
  }

  /// Gets an existing [ValueAddedService] resource's state with the given [name] and [id].
  static ValueAddedService get(
    String name,
    pulumi.Input<String> id, {
    ValueAddedServiceState? state,
  }) {
    return ValueAddedService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ValueAddedService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:kms/valueAddedService:ValueAddedService',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.regionId = registerOutput<String>('regionId');
    this.renewPeriod = registerOutput<int?>('renewPeriod');
    this.renewStatus = registerOutput<String?>('renewStatus');
    this.status = registerOutput<String>('status');
    this.valueAddedService = registerOutput<String?>('valueAddedService');
  }
}
