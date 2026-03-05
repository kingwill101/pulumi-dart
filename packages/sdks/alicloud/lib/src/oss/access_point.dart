import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_point_args.dart';
import 'access_point_public_access_block_configuration.dart';
import 'access_point_state.dart';
import 'access_point_vpc_configuration.dart';

/// Provides a OSS Access Point resource.
///
/// You can create multiple Access points for buckets and configure different Access control permissions and network control policies for different Access points.
///
/// For information about OSS Access Point and how to use it, see [What is Access Point](https://www.alibabacloud.com/help/en/oss/developer-reference/createaccesspoint).
///
/// &gt; **NOTE:** Available since v1.240.0.
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
/// const createBucket = new alicloud.oss.Bucket("CreateBucket", {storageClass: "Standard"});
/// const _default = new alicloud.oss.AccessPoint("default", {
///     accessPointName: name,
///     bucket: createBucket.bucket,
///     vpcConfiguration: {
///         vpcId: "vpc-abcexample",
///     },
///     networkOrigin: "vpc",
///     publicAccessBlockConfiguration: {
///         blockPublicAccess: true,
///     },
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
/// create_bucket = alicloud.oss.Bucket("CreateBucket", storage_class="Standard")
/// default = alicloud.oss.AccessPoint("default",
///     access_point_name=name,
///     bucket=create_bucket.bucket,
///     vpc_configuration={
///         "vpc_id": "vpc-abcexample",
///     },
///     network_origin="vpc",
///     public_access_block_configuration={
///         "block_public_access": True,
///     })
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
///     var createBucket = new AliCloud.Oss.Bucket("CreateBucket", new()
///     {
///         StorageClass = "Standard",
///     });
///
///     var @default = new AliCloud.Oss.AccessPoint("default", new()
///     {
///         AccessPointName = name,
///         Bucket = createBucket.BucketName,
///         VpcConfiguration = new AliCloud.Oss.Inputs.AccessPointVpcConfigurationArgs
///         {
///             VpcId = "vpc-abcexample",
///         },
///         NetworkOrigin = "vpc",
///         PublicAccessBlockConfiguration = new AliCloud.Oss.Inputs.AccessPointPublicAccessBlockConfigurationArgs
///         {
///             BlockPublicAccess = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
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
/// 		createBucket, err := oss.NewBucket(ctx, "CreateBucket", &oss.BucketArgs{
/// 			StorageClass: pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewAccessPoint(ctx, "default", &oss.AccessPointArgs{
/// 			AccessPointName: pulumi.String(name),
/// 			Bucket:          createBucket.Bucket,
/// 			VpcConfiguration: &oss.AccessPointVpcConfigurationArgs{
/// 				VpcId: pulumi.String("vpc-abcexample"),
/// 			},
/// 			NetworkOrigin: pulumi.String("vpc"),
/// 			PublicAccessBlockConfiguration: &oss.AccessPointPublicAccessBlockConfigurationArgs{
/// 				BlockPublicAccess: pulumi.Bool(true),
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
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.AccessPoint;
/// import com.pulumi.alicloud.oss.AccessPointArgs;
/// import com.pulumi.alicloud.oss.inputs.AccessPointVpcConfigurationArgs;
/// import com.pulumi.alicloud.oss.inputs.AccessPointPublicAccessBlockConfigurationArgs;
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
///         var createBucket = new Bucket("createBucket", BucketArgs.builder()
///             .storageClass("Standard")
///             .build());
///
///         var default_ = new AccessPoint("default", AccessPointArgs.builder()
///             .accessPointName(name)
///             .bucket(createBucket.bucket())
///             .vpcConfiguration(AccessPointVpcConfigurationArgs.builder()
///                 .vpcId("vpc-abcexample")
///                 .build())
///             .networkOrigin("vpc")
///             .publicAccessBlockConfiguration(AccessPointPublicAccessBlockConfigurationArgs.builder()
///                 .blockPublicAccess(true)
///                 .build())
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
///   createBucket:
///     type: alicloud:oss:Bucket
///     name: CreateBucket
///     properties:
///       storageClass: Standard
///   default:
///     type: alicloud:oss:AccessPoint
///     properties:
///       accessPointName: ${name}
///       bucket: ${createBucket.bucket}
///       vpcConfiguration:
///         vpcId: vpc-abcexample
///       networkOrigin: vpc
///       publicAccessBlockConfiguration:
///         blockPublicAccess: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OSS Access Point can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/accessPoint:AccessPoint example <bucket>:<access_point_name>
/// ```
class AccessPoint extends pulumi.CustomResource {
  /// The name of the access point
  late final pulumi.Output<String> accessPointName;
  /// The Bucket to which the current access point belongs.
  late final pulumi.Output<String> bucket;
  /// Access point network source. The valid values are as follows:
  /// - vpc: only the specified VPC ID can be used to access the access point.
  /// - internet: the access point can be accessed through both external and internal Endpoint.
  late final pulumi.Output<String> networkOrigin;
  /// Configuration of Access Point Blocking Public Access See `public_access_block_configuration` below.
  late final pulumi.Output<AccessPointPublicAccessBlockConfiguration?> publicAccessBlockConfiguration;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// If the Network Origin is vpc, the VPC source information is saved here. See `vpc_configuration` below.
  late final pulumi.Output<AccessPointVpcConfiguration?> vpcConfiguration;

  /// Creates a new [AccessPoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPoint]. {@macro pulumi_oss_access_point_access_point_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPoint(
    String name, {
    AccessPointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/accessPoint:AccessPoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPointName = registerOutput<String>('accessPointName');
    bucket = registerOutput<String>('bucket');
    networkOrigin = registerOutput<String>('networkOrigin');
    publicAccessBlockConfiguration = registerOutput<AccessPointPublicAccessBlockConfiguration?>('publicAccessBlockConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPointPublicAccessBlockConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    vpcConfiguration = registerOutput<AccessPointVpcConfiguration?>('vpcConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPointVpcConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AccessPoint] resource's state with the given [name] and [id].
  static AccessPoint get(
    String name,
    pulumi.Input<String> id, {
    AccessPointState? state,
  }) {
    return AccessPoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessPoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/accessPoint:AccessPoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPointName = registerOutput<String>('accessPointName');
    bucket = registerOutput<String>('bucket');
    networkOrigin = registerOutput<String>('networkOrigin');
    publicAccessBlockConfiguration = registerOutput<AccessPointPublicAccessBlockConfiguration?>('publicAccessBlockConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPointPublicAccessBlockConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    vpcConfiguration = registerOutput<AccessPointVpcConfiguration?>('vpcConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPointVpcConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
