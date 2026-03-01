import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_enterprise_instance_args.dart';
import 'registry_enterprise_instance_instance_endpoint.dart';

/// Provides a CR Instance resource.
///
///
/// For information about Container Registry Instance and how to use it, see [What is Container Registry](https://www.alibabacloud.com/help/en/acr/product-overview/what-is-container-registry).
///
/// For information about CR Instance and how to use it, see [What is Instance](https://www.alibabacloud.com/help/en/doc-detail/208144.htm).
///
/// > **NOTE:** Available since v1.124.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000000,
///     max: 99999999,
/// });
/// const defaultRegistryEnterpriseInstance = new alicloud.cr.RegistryEnterpriseInstance("default", {
///     paymentType: "Subscription",
///     period: 1,
///     renewPeriod: 1,
///     renewalStatus: "AutoRenewal",
///     instanceType: "Advanced",
///     instanceName: `${name}-${_default.result}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Integer("default",
///     min=10000000,
///     max=99999999)
/// default_registry_enterprise_instance = alicloud.cr.RegistryEnterpriseInstance("default",
///     payment_type="Subscription",
///     period=1,
///     renew_period=1,
///     renewal_status="AutoRenewal",
///     instance_type="Advanced",
///     instance_name=f"{name}-{default['result']}")
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000000,
///         Max = 99999999,
///     });
///
///     var defaultRegistryEnterpriseInstance = new AliCloud.CR.RegistryEnterpriseInstance("default", new()
///     {
///         PaymentType = "Subscription",
///         Period = 1,
///         RenewPeriod = 1,
///         RenewalStatus = "AutoRenewal",
///         InstanceType = "Advanced",
///         InstanceName = $"{name}-{@default.Result}",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cr"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000000,
/// 			Max: 99999999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cr.NewRegistryEnterpriseInstance(ctx, "default", &cr.RegistryEnterpriseInstanceArgs{
/// 			PaymentType:   pulumi.String("Subscription"),
/// 			Period:        pulumi.Int(1),
/// 			RenewPeriod:   pulumi.Int(1),
/// 			RenewalStatus: pulumi.String("AutoRenewal"),
/// 			InstanceType:  pulumi.String("Advanced"),
/// 			InstanceName:  pulumi.Sprintf("%v-%v", name, _default.Result),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.cr.RegistryEnterpriseInstance;
/// import com.pulumi.alicloud.cr.RegistryEnterpriseInstanceArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000000)
///             .max(99999999)
///             .build());
///
///         var defaultRegistryEnterpriseInstance = new RegistryEnterpriseInstance("defaultRegistryEnterpriseInstance", RegistryEnterpriseInstanceArgs.builder()
///             .paymentType("Subscription")
///             .period(1)
///             .renewPeriod(1)
///             .renewalStatus("AutoRenewal")
///             .instanceType("Advanced")
///             .instanceName(String.format("%s-%s", name,default_.result()))
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
///     type: random:Integer
///     properties:
///       min: 1e+07
///       max: 9.9999999e+07
///   defaultRegistryEnterpriseInstance:
///     type: alicloud:cr:RegistryEnterpriseInstance
///     name: default
///     properties:
///       paymentType: Subscription
///       period: 1
///       renewPeriod: 1
///       renewalStatus: AutoRenewal
///       instanceType: Advanced
///       instanceName: ${name}-${default.result}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CR Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cr/registryEnterpriseInstance:RegistryEnterpriseInstance example <id>
/// ```
class RegistryEnterpriseInstance extends pulumi.CustomResource {
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// . Field 'created_time' has been deprecated from provider version 1.235.0. New field 'create_time' instead.
  late final pulumi.Output<String> createdTime;
  /// Custom OSS Bucket name
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> customOssBucket;
  /// Whether to use the default OSS Bucket. Value:
  late final pulumi.Output<String?> defaultOssBucket;
  /// Expiration Time
  late final pulumi.Output<String> endTime;
  /// The security scan engine used by the Enterprise Edition of Container Image Service. Value:
  /// - `ACR`: Uses the Trivy scan engine provided by default.
  /// - `SAS`: uses the enhanced cloud security scan engine.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> imageScanner;
  /// (Available since v1.240.0) Instance Network Access Endpoint List
  late final pulumi.Output<List<RegistryEnterpriseInstanceInstanceEndpoint>> instanceEndpoints;
  /// InstanceName
  late final pulumi.Output<String> instanceName;
  /// The Value configuration of the Group 1 attribute of Container Mirror Service Enterprise Edition. Valid values:
  /// - `Basic`: Basic instance
  /// - `Standard`: Standard instance
  /// - `Advanced`: Advanced Edition Instance
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String> instanceType;
  /// An KMS encrypts password used to an instance. If the `password` is filled in, this field will be ignored.
  late final pulumi.Output<String?> kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating instance with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  late final pulumi.Output<Map<String, String>?> kmsEncryptionContext;
  /// The number of additional namespaces to purchase. The value is an integral multiple of `5`.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<int?> namespaceQuota;
  /// Login password, 8-32 digits, must contain at least two letters, symbols, or numbers
  late final pulumi.Output<String?> password;
  /// Payment type, value:
  /// - Subscription: Prepaid.
  late final pulumi.Output<String> paymentType;
  /// Prepaid cycle. The unit is Monthly, please enter an integer multiple of 12 for annual paid products.
  ///
  /// > **NOTE:**  must be set when creating a prepaid instance.
  ///
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<int?> period;
  /// RegionId
  late final pulumi.Output<String> regionId;
  /// Automatic renewal cycle, in months.
  ///
  /// > **NOTE:**  When `RenewalStatus` is set to `AutoRenewal`, it must be set.
  late final pulumi.Output<int?> renewPeriod;
  /// Automatic renewal status, value:
  /// - AutoRenewal: automatic renewal.
  /// - ManualRenewal: manual renewal.
  ///
  /// Default ManualRenewal.
  late final pulumi.Output<String> renewalStatus;
  /// The number of additional repositories to purchase. The value is an integral multiple of `1000`.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<int?> repoQuota;
  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;
  /// Instance Status
  late final pulumi.Output<String> status;
  /// The number of VPC access controls.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  ///
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<int?> vpcQuota;

  /// Creates a new [RegistryEnterpriseInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryEnterpriseInstance]. {@macro pulumi_cr_registry_enterprise_instance_registry_enterprise_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryEnterpriseInstance(
    String name, {
    RegistryEnterpriseInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cr/registryEnterpriseInstance:RegistryEnterpriseInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.createdTime = registerOutput<String>('createdTime');
    this.customOssBucket = registerOutput<String?>('customOssBucket');
    this.defaultOssBucket = registerOutput<String?>('defaultOssBucket');
    this.endTime = registerOutput<String>('endTime');
    this.imageScanner = registerOutput<String?>('imageScanner');
    this.instanceEndpoints = registerOutput<List<RegistryEnterpriseInstanceInstanceEndpoint>>('instanceEndpoints');
    this.instanceName = registerOutput<String>('instanceName');
    this.instanceType = registerOutput<String>('instanceType');
    this.kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    this.kmsEncryptionContext = registerOutput<Map<String, String>?>('kmsEncryptionContext');
    this.namespaceQuota = registerOutput<int?>('namespaceQuota');
    this.password = registerOutput<String?>('password');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.regionId = registerOutput<String>('regionId');
    this.renewPeriod = registerOutput<int?>('renewPeriod');
    this.renewalStatus = registerOutput<String>('renewalStatus');
    this.repoQuota = registerOutput<int?>('repoQuota');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.vpcQuota = registerOutput<int?>('vpcQuota');
  }
}
