import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_pair_args.dart';
import 'key_pair_state.dart';

/// Provides a Cloud Phone Key Pair resource.
///
/// Cloud Phone KeyPair.
///
/// For information about Cloud Phone Key Pair and how to use it, see [What is Key Pair](https://next.api.alibabacloud.com/document/eds-aic/2023-09-30/CreateKeyPair).
///
/// &gt; **NOTE:** Available since v1.243.0.
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
/// const defaultjZ1gi0 = new alicloud.cloudphone.Policy("defaultjZ1gi0", {});
/// const defaultYHMlTO = new alicloud.cloudphoneinstance.Group("defaultYHMlTO", {
///     instanceGroupSpec: "acp.basic.small",
///     policyGroupId: defaultjZ1gi0.id,
///     instanceGroupName: "AutoCreateGroupName",
///     period: 1,
///     numberOfInstances: 1,
///     chargeType: "PostPaid",
///     imageId: "imgc-075cllfeuazh03tg9",
///     periodUnit: "Hour",
///     autoRenew: false,
///     amount: 1,
///     autoPay: false,
///     gpuAcceleration: false,
/// });
/// const defaulthdBep1 = new alicloud.cloudphoneinstance.CloudPhoneInstance("defaulthdBep1", {
///     androidInstanceGroupId: defaultYHMlTO.id,
///     androidInstanceName: "CreateInstanceName",
/// });
/// const _default = new alicloud.cloudphone.KeyPair("default", {
///     keyPairName: "example",
///     publicKeyBody: "QAAAAH0o+PMrbz9ZlxaNMYlk1rJkN4JXqwSUVYW5YzMW3fWJ7At1XO40GYDEFL43fLob52pmRxRDuRoGAELmS1AyzqUle2v9yGKFziqS/vK/4vM4MW/ppnTmvh9zPXir0fB/uwXS4iS6xt0gmvprgyRNs7hgXtBK9ASiGuPCv47aRJqh9mYzq2pe2rgb+K0OU5/nQXwWKSxYsv+w3KWPshpwx8iF/JWvjixILJ5gygndd+1HyE8jrLVmvm/OitNaMgkolY1bvmRVVKLmzde7FtXw0s4TVfYUvF385gwlrOulKcL7UuMHV87MV/tcvEA0Gg88JrKgI5LmvQ8BDkrfoSi+bchk1KTAqJ8YMvL2pOogXbBoONeJS176zLYpLHmONtIDQFz/gEqAjGQVW+j4J+1w8oWrn8EjtcDe2kY34s3PDLioK3BN9CIBBQur+SH25R0RnEqD0YPFT7/ym0LomtPOS0t72n5JejBTfWaXiqb/I4f2Ypy1PA6fV5UUFIHODpNtuS4g2HKKqDS/sgYRBA2gpN2MmqeqgsQmSy+EljHdUe4KDVqAZ/qxLqnbp47BGHw2xjuZ60nXAoRecWCg2GDbx13ga4dKUQY+ER8Jruz7ILK4MRB7E4SjSUVmgcdh534c51BYIdI2HkQwQU2dgyJyQme9sDQxxGHpYKFQlFSyXUeOSjXLtQEAAQA= qiaozhou_15694163938@h2sqyfpc71g1t2w",
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
/// defaultj_z1gi0 = alicloud.cloudphone.Policy("defaultjZ1gi0")
/// default_yh_ml_to = alicloud.cloudphoneinstance.Group("defaultYHMlTO",
///     instance_group_spec="acp.basic.small",
///     policy_group_id=defaultj_z1gi0.id,
///     instance_group_name="AutoCreateGroupName",
///     period=1,
///     number_of_instances=1,
///     charge_type="PostPaid",
///     image_id="imgc-075cllfeuazh03tg9",
///     period_unit="Hour",
///     auto_renew=False,
///     amount=1,
///     auto_pay=False,
///     gpu_acceleration=False)
/// defaulthd_bep1 = alicloud.cloudphoneinstance.CloudPhoneInstance("defaulthdBep1",
///     android_instance_group_id=default_yh_ml_to.id,
///     android_instance_name="CreateInstanceName")
/// default = alicloud.cloudphone.KeyPair("default",
///     key_pair_name="example",
///     public_key_body="QAAAAH0o+PMrbz9ZlxaNMYlk1rJkN4JXqwSUVYW5YzMW3fWJ7At1XO40GYDEFL43fLob52pmRxRDuRoGAELmS1AyzqUle2v9yGKFziqS/vK/4vM4MW/ppnTmvh9zPXir0fB/uwXS4iS6xt0gmvprgyRNs7hgXtBK9ASiGuPCv47aRJqh9mYzq2pe2rgb+K0OU5/nQXwWKSxYsv+w3KWPshpwx8iF/JWvjixILJ5gygndd+1HyE8jrLVmvm/OitNaMgkolY1bvmRVVKLmzde7FtXw0s4TVfYUvF385gwlrOulKcL7UuMHV87MV/tcvEA0Gg88JrKgI5LmvQ8BDkrfoSi+bchk1KTAqJ8YMvL2pOogXbBoONeJS176zLYpLHmONtIDQFz/gEqAjGQVW+j4J+1w8oWrn8EjtcDe2kY34s3PDLioK3BN9CIBBQur+SH25R0RnEqD0YPFT7/ym0LomtPOS0t72n5JejBTfWaXiqb/I4f2Ypy1PA6fV5UUFIHODpNtuS4g2HKKqDS/sgYRBA2gpN2MmqeqgsQmSy+EljHdUe4KDVqAZ/qxLqnbp47BGHw2xjuZ60nXAoRecWCg2GDbx13ga4dKUQY+ER8Jruz7ILK4MRB7E4SjSUVmgcdh534c51BYIdI2HkQwQU2dgyJyQme9sDQxxGHpYKFQlFSyXUeOSjXLtQEAAQA= qiaozhou_15694163938@h2sqyfpc71g1t2w")
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
///     var defaultjZ1gi0 = new AliCloud.CloudPhone.Policy("defaultjZ1gi0");
///
///     var defaultYHMlTO = new AliCloud.CloudPhoneInstance.Group("defaultYHMlTO", new()
///     {
///         InstanceGroupSpec = "acp.basic.small",
///         PolicyGroupId = defaultjZ1gi0.Id,
///         InstanceGroupName = "AutoCreateGroupName",
///         Period = 1,
///         NumberOfInstances = 1,
///         ChargeType = "PostPaid",
///         ImageId = "imgc-075cllfeuazh03tg9",
///         PeriodUnit = "Hour",
///         AutoRenew = false,
///         Amount = 1,
///         AutoPay = false,
///         GpuAcceleration = false,
///     });
///
///     var defaulthdBep1 = new AliCloud.CloudPhoneInstance.CloudPhoneInstance("defaulthdBep1", new()
///     {
///         AndroidInstanceGroupId = defaultYHMlTO.Id,
///         AndroidInstanceName = "CreateInstanceName",
///     });
///
///     var @default = new AliCloud.CloudPhone.KeyPair("default", new()
///     {
///         KeyPairName = "example",
///         PublicKeyBody = "QAAAAH0o+PMrbz9ZlxaNMYlk1rJkN4JXqwSUVYW5YzMW3fWJ7At1XO40GYDEFL43fLob52pmRxRDuRoGAELmS1AyzqUle2v9yGKFziqS/vK/4vM4MW/ppnTmvh9zPXir0fB/uwXS4iS6xt0gmvprgyRNs7hgXtBK9ASiGuPCv47aRJqh9mYzq2pe2rgb+K0OU5/nQXwWKSxYsv+w3KWPshpwx8iF/JWvjixILJ5gygndd+1HyE8jrLVmvm/OitNaMgkolY1bvmRVVKLmzde7FtXw0s4TVfYUvF385gwlrOulKcL7UuMHV87MV/tcvEA0Gg88JrKgI5LmvQ8BDkrfoSi+bchk1KTAqJ8YMvL2pOogXbBoONeJS176zLYpLHmONtIDQFz/gEqAjGQVW+j4J+1w8oWrn8EjtcDe2kY34s3PDLioK3BN9CIBBQur+SH25R0RnEqD0YPFT7/ym0LomtPOS0t72n5JejBTfWaXiqb/I4f2Ypy1PA6fV5UUFIHODpNtuS4g2HKKqDS/sgYRBA2gpN2MmqeqgsQmSy+EljHdUe4KDVqAZ/qxLqnbp47BGHw2xjuZ60nXAoRecWCg2GDbx13ga4dKUQY+ER8Jruz7ILK4MRB7E4SjSUVmgcdh534c51BYIdI2HkQwQU2dgyJyQme9sDQxxGHpYKFQlFSyXUeOSjXLtQEAAQA= qiaozhou_15694163938@h2sqyfpc71g1t2w",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudphone"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudphoneinstance"
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
/// 		defaultjZ1gi0, err := cloudphone.NewPolicy(ctx, "defaultjZ1gi0", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultYHMlTO, err := cloudphoneinstance.NewGroup(ctx, "defaultYHMlTO", &cloudphoneinstance.GroupArgs{
/// 			InstanceGroupSpec: pulumi.String("acp.basic.small"),
/// 			PolicyGroupId:     defaultjZ1gi0.ID(),
/// 			InstanceGroupName: pulumi.String("AutoCreateGroupName"),
/// 			Period:            pulumi.Int(1),
/// 			NumberOfInstances: pulumi.Int(1),
/// 			ChargeType:        pulumi.String("PostPaid"),
/// 			ImageId:           pulumi.String("imgc-075cllfeuazh03tg9"),
/// 			PeriodUnit:        pulumi.String("Hour"),
/// 			AutoRenew:         pulumi.Bool(false),
/// 			Amount:            pulumi.Int(1),
/// 			AutoPay:           pulumi.Bool(false),
/// 			GpuAcceleration:   pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudphoneinstance.NewCloudPhoneInstance(ctx, "defaulthdBep1", &cloudphoneinstance.CloudPhoneInstanceArgs{
/// 			AndroidInstanceGroupId: defaultYHMlTO.ID(),
/// 			AndroidInstanceName:    pulumi.String("CreateInstanceName"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudphone.NewKeyPair(ctx, "default", &cloudphone.KeyPairArgs{
/// 			KeyPairName:   pulumi.String("example"),
/// 			PublicKeyBody: pulumi.String("QAAAAH0o+PMrbz9ZlxaNMYlk1rJkN4JXqwSUVYW5YzMW3fWJ7At1XO40GYDEFL43fLob52pmRxRDuRoGAELmS1AyzqUle2v9yGKFziqS/vK/4vM4MW/ppnTmvh9zPXir0fB/uwXS4iS6xt0gmvprgyRNs7hgXtBK9ASiGuPCv47aRJqh9mYzq2pe2rgb+K0OU5/nQXwWKSxYsv+w3KWPshpwx8iF/JWvjixILJ5gygndd+1HyE8jrLVmvm/OitNaMgkolY1bvmRVVKLmzde7FtXw0s4TVfYUvF385gwlrOulKcL7UuMHV87MV/tcvEA0Gg88JrKgI5LmvQ8BDkrfoSi+bchk1KTAqJ8YMvL2pOogXbBoONeJS176zLYpLHmONtIDQFz/gEqAjGQVW+j4J+1w8oWrn8EjtcDe2kY34s3PDLioK3BN9CIBBQur+SH25R0RnEqD0YPFT7/ym0LomtPOS0t72n5JejBTfWaXiqb/I4f2Ypy1PA6fV5UUFIHODpNtuS4g2HKKqDS/sgYRBA2gpN2MmqeqgsQmSy+EljHdUe4KDVqAZ/qxLqnbp47BGHw2xjuZ60nXAoRecWCg2GDbx13ga4dKUQY+ER8Jruz7ILK4MRB7E4SjSUVmgcdh534c51BYIdI2HkQwQU2dgyJyQme9sDQxxGHpYKFQlFSyXUeOSjXLtQEAAQA= qiaozhou_15694163938@h2sqyfpc71g1t2w"),
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
/// import com.pulumi.alicloud.cloudphone.Policy;
/// import com.pulumi.alicloud.cloudphoneinstance.Group;
/// import com.pulumi.alicloud.cloudphoneinstance.GroupArgs;
/// import com.pulumi.alicloud.cloudphoneinstance.CloudPhoneInstance;
/// import com.pulumi.alicloud.cloudphoneinstance.CloudPhoneInstanceArgs;
/// import com.pulumi.alicloud.cloudphone.KeyPair;
/// import com.pulumi.alicloud.cloudphone.KeyPairArgs;
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
///         var defaultjZ1gi0 = new Policy("defaultjZ1gi0");
///
///         var defaultYHMlTO = new Group("defaultYHMlTO", GroupArgs.builder()
///             .instanceGroupSpec("acp.basic.small")
///             .policyGroupId(defaultjZ1gi0.id())
///             .instanceGroupName("AutoCreateGroupName")
///             .period(1)
///             .numberOfInstances(1)
///             .chargeType("PostPaid")
///             .imageId("imgc-075cllfeuazh03tg9")
///             .periodUnit("Hour")
///             .autoRenew(false)
///             .amount(1)
///             .autoPay(false)
///             .gpuAcceleration(false)
///             .build());
///
///         var defaulthdBep1 = new CloudPhoneInstance("defaulthdBep1", CloudPhoneInstanceArgs.builder()
///             .androidInstanceGroupId(defaultYHMlTO.id())
///             .androidInstanceName("CreateInstanceName")
///             .build());
///
///         var default_ = new KeyPair("default", KeyPairArgs.builder()
///             .keyPairName("example")
///             .publicKeyBody("QAAAAH0o+PMrbz9ZlxaNMYlk1rJkN4JXqwSUVYW5YzMW3fWJ7At1XO40GYDEFL43fLob52pmRxRDuRoGAELmS1AyzqUle2v9yGKFziqS/vK/4vM4MW/ppnTmvh9zPXir0fB/uwXS4iS6xt0gmvprgyRNs7hgXtBK9ASiGuPCv47aRJqh9mYzq2pe2rgb+K0OU5/nQXwWKSxYsv+w3KWPshpwx8iF/JWvjixILJ5gygndd+1HyE8jrLVmvm/OitNaMgkolY1bvmRVVKLmzde7FtXw0s4TVfYUvF385gwlrOulKcL7UuMHV87MV/tcvEA0Gg88JrKgI5LmvQ8BDkrfoSi+bchk1KTAqJ8YMvL2pOogXbBoONeJS176zLYpLHmONtIDQFz/gEqAjGQVW+j4J+1w8oWrn8EjtcDe2kY34s3PDLioK3BN9CIBBQur+SH25R0RnEqD0YPFT7/ym0LomtPOS0t72n5JejBTfWaXiqb/I4f2Ypy1PA6fV5UUFIHODpNtuS4g2HKKqDS/sgYRBA2gpN2MmqeqgsQmSy+EljHdUe4KDVqAZ/qxLqnbp47BGHw2xjuZ60nXAoRecWCg2GDbx13ga4dKUQY+ER8Jruz7ILK4MRB7E4SjSUVmgcdh534c51BYIdI2HkQwQU2dgyJyQme9sDQxxGHpYKFQlFSyXUeOSjXLtQEAAQA= qiaozhou_15694163938@h2sqyfpc71g1t2w")
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
///   defaultjZ1gi0:
///     type: alicloud:cloudphone:Policy
///   defaultYHMlTO:
///     type: alicloud:cloudphoneinstance:Group
///     properties:
///       instanceGroupSpec: acp.basic.small
///       policyGroupId: ${defaultjZ1gi0.id}
///       instanceGroupName: AutoCreateGroupName
///       period: '1'
///       numberOfInstances: '1'
///       chargeType: PostPaid
///       imageId: imgc-075cllfeuazh03tg9
///       periodUnit: Hour
///       autoRenew: false
///       amount: '1'
///       autoPay: false
///       gpuAcceleration: false
///   defaulthdBep1:
///     type: alicloud:cloudphoneinstance:CloudPhoneInstance
///     properties:
///       androidInstanceGroupId: ${defaultYHMlTO.id}
///       androidInstanceName: CreateInstanceName
///   default:
///     type: alicloud:cloudphone:KeyPair
///     properties:
///       keyPairName: example
///       publicKeyBody: QAAAAH0o+PMrbz9ZlxaNMYlk1rJkN4JXqwSUVYW5YzMW3fWJ7At1XO40GYDEFL43fLob52pmRxRDuRoGAELmS1AyzqUle2v9yGKFziqS/vK/4vM4MW/ppnTmvh9zPXir0fB/uwXS4iS6xt0gmvprgyRNs7hgXtBK9ASiGuPCv47aRJqh9mYzq2pe2rgb+K0OU5/nQXwWKSxYsv+w3KWPshpwx8iF/JWvjixILJ5gygndd+1HyE8jrLVmvm/OitNaMgkolY1bvmRVVKLmzde7FtXw0s4TVfYUvF385gwlrOulKcL7UuMHV87MV/tcvEA0Gg88JrKgI5LmvQ8BDkrfoSi+bchk1KTAqJ8YMvL2pOogXbBoONeJS176zLYpLHmONtIDQFz/gEqAjGQVW+j4J+1w8oWrn8EjtcDe2kY34s3PDLioK3BN9CIBBQur+SH25R0RnEqD0YPFT7/ym0LomtPOS0t72n5JejBTfWaXiqb/I4f2Ypy1PA6fV5UUFIHODpNtuS4g2HKKqDS/sgYRBA2gpN2MmqeqgsQmSy+EljHdUe4KDVqAZ/qxLqnbp47BGHw2xjuZ60nXAoRecWCg2GDbx13ga4dKUQY+ER8Jruz7ILK4MRB7E4SjSUVmgcdh534c51BYIdI2HkQwQU2dgyJyQme9sDQxxGHpYKFQlFSyXUeOSjXLtQEAAQA= qiaozhou_15694163938@h2sqyfpc71g1t2w
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Phone Key Pair can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudphone/keyPair:KeyPair example <id>
/// ```
class KeyPair extends pulumi.CustomResource {
  /// ADB key pair name.
  late final pulumi.Output<String> keyPairName;

  /// The public key of the key pair.
  late final pulumi.Output<String?> publicKeyBody;

  /// Creates a new [KeyPair].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyPair]. {@macro pulumi_cloudphone_key_pair_key_pair_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyPair(
    String name, {
    KeyPairArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cloudphone/keyPair:KeyPair',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    keyPairName = registerOutput<String>('keyPairName');
    publicKeyBody = registerOutput<String?>('publicKeyBody');
  }

  /// Gets an existing [KeyPair] resource's state with the given [name] and [id].
  static KeyPair get(
    String name,
    pulumi.Input<String> id, {
    KeyPairState? state,
  }) {
    return KeyPair._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KeyPair._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cloudphone/keyPair:KeyPair',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    keyPairName = registerOutput<String>('keyPairName');
    publicKeyBody = registerOutput<String?>('publicKeyBody');
  }
}
