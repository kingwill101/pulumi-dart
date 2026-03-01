import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_account_args.dart';

/// Provides a Amqp Static Account resource.
///
/// For information about Amqp Static Account and how to use it, see [What is Static Account](https://www.alibabacloud.com/help/en/message-queue-for-rabbitmq/latest/create-a-pair-of-static-username-and-password).
///
/// > **NOTE:** Available since v1.195.0.
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
/// const accessKey = config.get("accessKey") || "access_key";
/// const secretKey = config.get("secretKey") || "secret_key";
/// const _default = new alicloud.amqp.Instance("default", {
///     instanceType: "enterprise",
///     maxTps: "3000",
///     queueCapacity: "200",
///     storageSize: "700",
///     supportEip: false,
///     maxEipTps: "128",
///     paymentType: "Subscription",
///     period: 1,
/// });
/// const defaultStaticAccount = new alicloud.amqp.StaticAccount("default", {
///     instanceId: _default.id,
///     accessKey: accessKey,
///     secretKey: secretKey,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// access_key = config.get("accessKey")
/// if access_key is None:
///     access_key = "access_key"
/// secret_key = config.get("secretKey")
/// if secret_key is None:
///     secret_key = "secret_key"
/// default = alicloud.amqp.Instance("default",
///     instance_type="enterprise",
///     max_tps="3000",
///     queue_capacity="200",
///     storage_size="700",
///     support_eip=False,
///     max_eip_tps="128",
///     payment_type="Subscription",
///     period=1)
/// default_static_account = alicloud.amqp.StaticAccount("default",
///     instance_id=default.id,
///     access_key=access_key,
///     secret_key=secret_key)
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
///     var accessKey = config.Get("accessKey") ?? "access_key";
///     var secretKey = config.Get("secretKey") ?? "secret_key";
///     var @default = new AliCloud.Amqp.Instance("default", new()
///     {
///         InstanceType = "enterprise",
///         MaxTps = "3000",
///         QueueCapacity = "200",
///         StorageSize = "700",
///         SupportEip = false,
///         MaxEipTps = "128",
///         PaymentType = "Subscription",
///         Period = 1,
///     });
///
///     var defaultStaticAccount = new AliCloud.Amqp.StaticAccount("default", new()
///     {
///         InstanceId = @default.Id,
///         AccessKey = accessKey,
///         SecretKey = secretKey,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/amqp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		accessKey := "access_key"
/// 		if param := cfg.Get("accessKey"); param != "" {
/// 			accessKey = param
/// 		}
/// 		secretKey := "secret_key"
/// 		if param := cfg.Get("secretKey"); param != "" {
/// 			secretKey = param
/// 		}
/// 		_default, err := amqp.NewInstance(ctx, "default", &amqp.InstanceArgs{
/// 			InstanceType:  pulumi.String("enterprise"),
/// 			MaxTps:        pulumi.String("3000"),
/// 			QueueCapacity: pulumi.String("200"),
/// 			StorageSize:   pulumi.String("700"),
/// 			SupportEip:    pulumi.Bool(false),
/// 			MaxEipTps:     pulumi.String("128"),
/// 			PaymentType:   pulumi.String("Subscription"),
/// 			Period:        pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amqp.NewStaticAccount(ctx, "default", &amqp.StaticAccountArgs{
/// 			InstanceId: _default.ID(),
/// 			AccessKey:  pulumi.String(accessKey),
/// 			SecretKey:  pulumi.String(secretKey),
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
/// import com.pulumi.alicloud.amqp.Instance;
/// import com.pulumi.alicloud.amqp.InstanceArgs;
/// import com.pulumi.alicloud.amqp.StaticAccount;
/// import com.pulumi.alicloud.amqp.StaticAccountArgs;
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
///         final var accessKey = config.get("accessKey").orElse("access_key");
///         final var secretKey = config.get("secretKey").orElse("secret_key");
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .instanceType("enterprise")
///             .maxTps("3000")
///             .queueCapacity("200")
///             .storageSize("700")
///             .supportEip(false)
///             .maxEipTps("128")
///             .paymentType("Subscription")
///             .period(1)
///             .build());
///
///         var defaultStaticAccount = new StaticAccount("defaultStaticAccount", StaticAccountArgs.builder()
///             .instanceId(default_.id())
///             .accessKey(accessKey)
///             .secretKey(secretKey)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   accessKey:
///     type: string
///     default: access_key
///   secretKey:
///     type: string
///     default: secret_key
/// resources:
///   default:
///     type: alicloud:amqp:Instance
///     properties:
///       instanceType: enterprise
///       maxTps: 3000
///       queueCapacity: 200
///       storageSize: 700
///       supportEip: false
///       maxEipTps: 128
///       paymentType: Subscription
///       period: 1
///   defaultStaticAccount:
///     type: alicloud:amqp:StaticAccount
///     name: default
///     properties:
///       instanceId: ${default.id}
///       accessKey: ${accessKey}
///       secretKey: ${secretKey}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Amqp Static Account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:amqp/staticAccount:StaticAccount example <instance_id>:<access_key>
/// ```
class StaticAccount extends pulumi.CustomResource {
  /// Access key.
  late final pulumi.Output<String> accessKey;
  /// The timestamp that indicates when the pair of static username and password was created.
  late final pulumi.Output<int> createTime;
  /// Amqp instance ID.
  late final pulumi.Output<String> instanceId;
  /// The ID of the user's primary account.
  late final pulumi.Output<String> masterUid;
  /// The static password.
  late final pulumi.Output<String> password;
  /// Secret key.
  late final pulumi.Output<String> secretKey;
  /// The static username.
  late final pulumi.Output<String> userName;

  /// Creates a new [StaticAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StaticAccount]. {@macro pulumi_amqp_static_account_static_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StaticAccount(
    String name, {
    StaticAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:amqp/staticAccount:StaticAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessKey = registerOutput<String>('accessKey');
    this.createTime = registerOutput<int>('createTime');
    this.instanceId = registerOutput<String>('instanceId');
    this.masterUid = registerOutput<String>('masterUid');
    this.password = registerOutput<String>('password');
    this.secretKey = registerOutput<String>('secretKey');
    this.userName = registerOutput<String>('userName');
  }
}
