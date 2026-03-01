import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_args.dart';
import 'image_state.dart';

/// Provides a Cloud Phone Image resource.
///
/// Cloud phone image.
///
/// For information about Cloud Phone Image and how to use it, see [What is Image](https://next.api.alibabacloud.com/document/eds-aic/2023-09-30/CreateCustomImage).
///
/// > **NOTE:** Available since v1.243.0.
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
/// const default04hhXk = new alicloud.cloudphoneinstance.CloudPhoneInstance("default04hhXk", {
///     androidInstanceGroupId: defaultYHMlTO.id,
///     androidInstanceName: "CreateInstanceName",
/// });
/// const _default = new alicloud.cloudphone.Image("default", {
///     imageName: "ImageName",
///     instanceId: default04hhXk.id,
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
/// default04hh_xk = alicloud.cloudphoneinstance.CloudPhoneInstance("default04hhXk",
///     android_instance_group_id=default_yh_ml_to.id,
///     android_instance_name="CreateInstanceName")
/// default = alicloud.cloudphone.Image("default",
///     image_name="ImageName",
///     instance_id=default04hh_xk.id)
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
///     var default04hhXk = new AliCloud.CloudPhoneInstance.CloudPhoneInstance("default04hhXk", new()
///     {
///         AndroidInstanceGroupId = defaultYHMlTO.Id,
///         AndroidInstanceName = "CreateInstanceName",
///     });
///
///     var @default = new AliCloud.CloudPhone.Image("default", new()
///     {
///         ImageName = "ImageName",
///         InstanceId = default04hhXk.Id,
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
/// 		default04hhXk, err := cloudphoneinstance.NewCloudPhoneInstance(ctx, "default04hhXk", &cloudphoneinstance.CloudPhoneInstanceArgs{
/// 			AndroidInstanceGroupId: defaultYHMlTO.ID(),
/// 			AndroidInstanceName:    pulumi.String("CreateInstanceName"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudphone.NewImage(ctx, "default", &cloudphone.ImageArgs{
/// 			ImageName:  pulumi.String("ImageName"),
/// 			InstanceId: default04hhXk.ID(),
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
/// import com.pulumi.alicloud.cloudphone.Image;
/// import com.pulumi.alicloud.cloudphone.ImageArgs;
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
///         var default04hhXk = new CloudPhoneInstance("default04hhXk", CloudPhoneInstanceArgs.builder()
///             .androidInstanceGroupId(defaultYHMlTO.id())
///             .androidInstanceName("CreateInstanceName")
///             .build());
///
///         var default_ = new Image("default", ImageArgs.builder()
///             .imageName("ImageName")
///             .instanceId(default04hhXk.id())
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
///   default04hhXk:
///     type: alicloud:cloudphoneinstance:CloudPhoneInstance
///     properties:
///       androidInstanceGroupId: ${defaultYHMlTO.id}
///       androidInstanceName: CreateInstanceName
///   default:
///     type: alicloud:cloudphone:Image
///     properties:
///       imageName: ImageName
///       instanceId: ${default04hhXk.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Phone Image can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudphone/image:Image example <id>
/// ```
class Image extends pulumi.CustomResource {
  /// The image name.
  late final pulumi.Output<String> imageName;
  /// The instance ID.
  late final pulumi.Output<String> instanceId;
  /// The status of the mirror.
  late final pulumi.Output<String> status;

  /// Creates a new [Image].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Image]. {@macro pulumi_cloudphone_image_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Image(
    String name, {
    ImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudphone/image:Image',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.imageName = registerOutput<String>('imageName');
    this.instanceId = registerOutput<String>('instanceId');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [Image] resource's state with the given [name] and [id].
  static Image get(
    String name,
    pulumi.Input<String> id, {
    ImageState? state,
  }) {
    return Image._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Image._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudphone/image:Image',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.imageName = registerOutput<String>('imageName');
    this.instanceId = registerOutput<String>('instanceId');
    this.status = registerOutput<String>('status');
  }
}
