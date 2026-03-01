import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_server_side_encryption_args.dart';

/// Provides a OSS Bucket Server Side Encryption resource. Server-side encryption rules of the bucket.
///
/// For information about OSS Bucket Server Side Encryption and how to use it, see [What is Bucket Server Side Encryption](https://www.alibabacloud.com/help/en/oss/developer-reference/putbucketencryption).
///
/// > **NOTE:** Available since v1.222.0.
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
///     min: 10000,
///     max: 99999,
/// });
/// const createBucket = new alicloud.oss.Bucket("CreateBucket", {
///     storageClass: "Standard",
///     bucket: `${name}-${_default.result}`,
/// });
/// const getKMS = new alicloud.kms.Key("GetKMS", {
///     origin: "Aliyun_KMS",
///     protectionLevel: "SOFTWARE",
///     description: name,
///     keySpec: "Aliyun_AES_256",
///     keyUsage: "ENCRYPT/DECRYPT",
///     automaticRotation: "Disabled",
///     pendingWindowInDays: 7,
/// });
/// const defaultBucketServerSideEncryption = new alicloud.oss.BucketServerSideEncryption("default", {
///     kmsDataEncryption: "SM4",
///     kmsMasterKeyId: getKMS.id,
///     bucket: createBucket.bucket,
///     sseAlgorithm: "KMS",
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
///     min=10000,
///     max=99999)
/// create_bucket = alicloud.oss.Bucket("CreateBucket",
///     storage_class="Standard",
///     bucket=f"{name}-{default['result']}")
/// get_kms = alicloud.kms.Key("GetKMS",
///     origin="Aliyun_KMS",
///     protection_level="SOFTWARE",
///     description=name,
///     key_spec="Aliyun_AES_256",
///     key_usage="ENCRYPT/DECRYPT",
///     automatic_rotation="Disabled",
///     pending_window_in_days=7)
/// default_bucket_server_side_encryption = alicloud.oss.BucketServerSideEncryption("default",
///     kms_data_encryption="SM4",
///     kms_master_key_id=get_kms.id,
///     bucket=create_bucket.bucket,
///     sse_algorithm="KMS")
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
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var createBucket = new AliCloud.Oss.Bucket("CreateBucket", new()
///     {
///         StorageClass = "Standard",
///         BucketName = $"{name}-{@default.Result}",
///     });
///
///     var getKMS = new AliCloud.Kms.Key("GetKMS", new()
///     {
///         Origin = "Aliyun_KMS",
///         ProtectionLevel = "SOFTWARE",
///         Description = name,
///         KeySpec = "Aliyun_AES_256",
///         KeyUsage = "ENCRYPT/DECRYPT",
///         AutomaticRotation = "Disabled",
///         PendingWindowInDays = 7,
///     });
///
///     var defaultBucketServerSideEncryption = new AliCloud.Oss.BucketServerSideEncryption("default", new()
///     {
///         KmsDataEncryption = "SM4",
///         KmsMasterKeyId = getKMS.Id,
///         Bucket = createBucket.BucketName,
///         SseAlgorithm = "KMS",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
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
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createBucket, err := oss.NewBucket(ctx, "CreateBucket", &oss.BucketArgs{
/// 			StorageClass: pulumi.String("Standard"),
/// 			Bucket:       pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		getKMS, err := kms.NewKey(ctx, "GetKMS", &kms.KeyArgs{
/// 			Origin:              pulumi.String("Aliyun_KMS"),
/// 			ProtectionLevel:     pulumi.String("SOFTWARE"),
/// 			Description:         pulumi.String(name),
/// 			KeySpec:             pulumi.String("Aliyun_AES_256"),
/// 			KeyUsage:            pulumi.String("ENCRYPT/DECRYPT"),
/// 			AutomaticRotation:   pulumi.String("Disabled"),
/// 			PendingWindowInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketServerSideEncryption(ctx, "default", &oss.BucketServerSideEncryptionArgs{
/// 			KmsDataEncryption: pulumi.String("SM4"),
/// 			KmsMasterKeyId:    getKMS.ID(),
/// 			Bucket:            createBucket.Bucket,
/// 			SseAlgorithm:      pulumi.String("KMS"),
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
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.kms.Key;
/// import com.pulumi.alicloud.kms.KeyArgs;
/// import com.pulumi.alicloud.oss.BucketServerSideEncryption;
/// import com.pulumi.alicloud.oss.BucketServerSideEncryptionArgs;
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
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var createBucket = new Bucket("createBucket", BucketArgs.builder()
///             .storageClass("Standard")
///             .bucket(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var getKMS = new Key("getKMS", KeyArgs.builder()
///             .origin("Aliyun_KMS")
///             .protectionLevel("SOFTWARE")
///             .description(name)
///             .keySpec("Aliyun_AES_256")
///             .keyUsage("ENCRYPT/DECRYPT")
///             .automaticRotation("Disabled")
///             .pendingWindowInDays(7)
///             .build());
///
///         var defaultBucketServerSideEncryption = new BucketServerSideEncryption("defaultBucketServerSideEncryption", BucketServerSideEncryptionArgs.builder()
///             .kmsDataEncryption("SM4")
///             .kmsMasterKeyId(getKMS.id())
///             .bucket(createBucket.bucket())
///             .sseAlgorithm("KMS")
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
///       min: 10000
///       max: 99999
///   createBucket:
///     type: alicloud:oss:Bucket
///     name: CreateBucket
///     properties:
///       storageClass: Standard
///       bucket: ${name}-${default.result}
///   getKMS:
///     type: alicloud:kms:Key
///     name: GetKMS
///     properties:
///       origin: Aliyun_KMS
///       protectionLevel: SOFTWARE
///       description: ${name}
///       keySpec: Aliyun_AES_256
///       keyUsage: ENCRYPT/DECRYPT
///       automaticRotation: Disabled
///       pendingWindowInDays: 7
///   defaultBucketServerSideEncryption:
///     type: alicloud:oss:BucketServerSideEncryption
///     name: default
///     properties:
///       kmsDataEncryption: SM4
///       kmsMasterKeyId: ${getKMS.id}
///       bucket: ${createBucket.bucket}
///       sseAlgorithm: KMS
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OSS Bucket Server Side Encryption can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketServerSideEncryption:BucketServerSideEncryption example <id>
/// ```
class BucketServerSideEncryption extends pulumi.CustomResource {
  /// The name of the bucket.
  late final pulumi.Output<String> bucket;
  /// The algorithm used to encrypt objects. If this element is not specified, objects are encrypted by using AES256. This element is valid only when the value of SSEAlgorithm is set to KMS.
  late final pulumi.Output<String?> kmsDataEncryption;
  /// The CMK ID that must be specified when SSEAlgorithm is set to KMS and a specified CMK is used for encryption. In other cases, this element must be set to null.
  late final pulumi.Output<String?> kmsMasterKeyId;
  /// The server-side encryption method. Valid Values: KMS, AES256.
  late final pulumi.Output<String> sseAlgorithm;

  /// Creates a new [BucketServerSideEncryption].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketServerSideEncryption]. {@macro pulumi_oss_bucket_server_side_encryption_bucket_server_side_encryption_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketServerSideEncryption(
    String name, {
    BucketServerSideEncryptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketServerSideEncryption:BucketServerSideEncryption',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.kmsDataEncryption = registerOutput<String?>('kmsDataEncryption');
    this.kmsMasterKeyId = registerOutput<String?>('kmsMasterKeyId');
    this.sseAlgorithm = registerOutput<String>('sseAlgorithm');
  }
}
