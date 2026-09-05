import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_args.dart';
import 'cache_state.dart';

/// Manages an AWS Storage Gateway cache.
///
/// &gt; **NOTE:** The Storage Gateway API provides no method to remove a cache disk. Destroying this resource does not perform any Storage Gateway actions.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.Cache("example", {
///     diskId: exampleAwsStoragegatewayLocalDisk.id,
///     gatewayArn: exampleAwsStoragegatewayGateway.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.Cache("example",
///     disk_id=example_aws_storagegateway_local_disk["id"],
///     gateway_arn=example_aws_storagegateway_gateway["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.StorageGateway.Cache("example", new()
///     {
///         DiskId = exampleAwsStoragegatewayLocalDisk.Id,
///         GatewayArn = exampleAwsStoragegatewayGateway.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/storagegateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagegateway.NewCache(ctx, "example", &storagegateway.CacheArgs{
/// 			DiskId:     pulumi.Any(exampleAwsStoragegatewayLocalDisk.Id),
/// 			GatewayArn: pulumi.Any(exampleAwsStoragegatewayGateway.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_storagegateway_cache" "example" {
///   disk_id     = exampleAwsStoragegatewayLocalDisk.id
///   gateway_arn = exampleAwsStoragegatewayGateway.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.storagegateway.Cache;
/// import com.pulumi.aws.storagegateway.CacheArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Cache("example", CacheArgs.builder()
///             .diskId(exampleAwsStoragegatewayLocalDisk.id())
///             .gatewayArn(exampleAwsStoragegatewayGateway.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:storagegateway:Cache
///     properties:
///       diskId: ${exampleAwsStoragegatewayLocalDisk.id}
///       gatewayArn: ${exampleAwsStoragegatewayGateway.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.storagegateway.Cache` using the gateway ARN and local disk identifier separated with a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/cache:Cache example arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678:pci-0000:03:00.0-scsi-0:0:0:0
/// ```
class Cache extends pulumi.CustomResource {
  /// Local disk identifier. For example, `pci-0000:03:00.0-scsi-0:0:0:0`.
  late final pulumi.Output<String> diskId;
  /// ARN of the gateway.
  late final pulumi.Output<String> gatewayArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [Cache].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cache]. {@macro pulumi_storagegateway_cache_cache_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cache(
    String name, {
    CacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/cache:Cache',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    diskId = registerOutput<String>('diskId');
    gatewayArn = registerOutput<String>('gatewayArn');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [Cache] resource's state with the given [name] and [id].
  static Cache get(
    String name,
    pulumi.Input<String> id, {
    CacheState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Cache._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Cache._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/cache:Cache',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    diskId = registerOutput<String>('diskId');
    gatewayArn = registerOutput<String>('gatewayArn');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [Cache] resource.
  Cache.reference(String urn)
    : super(
        'aws:storagegateway/cache:Cache',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    diskId = registerOutput<String>('diskId');
    gatewayArn = registerOutput<String>('gatewayArn');
    region = registerOutput<String>('region');
  }
}
