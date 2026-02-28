import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_objectv2_args.dart';
import 'bucket_objectv2_override_provider.dart';

/// Provides an S3 object resource.
///
/// ## Example Usage
///
/// ### Uploading a file to a bucket
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const object = new aws.s3.BucketObjectv2("object", {
///     bucket: "your_bucket_name",
///     key: "new_object_key",
///     source: new pulumi.asset.FileAsset("path/to/file"),
///     etag: std.filemd5({
///         input: "path/to/file",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// object = aws.s3.BucketObjectv2("object",
///     bucket="your_bucket_name",
///     key="new_object_key",
///     source=pulumi.FileAsset("path/to/file"),
///     etag=std.filemd5(input="path/to/file").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @object = new Aws.S3.BucketObjectv2("object", new()
///     {
///         Bucket = "your_bucket_name",
///         Key = "new_object_key",
///         Source = new FileAsset("path/to/file"),
///         Etag = Std.Filemd5.Invoke(new()
///         {
///             Input = "path/to/file",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFilemd5, err := std.Filemd5(ctx, &std.Filemd5Args{
/// 			Input: "path/to/file",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketObjectv2(ctx, "object", &s3.BucketObjectv2Args{
/// 			Bucket: pulumi.Any("your_bucket_name"),
/// 			Key:    pulumi.String("new_object_key"),
/// 			Source: pulumi.NewFileAsset("path/to/file"),
/// 			Etag:   pulumi.String(invokeFilemd5.Result),
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
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filemd5Args;
/// import com.pulumi.asset.FileAsset;
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
///         var object = new BucketObjectv2("object", BucketObjectv2Args.builder()
///             .bucket("your_bucket_name")
///             .key("new_object_key")
///             .source(new FileAsset("path/to/file"))
///             .etag(StdFunctions.filemd5(Filemd5Args.builder()
///                 .input("path/to/file")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   object:
///     type: aws:s3:BucketObjectv2
///     properties:
///       bucket: your_bucket_name
///       key: new_object_key
///       source:
///         fn::FileAsset: path/to/file
///       etag:
///         fn::invoke:
///           function: std:filemd5
///           arguments:
///             input: path/to/file
///           return: result
/// ```
///
///
/// ### Encrypting with KMS Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const examplekms = new aws.kms.Key("examplekms", {
///     description: "KMS key 1",
///     deletionWindowInDays: 7,
/// });
/// const examplebucket = new aws.s3.Bucket("examplebucket", {bucket: "examplebuckettftest"});
/// const example = new aws.s3.BucketAcl("example", {
///     bucket: examplebucket.id,
///     acl: "private",
/// });
/// const exampleBucketObjectv2 = new aws.s3.BucketObjectv2("example", {
///     key: "someobject",
///     bucket: examplebucket.id,
///     source: new pulumi.asset.FileAsset("index.html"),
///     kmsKeyId: examplekms.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// examplekms = aws.kms.Key("examplekms",
///     description="KMS key 1",
///     deletion_window_in_days=7)
/// examplebucket = aws.s3.Bucket("examplebucket", bucket="examplebuckettftest")
/// example = aws.s3.BucketAcl("example",
///     bucket=examplebucket.id,
///     acl="private")
/// example_bucket_objectv2 = aws.s3.BucketObjectv2("example",
///     key="someobject",
///     bucket=examplebucket.id,
///     source=pulumi.FileAsset("index.html"),
///     kms_key_id=examplekms.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var examplekms = new Aws.Kms.Key("examplekms", new()
///     {
///         Description = "KMS key 1",
///         DeletionWindowInDays = 7,
///     });
///
///     var examplebucket = new Aws.S3.Bucket("examplebucket", new()
///     {
///         BucketName = "examplebuckettftest",
///     });
///
///     var example = new Aws.S3.BucketAcl("example", new()
///     {
///         Bucket = examplebucket.Id,
///         Acl = "private",
///     });
///
///     var exampleBucketObjectv2 = new Aws.S3.BucketObjectv2("example", new()
///     {
///         Key = "someobject",
///         Bucket = examplebucket.Id,
///         Source = new FileAsset("index.html"),
///         KmsKeyId = examplekms.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		examplekms, err := kms.NewKey(ctx, "examplekms", &kms.KeyArgs{
/// 			Description:          pulumi.String("KMS key 1"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplebucket, err := s3.NewBucket(ctx, "examplebucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("examplebuckettftest"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// 			Bucket: examplebucket.ID(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketObjectv2(ctx, "example", &s3.BucketObjectv2Args{
/// 			Key:      pulumi.String("someobject"),
/// 			Bucket:   examplebucket.ID(),
/// 			Source:   pulumi.NewFileAsset("index.html"),
/// 			KmsKeyId: examplekms.Arn,
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.asset.FileAsset;
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
///         var examplekms = new Key("examplekms", KeyArgs.builder()
///             .description("KMS key 1")
///             .deletionWindowInDays(7)
///             .build());
///
///         var examplebucket = new Bucket("examplebucket", BucketArgs.builder()
///             .bucket("examplebuckettftest")
///             .build());
///
///         var example = new BucketAcl("example", BucketAclArgs.builder()
///             .bucket(examplebucket.id())
///             .acl("private")
///             .build());
///
///         var exampleBucketObjectv2 = new BucketObjectv2("exampleBucketObjectv2", BucketObjectv2Args.builder()
///             .key("someobject")
///             .bucket(examplebucket.id())
///             .source(new FileAsset("index.html"))
///             .kmsKeyId(examplekms.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplekms:
///     type: aws:kms:Key
///     properties:
///       description: KMS key 1
///       deletionWindowInDays: 7
///   examplebucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: examplebuckettftest
///   example:
///     type: aws:s3:BucketAcl
///     properties:
///       bucket: ${examplebucket.id}
///       acl: private
///   exampleBucketObjectv2:
///     type: aws:s3:BucketObjectv2
///     name: example
///     properties:
///       key: someobject
///       bucket: ${examplebucket.id}
///       source:
///         fn::FileAsset: index.html
///       kmsKeyId: ${examplekms.arn}
/// ```
///
///
/// ### Server Side Encryption with S3 Default Master Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const examplebucket = new aws.s3.Bucket("examplebucket", {bucket: "examplebuckettftest"});
/// const example = new aws.s3.BucketAcl("example", {
///     bucket: examplebucket.id,
///     acl: "private",
/// });
/// const exampleBucketObjectv2 = new aws.s3.BucketObjectv2("example", {
///     key: "someobject",
///     bucket: examplebucket.id,
///     source: new pulumi.asset.FileAsset("index.html"),
///     serverSideEncryption: "aws:kms",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// examplebucket = aws.s3.Bucket("examplebucket", bucket="examplebuckettftest")
/// example = aws.s3.BucketAcl("example",
///     bucket=examplebucket.id,
///     acl="private")
/// example_bucket_objectv2 = aws.s3.BucketObjectv2("example",
///     key="someobject",
///     bucket=examplebucket.id,
///     source=pulumi.FileAsset("index.html"),
///     server_side_encryption="aws:kms")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var examplebucket = new Aws.S3.Bucket("examplebucket", new()
///     {
///         BucketName = "examplebuckettftest",
///     });
///
///     var example = new Aws.S3.BucketAcl("example", new()
///     {
///         Bucket = examplebucket.Id,
///         Acl = "private",
///     });
///
///     var exampleBucketObjectv2 = new Aws.S3.BucketObjectv2("example", new()
///     {
///         Key = "someobject",
///         Bucket = examplebucket.Id,
///         Source = new FileAsset("index.html"),
///         ServerSideEncryption = "aws:kms",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		examplebucket, err := s3.NewBucket(ctx, "examplebucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("examplebuckettftest"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// 			Bucket: examplebucket.ID(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketObjectv2(ctx, "example", &s3.BucketObjectv2Args{
/// 			Key:                  pulumi.String("someobject"),
/// 			Bucket:               examplebucket.ID(),
/// 			Source:               pulumi.NewFileAsset("index.html"),
/// 			ServerSideEncryption: pulumi.String("aws:kms"),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.asset.FileAsset;
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
///         var examplebucket = new Bucket("examplebucket", BucketArgs.builder()
///             .bucket("examplebuckettftest")
///             .build());
///
///         var example = new BucketAcl("example", BucketAclArgs.builder()
///             .bucket(examplebucket.id())
///             .acl("private")
///             .build());
///
///         var exampleBucketObjectv2 = new BucketObjectv2("exampleBucketObjectv2", BucketObjectv2Args.builder()
///             .key("someobject")
///             .bucket(examplebucket.id())
///             .source(new FileAsset("index.html"))
///             .serverSideEncryption("aws:kms")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplebucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: examplebuckettftest
///   example:
///     type: aws:s3:BucketAcl
///     properties:
///       bucket: ${examplebucket.id}
///       acl: private
///   exampleBucketObjectv2:
///     type: aws:s3:BucketObjectv2
///     name: example
///     properties:
///       key: someobject
///       bucket: ${examplebucket.id}
///       source:
///         fn::FileAsset: index.html
///       serverSideEncryption: aws:kms
/// ```
///
///
/// ### Server Side Encryption with AWS-Managed Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const examplebucket = new aws.s3.Bucket("examplebucket", {bucket: "examplebuckettftest"});
/// const example = new aws.s3.BucketAcl("example", {
///     bucket: examplebucket.id,
///     acl: "private",
/// });
/// const exampleBucketObjectv2 = new aws.s3.BucketObjectv2("example", {
///     key: "someobject",
///     bucket: examplebucket.id,
///     source: new pulumi.asset.FileAsset("index.html"),
///     serverSideEncryption: "AES256",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// examplebucket = aws.s3.Bucket("examplebucket", bucket="examplebuckettftest")
/// example = aws.s3.BucketAcl("example",
///     bucket=examplebucket.id,
///     acl="private")
/// example_bucket_objectv2 = aws.s3.BucketObjectv2("example",
///     key="someobject",
///     bucket=examplebucket.id,
///     source=pulumi.FileAsset("index.html"),
///     server_side_encryption="AES256")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var examplebucket = new Aws.S3.Bucket("examplebucket", new()
///     {
///         BucketName = "examplebuckettftest",
///     });
///
///     var example = new Aws.S3.BucketAcl("example", new()
///     {
///         Bucket = examplebucket.Id,
///         Acl = "private",
///     });
///
///     var exampleBucketObjectv2 = new Aws.S3.BucketObjectv2("example", new()
///     {
///         Key = "someobject",
///         Bucket = examplebucket.Id,
///         Source = new FileAsset("index.html"),
///         ServerSideEncryption = "AES256",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		examplebucket, err := s3.NewBucket(ctx, "examplebucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("examplebuckettftest"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// 			Bucket: examplebucket.ID(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketObjectv2(ctx, "example", &s3.BucketObjectv2Args{
/// 			Key:                  pulumi.String("someobject"),
/// 			Bucket:               examplebucket.ID(),
/// 			Source:               pulumi.NewFileAsset("index.html"),
/// 			ServerSideEncryption: pulumi.String("AES256"),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.asset.FileAsset;
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
///         var examplebucket = new Bucket("examplebucket", BucketArgs.builder()
///             .bucket("examplebuckettftest")
///             .build());
///
///         var example = new BucketAcl("example", BucketAclArgs.builder()
///             .bucket(examplebucket.id())
///             .acl("private")
///             .build());
///
///         var exampleBucketObjectv2 = new BucketObjectv2("exampleBucketObjectv2", BucketObjectv2Args.builder()
///             .key("someobject")
///             .bucket(examplebucket.id())
///             .source(new FileAsset("index.html"))
///             .serverSideEncryption("AES256")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplebucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: examplebuckettftest
///   example:
///     type: aws:s3:BucketAcl
///     properties:
///       bucket: ${examplebucket.id}
///       acl: private
///   exampleBucketObjectv2:
///     type: aws:s3:BucketObjectv2
///     name: example
///     properties:
///       key: someobject
///       bucket: ${examplebucket.id}
///       source:
///         fn::FileAsset: index.html
///       serverSideEncryption: AES256
/// ```
///
///
/// ### S3 Object Lock
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const examplebucket = new aws.s3.Bucket("examplebucket", {
///     bucket: "examplebuckettftest",
///     objectLockEnabled: true,
/// });
/// const example = new aws.s3.BucketAcl("example", {
///     bucket: examplebucket.id,
///     acl: "private",
/// });
/// const exampleBucketVersioning = new aws.s3.BucketVersioning("example", {
///     bucket: examplebucket.id,
///     versioningConfiguration: {
///         status: "Enabled",
///     },
/// });
/// const examplebucketObject = new aws.s3.BucketObjectv2("examplebucket_object", {
///     key: "someobject",
///     bucket: examplebucket.id,
///     source: new pulumi.asset.FileAsset("important.txt"),
///     objectLockLegalHoldStatus: "ON",
///     objectLockMode: "GOVERNANCE",
///     objectLockRetainUntilDate: "2021-12-31T23:59:60Z",
///     forceDestroy: true,
/// }, {
///     dependsOn: [exampleBucketVersioning],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// examplebucket = aws.s3.Bucket("examplebucket",
///     bucket="examplebuckettftest",
///     object_lock_enabled=True)
/// example = aws.s3.BucketAcl("example",
///     bucket=examplebucket.id,
///     acl="private")
/// example_bucket_versioning = aws.s3.BucketVersioning("example",
///     bucket=examplebucket.id,
///     versioning_configuration={
///         "status": "Enabled",
///     })
/// examplebucket_object = aws.s3.BucketObjectv2("examplebucket_object",
///     key="someobject",
///     bucket=examplebucket.id,
///     source=pulumi.FileAsset("important.txt"),
///     object_lock_legal_hold_status="ON",
///     object_lock_mode="GOVERNANCE",
///     object_lock_retain_until_date="2021-12-31T23:59:60Z",
///     force_destroy=True,
///     opts = pulumi.ResourceOptions(depends_on=[example_bucket_versioning]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var examplebucket = new Aws.S3.Bucket("examplebucket", new()
///     {
///         BucketName = "examplebuckettftest",
///         ObjectLockEnabled = true,
///     });
///
///     var example = new Aws.S3.BucketAcl("example", new()
///     {
///         Bucket = examplebucket.Id,
///         Acl = "private",
///     });
///
///     var exampleBucketVersioning = new Aws.S3.BucketVersioning("example", new()
///     {
///         Bucket = examplebucket.Id,
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
///     });
///
///     var examplebucketObject = new Aws.S3.BucketObjectv2("examplebucket_object", new()
///     {
///         Key = "someobject",
///         Bucket = examplebucket.Id,
///         Source = new FileAsset("important.txt"),
///         ObjectLockLegalHoldStatus = "ON",
///         ObjectLockMode = "GOVERNANCE",
///         ObjectLockRetainUntilDate = "2021-12-31T23:59:60Z",
///         ForceDestroy = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleBucketVersioning,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		examplebucket, err := s3.NewBucket(ctx, "examplebucket", &s3.BucketArgs{
/// 			Bucket:            pulumi.String("examplebuckettftest"),
/// 			ObjectLockEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// 			Bucket: examplebucket.ID(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucketVersioning, err := s3.NewBucketVersioning(ctx, "example", &s3.BucketVersioningArgs{
/// 			Bucket: examplebucket.ID(),
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketObjectv2(ctx, "examplebucket_object", &s3.BucketObjectv2Args{
/// 			Key:                       pulumi.String("someobject"),
/// 			Bucket:                    examplebucket.ID(),
/// 			Source:                    pulumi.NewFileAsset("important.txt"),
/// 			ObjectLockLegalHoldStatus: pulumi.String("ON"),
/// 			ObjectLockMode:            pulumi.String("GOVERNANCE"),
/// 			ObjectLockRetainUntilDate: pulumi.String("2021-12-31T23:59:60Z"),
/// 			ForceDestroy:              pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleBucketVersioning,
/// 		}))
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.s3.BucketVersioning;
/// import com.pulumi.aws.s3.BucketVersioningArgs;
/// import com.pulumi.aws.s3.inputs.BucketVersioningVersioningConfigurationArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.asset.FileAsset;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var examplebucket = new Bucket("examplebucket", BucketArgs.builder()
///             .bucket("examplebuckettftest")
///             .objectLockEnabled(true)
///             .build());
///
///         var example = new BucketAcl("example", BucketAclArgs.builder()
///             .bucket(examplebucket.id())
///             .acl("private")
///             .build());
///
///         var exampleBucketVersioning = new BucketVersioning("exampleBucketVersioning", BucketVersioningArgs.builder()
///             .bucket(examplebucket.id())
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .build());
///
///         var examplebucketObject = new BucketObjectv2("examplebucketObject", BucketObjectv2Args.builder()
///             .key("someobject")
///             .bucket(examplebucket.id())
///             .source(new FileAsset("important.txt"))
///             .objectLockLegalHoldStatus("ON")
///             .objectLockMode("GOVERNANCE")
///             .objectLockRetainUntilDate("2021-12-31T23:59:60Z")
///             .forceDestroy(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleBucketVersioning)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplebucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: examplebuckettftest
///       objectLockEnabled: true
///   example:
///     type: aws:s3:BucketAcl
///     properties:
///       bucket: ${examplebucket.id}
///       acl: private
///   exampleBucketVersioning:
///     type: aws:s3:BucketVersioning
///     name: example
///     properties:
///       bucket: ${examplebucket.id}
///       versioningConfiguration:
///         status: Enabled
///   examplebucketObject:
///     type: aws:s3:BucketObjectv2
///     name: examplebucket_object
///     properties:
///       key: someobject
///       bucket: ${examplebucket.id}
///       source:
///         fn::FileAsset: important.txt
///       objectLockLegalHoldStatus: ON
///       objectLockMode: GOVERNANCE
///       objectLockRetainUntilDate: 2021-12-31T23:59:60Z
///       forceDestroy: true
///     options:
///       dependsOn:
///         - ${exampleBucketVersioning}
/// ```
///
///
/// ### Ignoring Provider `default_tags`
///
/// S3 objects support a [maximum of 10 tags](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html).
/// If the resource's own `tags` and the provider-level `default_tags` would together lead to more than 10 tags on an S3 object, use the `override_provider` configuration block to suppress any provider-level `default_tags`.
///
/// > S3 objects stored in Amazon S3 Express directory buckets do not support tags, so any provider-level `default_tags` must be suppressed.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const examplebucket = new aws.s3.Bucket("examplebucket", {bucket: "examplebuckettftest"});
/// const examplebucketObject = new aws.s3.BucketObjectv2("examplebucket_object", {
///     key: "someobject",
///     bucket: examplebucket.id,
///     source: new pulumi.asset.FileAsset("important.txt"),
///     tags: {
///         Env: "test",
///     },
///     overrideProvider: {
///         defaultTags: {
///             tags: {},
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// examplebucket = aws.s3.Bucket("examplebucket", bucket="examplebuckettftest")
/// examplebucket_object = aws.s3.BucketObjectv2("examplebucket_object",
///     key="someobject",
///     bucket=examplebucket.id,
///     source=pulumi.FileAsset("important.txt"),
///     tags={
///         "Env": "test",
///     },
///     override_provider={
///         "default_tags": {
///             "tags": {},
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var examplebucket = new Aws.S3.Bucket("examplebucket", new()
///     {
///         BucketName = "examplebuckettftest",
///     });
///
///     var examplebucketObject = new Aws.S3.BucketObjectv2("examplebucket_object", new()
///     {
///         Key = "someobject",
///         Bucket = examplebucket.Id,
///         Source = new FileAsset("important.txt"),
///         Tags =
///         {
///             { "Env", "test" },
///         },
///         OverrideProvider = new Aws.S3.Inputs.BucketObjectv2OverrideProviderArgs
///         {
///             DefaultTags = new Aws.S3.Inputs.BucketObjectv2OverrideProviderDefaultTagsArgs
///             {
///                 Tags = null,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		examplebucket, err := s3.NewBucket(ctx, "examplebucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("examplebuckettftest"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketObjectv2(ctx, "examplebucket_object", &s3.BucketObjectv2Args{
/// 			Key:    pulumi.String("someobject"),
/// 			Bucket: examplebucket.ID(),
/// 			Source: pulumi.NewFileAsset("important.txt"),
/// 			Tags: pulumi.StringMap{
/// 				"Env": pulumi.String("test"),
/// 			},
/// 			OverrideProvider: &s3.BucketObjectv2OverrideProviderArgs{
/// 				DefaultTags: &s3.BucketObjectv2OverrideProviderDefaultTagsArgs{
/// 					Tags: pulumi.StringMap{},
/// 				},
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.aws.s3.inputs.BucketObjectv2OverrideProviderArgs;
/// import com.pulumi.aws.s3.inputs.BucketObjectv2OverrideProviderDefaultTagsArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var examplebucket = new Bucket("examplebucket", BucketArgs.builder()
///             .bucket("examplebuckettftest")
///             .build());
///
///         var examplebucketObject = new BucketObjectv2("examplebucketObject", BucketObjectv2Args.builder()
///             .key("someobject")
///             .bucket(examplebucket.id())
///             .source(new FileAsset("important.txt"))
///             .tags(Map.of("Env", "test"))
///             .overrideProvider(BucketObjectv2OverrideProviderArgs.builder()
///                 .defaultTags(BucketObjectv2OverrideProviderDefaultTagsArgs.builder()
///                     .tags(Map.ofEntries(
///                     ))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplebucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: examplebuckettftest
///   examplebucketObject:
///     type: aws:s3:BucketObjectv2
///     name: examplebucket_object
///     properties:
///       key: someobject
///       bucket: ${examplebucket.id}
///       source:
///         fn::FileAsset: important.txt
///       tags:
///         Env: test
///       overrideProvider:
///         defaultTags:
///           tags: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `bucket` (String) S3 bucket name.
/// * `key` (String) Object key.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Import using S3 URL syntax:
///
///
/// **Using `pulumi import` to import** objects using the `id` or S3 URL. For example:
///
/// Import using the `id`, which is the bucket name and the key together:
///
/// ```sh
/// $ pulumi import aws:s3/bucketObjectv2:BucketObjectv2 example some-bucket-name/some/key.txt
/// ```
///
/// Import using S3 URL syntax:
///
/// ```sh
/// $ pulumi import aws:s3/bucketObjectv2:BucketObjectv2 example s3://some-bucket-name/some/key.txt
/// ```
class BucketObjectv2 extends pulumi.CustomResource {
  /// [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, `bucket-owner-read`, and `bucket-owner-full-control`.
  late final pulumi.Output<String> acl;

  /// ARN of the object.
  late final pulumi.Output<String> arn;

  /// Name of the bucket to put the file in. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified.
  late final pulumi.Output<String> bucket;

  /// Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  late final pulumi.Output<bool> bucketKeyEnabled;

  /// Caching behavior along the request/reply chain Read [w3c cache_control](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  late final pulumi.Output<String?> cacheControl;

  /// Indicates the algorithm used to create the checksum for the object. If a value is specified and the object is encrypted with KMS, you must have permission to use the `kms:Decrypt` action. Valid values: `CRC32`, `CRC32C`, `CRC64NVME`, `SHA1`, `SHA256`.
  late final pulumi.Output<String?> checksumAlgorithm;

  /// The base64-encoded, 32-bit CRC32 checksum of the object.
  late final pulumi.Output<String> checksumCrc32;

  /// The base64-encoded, 32-bit CRC32C checksum of the object.
  late final pulumi.Output<String> checksumCrc32c;

  /// The base64-encoded, 64-bit CRC64NVME checksum of the object.
  late final pulumi.Output<String> checksumCrc64nvme;

  /// The base64-encoded, 160-bit SHA-1 digest of the object.
  late final pulumi.Output<String> checksumSha1;

  /// The base64-encoded, 256-bit SHA-256 digest of the object.
  late final pulumi.Output<String> checksumSha256;

  /// Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text.
  late final pulumi.Output<String?> content;

  /// Base64-encoded data that will be decoded and uploaded as raw bytes for the object content. This allows safely uploading non-UTF8 binary data, but is recommended only for small content such as the result of the `gzipbase64` function with small text strings. For larger objects, use `source` to stream the content from a disk file.
  late final pulumi.Output<String?> contentBase64;

  /// Presentational information for the object. Read [w3c content_disposition](http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1) for further information.
  late final pulumi.Output<String?> contentDisposition;

  /// Content encodings that have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [w3c content encoding](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11) for further information.
  late final pulumi.Output<String?> contentEncoding;

  /// Language the content is in e.g., en-US or en-GB.
  late final pulumi.Output<String?> contentLanguage;

  /// Standard MIME type describing the format of the object data, e.g., application/octet-stream. All Valid MIME Types are valid for this input.
  late final pulumi.Output<String> contentType;

  /// Triggers updates when the value changes. This attribute is not compatible with KMS encryption, `kms_key_id` or `server_side_encryption = "aws:kms"`, also if an object is larger than 16 MB, the AWS Management Console will upload or copy that object as a Multipart Upload, and therefore the ETag will not be an MD5 digest (see `source_hash` instead).
  late final pulumi.Output<String> etag;

  /// Whether to allow the object to be deleted by removing any legal hold on any object version. Default is `false`. This value should be set to `true` only if the bucket has S3 object lock enabled.
  late final pulumi.Output<bool?> forceDestroy;

  /// Name of the object once it is in the bucket.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> key;

  /// ARN of the KMS Key to use for object encryption. If the S3 Bucket has server-side encryption enabled, that value will automatically be used. If referencing the `aws.kms.Key` resource, use the `arn` attribute. If referencing the `aws.kms.Alias` data source or resource, use the `target_key_arn` attribute. The provider will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<String> kmsKeyId;

  /// Map of keys/values to provision metadata (will be automatically prefixed by `x-amz-meta-`, note that only lowercase label are currently supported by the AWS Go API).
  late final pulumi.Output<Map<String, String>?> metadata;

  /// [Legal hold](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-legal-holds) status that you want to apply to the specified object. Valid values are `ON` and `OFF`.
  late final pulumi.Output<String?> objectLockLegalHoldStatus;

  /// Object lock [retention mode](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-modes) that you want to apply to this object. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  late final pulumi.Output<String?> objectLockMode;

  /// Date and time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8), when this object's object lock will [expire](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-periods).
  late final pulumi.Output<String?> objectLockRetainUntilDate;

  /// Override provider-level configuration options. See Override Provider below for more details.
  late final pulumi.Output<BucketObjectv2OverrideProvider?> overrideProvider;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Server-side encryption of the object in S3. Valid values are `"AES256"`, `"aws:kms"`, `"aws:kms:dsse"`, and `"aws:fsx"`.
  late final pulumi.Output<String> serverSideEncryption;

  /// Path to a file that will be read and uploaded as raw bytes for the object content.
  late final pulumi.Output<dynamic> source;

  /// Triggers updates like `etag` but useful to address `etag` encryption limitations. (The value is only stored in state and not saved by AWS.)
  late final pulumi.Output<String?> sourceHash;

  /// [Storage Class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html#AmazonS3-PutObject-request-header-StorageClass) for the object. Defaults to "`STANDARD`".
  late final pulumi.Output<String> storageClass;

  /// Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Unique version ID value for the object, if bucket versioning is enabled.
  late final pulumi.Output<String> versionId;

  /// Target URL for [website redirect](http://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html).
  ///
  /// If no content is provided through `source`, `content` or `content_base64`, then the object will be empty.
  ///
  /// > **Note:** If you specify `content_encoding` you are responsible for encoding the body appropriately. `source`, `content`, and `content_base64` all expect already encoded/compressed bytes.
  ///
  /// > **Note:** The provider ignores all leading `/`s in the object's `key` and treats multiple `/`s in the rest of the object's `key` as a single `/`, so values of `/index.html` and `index.html` correspond to the same S3 object as do `first//second///third//` and `first/second/third/`.
  late final pulumi.Output<String?> websiteRedirect;

  /// Creates a new [BucketObjectv2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketObjectv2]. {@macro pulumi_s3_bucket_objectv2_bucket_objectv2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketObjectv2(
    String name, {
    BucketObjectv2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketObjectv2:BucketObjectv2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acl = registerOutput<String>('acl');
    this.arn = registerOutput<String>('arn');
    this.bucket = registerOutput<String>('bucket');
    this.bucketKeyEnabled = registerOutput<bool>('bucketKeyEnabled');
    this.cacheControl = registerOutput<String?>('cacheControl');
    this.checksumAlgorithm = registerOutput<String?>('checksumAlgorithm');
    this.checksumCrc32 = registerOutput<String>('checksumCrc32');
    this.checksumCrc32c = registerOutput<String>('checksumCrc32c');
    this.checksumCrc64nvme = registerOutput<String>('checksumCrc64nvme');
    this.checksumSha1 = registerOutput<String>('checksumSha1');
    this.checksumSha256 = registerOutput<String>('checksumSha256');
    this.content = registerOutput<String?>('content');
    this.contentBase64 = registerOutput<String?>('contentBase64');
    this.contentDisposition = registerOutput<String?>('contentDisposition');
    this.contentEncoding = registerOutput<String?>('contentEncoding');
    this.contentLanguage = registerOutput<String?>('contentLanguage');
    this.contentType = registerOutput<String>('contentType');
    this.etag = registerOutput<String>('etag');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.key = registerOutput<String>('key');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.objectLockLegalHoldStatus =
        registerOutput<String?>('objectLockLegalHoldStatus');
    this.objectLockMode = registerOutput<String?>('objectLockMode');
    this.objectLockRetainUntilDate =
        registerOutput<String?>('objectLockRetainUntilDate');
    this.overrideProvider =
        registerOutput<BucketObjectv2OverrideProvider?>('overrideProvider');
    this.region = registerOutput<String>('region');
    this.serverSideEncryption = registerOutput<String>('serverSideEncryption');
    this.source = registerOutput<dynamic>('source');
    this.sourceHash = registerOutput<String?>('sourceHash');
    this.storageClass = registerOutput<String>('storageClass');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.versionId = registerOutput<String>('versionId');
    this.websiteRedirect = registerOutput<String?>('websiteRedirect');
  }
}
