import 'package:pulumi/pulumi.dart' as pulumi;
import 'bandwidth_package_attachment_args.dart';

/// Provides a CEN bandwidth package attachment resource. The resource can be used to bind a bandwidth package to a specified CEN instance.
///
/// > **NOTE:** Available since v1.18.0.
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
/// const example = new alicloud.cen.Instance("example", {
///     cenInstanceName: "tf_example",
///     description: "an example for cen",
/// });
/// const exampleBandwidthPackage = new alicloud.cen.BandwidthPackage("example", {
///     bandwidth: 5,
///     cenBandwidthPackageName: "tf_example",
///     geographicRegionAId: "China",
///     geographicRegionBId: "China",
/// });
/// const exampleBandwidthPackageAttachment = new alicloud.cen.BandwidthPackageAttachment("example", {
///     instanceId: example.id,
///     bandwidthPackageId: exampleBandwidthPackage.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cen.Instance("example",
///     cen_instance_name="tf_example",
///     description="an example for cen")
/// example_bandwidth_package = alicloud.cen.BandwidthPackage("example",
///     bandwidth=5,
///     cen_bandwidth_package_name="tf_example",
///     geographic_region_a_id="China",
///     geographic_region_b_id="China")
/// example_bandwidth_package_attachment = alicloud.cen.BandwidthPackageAttachment("example",
///     instance_id=example.id,
///     bandwidth_package_id=example_bandwidth_package.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Cen.Instance("example", new()
///     {
///         CenInstanceName = "tf_example",
///         Description = "an example for cen",
///     });
///
///     var exampleBandwidthPackage = new AliCloud.Cen.BandwidthPackage("example", new()
///     {
///         Bandwidth = 5,
///         CenBandwidthPackageName = "tf_example",
///         GeographicRegionAId = "China",
///         GeographicRegionBId = "China",
///     });
///
///     var exampleBandwidthPackageAttachment = new AliCloud.Cen.BandwidthPackageAttachment("example", new()
///     {
///         InstanceId = example.Id,
///         BandwidthPackageId = exampleBandwidthPackage.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cen.NewInstance(ctx, "example", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String("tf_example"),
/// 			Description:     pulumi.String("an example for cen"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBandwidthPackage, err := cen.NewBandwidthPackage(ctx, "example", &cen.BandwidthPackageArgs{
/// 			Bandwidth:               pulumi.Int(5),
/// 			CenBandwidthPackageName: pulumi.String("tf_example"),
/// 			GeographicRegionAId:     pulumi.String("China"),
/// 			GeographicRegionBId:     pulumi.String("China"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewBandwidthPackageAttachment(ctx, "example", &cen.BandwidthPackageAttachmentArgs{
/// 			InstanceId:         example.ID(),
/// 			BandwidthPackageId: exampleBandwidthPackage.ID(),
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
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.BandwidthPackage;
/// import com.pulumi.alicloud.cen.BandwidthPackageArgs;
/// import com.pulumi.alicloud.cen.BandwidthPackageAttachment;
/// import com.pulumi.alicloud.cen.BandwidthPackageAttachmentArgs;
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
///         var example = new Instance("example", InstanceArgs.builder()
///             .cenInstanceName("tf_example")
///             .description("an example for cen")
///             .build());
///
///         var exampleBandwidthPackage = new BandwidthPackage("exampleBandwidthPackage", BandwidthPackageArgs.builder()
///             .bandwidth(5)
///             .cenBandwidthPackageName("tf_example")
///             .geographicRegionAId("China")
///             .geographicRegionBId("China")
///             .build());
///
///         var exampleBandwidthPackageAttachment = new BandwidthPackageAttachment("exampleBandwidthPackageAttachment", BandwidthPackageAttachmentArgs.builder()
///             .instanceId(example.id())
///             .bandwidthPackageId(exampleBandwidthPackage.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:cen:Instance
///     properties:
///       cenInstanceName: tf_example
///       description: an example for cen
///   exampleBandwidthPackage:
///     type: alicloud:cen:BandwidthPackage
///     name: example
///     properties:
///       bandwidth: 5
///       cenBandwidthPackageName: tf_example
///       geographicRegionAId: China
///       geographicRegionBId: China
///   exampleBandwidthPackageAttachment:
///     type: alicloud:cen:BandwidthPackageAttachment
///     name: example
///     properties:
///       instanceId: ${example.id}
///       bandwidthPackageId: ${exampleBandwidthPackage.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CEN bandwidth package attachment resource can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/bandwidthPackageAttachment:BandwidthPackageAttachment example bwp-abc123456
/// ```
class BandwidthPackageAttachment extends pulumi.CustomResource {
  /// The ID of the bandwidth package.
  late final pulumi.Output<String> bandwidthPackageId;
  /// The ID of the CEN.
  late final pulumi.Output<String> instanceId;

  /// Creates a new [BandwidthPackageAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BandwidthPackageAttachment]. {@macro pulumi_cen_bandwidth_package_attachment_bandwidth_package_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BandwidthPackageAttachment(
    String name, {
    BandwidthPackageAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/bandwidthPackageAttachment:BandwidthPackageAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bandwidthPackageId = registerOutput<String>('bandwidthPackageId');
    this.instanceId = registerOutput<String>('instanceId');
  }
}
