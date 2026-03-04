import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_args.dart';
import 'image_state.dart';

/// Provides a ENS Image resource.
///
///
///
/// For information about ENS Image and how to use it, see [What is Image](https://www.alibabacloud.com/help/en/ens/developer-reference/api-ens-2017-11-10-createimage).
///
/// &gt; **NOTE:** Available since v1.216.0.
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
/// const _default = new alicloud.ens.Instance("default", {
///     systemDisk: {
///         size: 20,
///     },
///     scheduleAreaLevel: "Region",
///     imageId: "centos_6_08_64_20G_alibase_20171208",
///     paymentType: "PayAsYouGo",
///     password: "12345678ABCabc",
///     amount: 1,
///     internetMaxBandwidthOut: 10,
///     publicIpIdentification: true,
///     ensRegionId: "cn-chenzhou-telecom_unicom_cmcc",
///     periodUnit: "Month",
///     instanceType: "ens.sn1.stiny",
///     status: "Stopped",
/// });
/// const defaultImage = new alicloud.ens.Image("default", {
///     imageName: name,
///     instanceId: _default.id,
///     deleteAfterImageUpload: "false",
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
/// default = alicloud.ens.Instance("default",
///     system_disk={
///         "size": 20,
///     },
///     schedule_area_level="Region",
///     image_id="centos_6_08_64_20G_alibase_20171208",
///     payment_type="PayAsYouGo",
///     password="12345678ABCabc",
///     amount=1,
///     internet_max_bandwidth_out=10,
///     public_ip_identification=True,
///     ens_region_id="cn-chenzhou-telecom_unicom_cmcc",
///     period_unit="Month",
///     instance_type="ens.sn1.stiny",
///     status="Stopped")
/// default_image = alicloud.ens.Image("default",
///     image_name=name,
///     instance_id=default.id,
///     delete_after_image_upload="false")
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
///     var @default = new AliCloud.Ens.Instance("default", new()
///     {
///         SystemDisk = new AliCloud.Ens.Inputs.InstanceSystemDiskArgs
///         {
///             Size = 20,
///         },
///         ScheduleAreaLevel = "Region",
///         ImageId = "centos_6_08_64_20G_alibase_20171208",
///         PaymentType = "PayAsYouGo",
///         Password = "12345678ABCabc",
///         Amount = 1,
///         InternetMaxBandwidthOut = 10,
///         PublicIpIdentification = true,
///         EnsRegionId = "cn-chenzhou-telecom_unicom_cmcc",
///         PeriodUnit = "Month",
///         InstanceType = "ens.sn1.stiny",
///         Status = "Stopped",
///     });
///
///     var defaultImage = new AliCloud.Ens.Image("default", new()
///     {
///         ImageName = name,
///         InstanceId = @default.Id,
///         DeleteAfterImageUpload = "false",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ens"
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
/// 		_default, err := ens.NewInstance(ctx, "default", &ens.InstanceArgs{
/// 			SystemDisk: &ens.InstanceSystemDiskArgs{
/// 				Size: pulumi.Int(20),
/// 			},
/// 			ScheduleAreaLevel:       pulumi.String("Region"),
/// 			ImageId:                 pulumi.String("centos_6_08_64_20G_alibase_20171208"),
/// 			PaymentType:             pulumi.String("PayAsYouGo"),
/// 			Password:                pulumi.String("12345678ABCabc"),
/// 			Amount:                  pulumi.Int(1),
/// 			InternetMaxBandwidthOut: pulumi.Int(10),
/// 			PublicIpIdentification:  pulumi.Bool(true),
/// 			EnsRegionId:             pulumi.String("cn-chenzhou-telecom_unicom_cmcc"),
/// 			PeriodUnit:              pulumi.String("Month"),
/// 			InstanceType:            pulumi.String("ens.sn1.stiny"),
/// 			Status:                  pulumi.String("Stopped"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ens.NewImage(ctx, "default", &ens.ImageArgs{
/// 			ImageName:              pulumi.String(name),
/// 			InstanceId:             _default.ID(),
/// 			DeleteAfterImageUpload: pulumi.String("false"),
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
/// import com.pulumi.alicloud.ens.Instance;
/// import com.pulumi.alicloud.ens.InstanceArgs;
/// import com.pulumi.alicloud.ens.inputs.InstanceSystemDiskArgs;
/// import com.pulumi.alicloud.ens.Image;
/// import com.pulumi.alicloud.ens.ImageArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .systemDisk(InstanceSystemDiskArgs.builder()
///                 .size(20)
///                 .build())
///             .scheduleAreaLevel("Region")
///             .imageId("centos_6_08_64_20G_alibase_20171208")
///             .paymentType("PayAsYouGo")
///             .password("12345678ABCabc")
///             .amount(1)
///             .internetMaxBandwidthOut(10)
///             .publicIpIdentification(true)
///             .ensRegionId("cn-chenzhou-telecom_unicom_cmcc")
///             .periodUnit("Month")
///             .instanceType("ens.sn1.stiny")
///             .status("Stopped")
///             .build());
///
///         var defaultImage = new Image("defaultImage", ImageArgs.builder()
///             .imageName(name)
///             .instanceId(default_.id())
///             .deleteAfterImageUpload("false")
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
///     type: alicloud:ens:Instance
///     properties:
///       systemDisk:
///         size: '20'
///       scheduleAreaLevel: Region
///       imageId: centos_6_08_64_20G_alibase_20171208
///       paymentType: PayAsYouGo
///       password: 12345678ABCabc
///       amount: '1'
///       internetMaxBandwidthOut: '10'
///       publicIpIdentification: true
///       ensRegionId: cn-chenzhou-telecom_unicom_cmcc
///       periodUnit: Month
///       instanceType: ens.sn1.stiny
///       status: Stopped
///   defaultImage:
///     type: alicloud:ens:Image
///     name: default
///     properties:
///       imageName: ${name}
///       instanceId: ${default.id}
///       deleteAfterImageUpload: 'false'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ENS Image can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ens/image:Image example <id>
/// ```
class Image extends pulumi.CustomResource {
  /// The image creation time.
  late final pulumi.Output<String> createTime;

  /// Specifies whether to automatically release the instance after the image is packaged and uploaded. Only image builders are supported. Default value: `false`. Valid values:
  late final pulumi.Output<String?> deleteAfterImageUpload;

  /// The name of the image. The name must be 2 to 128 characters in length. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-). It must start with a letter but cannot start with http:// or https://. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  late final pulumi.Output<String> imageName;

  /// The ID of the instance.
  late final pulumi.Output<String?> instanceId;

  /// The state of the image.
  late final pulumi.Output<String> status;

  /// The region of the target OSS where the image is to be stored.
  late final pulumi.Output<String> targetOssRegionId;

  /// Creates a new [Image].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Image]. {@macro pulumi_ens_image_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Image(String name, {ImageArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:ens/image:Image',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    createTime = registerOutput<String>('createTime');
    deleteAfterImageUpload = registerOutput<String?>('deleteAfterImageUpload');
    imageName = registerOutput<String>('imageName');
    instanceId = registerOutput<String?>('instanceId');
    status = registerOutput<String>('status');
    targetOssRegionId = registerOutput<String>('targetOssRegionId');
  }

  /// Gets an existing [Image] resource's state with the given [name] and [id].
  static Image get(String name, pulumi.Input<String> id, {ImageState? state}) {
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
         'alicloud:ens/image:Image',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    deleteAfterImageUpload = registerOutput<String?>('deleteAfterImageUpload');
    imageName = registerOutput<String>('imageName');
    instanceId = registerOutput<String?>('instanceId');
    status = registerOutput<String>('status');
    targetOssRegionId = registerOutput<String>('targetOssRegionId');
  }
}
