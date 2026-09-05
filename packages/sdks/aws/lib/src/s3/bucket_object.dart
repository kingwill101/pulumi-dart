import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_object_args.dart';
import 'bucket_object_state.dart';

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
/// const object = new aws.s3.BucketObject("object", {
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
/// object = aws.s3.BucketObject("object",
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
///     var @object = new Aws.S3.BucketObject("object", new()
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
/// 		_, err = s3.NewBucketObject(ctx, "object", &s3.BucketObjectArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "aws_s3_bucketobject" "object" {
///   bucket = "your_bucket_name"
///   key    = "new_object_key"
///   source = fileAsset("path/to/file")
///   etag   = filemd5("path/to/file")
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.BucketObject;
/// import com.pulumi.aws.s3.BucketObjectArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filemd5Args;
/// import com.pulumi.asset.FileAsset;
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
///         var object = new BucketObject("object", BucketObjectArgs.builder()
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
///     type: aws:s3:BucketObject
///     properties:
///       bucket: your_bucket_name
///       key: new_object_key
///       source:
///         fn::fileAsset: path/to/file
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
/// const exampleBucketObject = new aws.s3.BucketObject("example", {
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
/// example_bucket_object = aws.s3.BucketObject("example",
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
///     var exampleBucketObject = new Aws.S3.BucketObject("example", new()
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
/// 			Bucket: examplebucket.ID().ToIDOutput().ToStringOutput(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketObject(ctx, "example", &s3.BucketObjectArgs{
/// 			Key:      pulumi.String("someobject"),
/// 			Bucket:   examplebucket.ID().ToIDOutput().ToStringOutput(),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_kms_key" "examplekms" {
///   description             = "KMS key 1"
///   deletion_window_in_days = 7
/// }
/// resource "aws_s3_bucket" "examplebucket" {
///   bucket = "examplebuckettftest"
/// }
/// resource "aws_s3_bucketacl" "example" {
///   bucket = aws_s3_bucket.examplebucket.id
///   acl    = "private"
/// }
/// resource "aws_s3_bucketobject" "example" {
///   key        = "someobject"
///   bucket     = aws_s3_bucket.examplebucket.id
///   source     = fileAsset("index.html")
///   kms_key_id = aws_kms_key.examplekms.arn
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
/// import com.pulumi.aws.s3.BucketObject;
/// import com.pulumi.aws.s3.BucketObjectArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var exampleBucketObject = new BucketObject("exampleBucketObject", BucketObjectArgs.builder()
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
///   exampleBucketObject:
///     type: aws:s3:BucketObject
///     name: example
///     properties:
///       key: someobject
///       bucket: ${examplebucket.id}
///       source:
///         fn::fileAsset: index.html
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
/// const exampleBucketObject = new aws.s3.BucketObject("example", {
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
/// example_bucket_object = aws.s3.BucketObject("example",
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
///     var exampleBucketObject = new Aws.S3.BucketObject("example", new()
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
/// 			Bucket: examplebucket.ID().ToIDOutput().ToStringOutput(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketObject(ctx, "example", &s3.BucketObjectArgs{
/// 			Key:                  pulumi.String("someobject"),
/// 			Bucket:               examplebucket.ID().ToIDOutput().ToStringOutput(),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3_bucket" "examplebucket" {
///   bucket = "examplebuckettftest"
/// }
/// resource "aws_s3_bucketacl" "example" {
///   bucket = aws_s3_bucket.examplebucket.id
///   acl    = "private"
/// }
/// resource "aws_s3_bucketobject" "example" {
///   key                    = "someobject"
///   bucket                 = aws_s3_bucket.examplebucket.id
///   source                 = fileAsset("index.html")
///   server_side_encryption = "aws:kms"
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
/// import com.pulumi.aws.s3.BucketObject;
/// import com.pulumi.aws.s3.BucketObjectArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var examplebucket = new Bucket("examplebucket", BucketArgs.builder()
///             .bucket("examplebuckettftest")
///             .build());
///
///         var example = new BucketAcl("example", BucketAclArgs.builder()
///             .bucket(examplebucket.id())
///             .acl("private")
///             .build());
///
///         var exampleBucketObject = new BucketObject("exampleBucketObject", BucketObjectArgs.builder()
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
///   exampleBucketObject:
///     type: aws:s3:BucketObject
///     name: example
///     properties:
///       key: someobject
///       bucket: ${examplebucket.id}
///       source:
///         fn::fileAsset: index.html
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
/// const exampleBucketObject = new aws.s3.BucketObject("example", {
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
/// example_bucket_object = aws.s3.BucketObject("example",
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
///     var exampleBucketObject = new Aws.S3.BucketObject("example", new()
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
/// 			Bucket: examplebucket.ID().ToIDOutput().ToStringOutput(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketObject(ctx, "example", &s3.BucketObjectArgs{
/// 			Key:                  pulumi.String("someobject"),
/// 			Bucket:               examplebucket.ID().ToIDOutput().ToStringOutput(),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3_bucket" "examplebucket" {
///   bucket = "examplebuckettftest"
/// }
/// resource "aws_s3_bucketacl" "example" {
///   bucket = aws_s3_bucket.examplebucket.id
///   acl    = "private"
/// }
/// resource "aws_s3_bucketobject" "example" {
///   key                    = "someobject"
///   bucket                 = aws_s3_bucket.examplebucket.id
///   source                 = fileAsset("index.html")
///   server_side_encryption = "AES256"
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
/// import com.pulumi.aws.s3.BucketObject;
/// import com.pulumi.aws.s3.BucketObjectArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var examplebucket = new Bucket("examplebucket", BucketArgs.builder()
///             .bucket("examplebuckettftest")
///             .build());
///
///         var example = new BucketAcl("example", BucketAclArgs.builder()
///             .bucket(examplebucket.id())
///             .acl("private")
///             .build());
///
///         var exampleBucketObject = new BucketObject("exampleBucketObject", BucketObjectArgs.builder()
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
///   exampleBucketObject:
///     type: aws:s3:BucketObject
///     name: example
///     properties:
///       key: someobject
///       bucket: ${examplebucket.id}
///       source:
///         fn::fileAsset: index.html
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
///     versioningConfiguration: {
///         status: "Enabled",
///     },
///     bucket: examplebucket.id,
/// });
/// const exampleBucketObject = new aws.s3.BucketObject("example", {
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
///     versioning_configuration={
///         "status": "Enabled",
///     },
///     bucket=examplebucket.id)
/// example_bucket_object = aws.s3.BucketObject("example",
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
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
///         Bucket = examplebucket.Id,
///     });
///
///     var exampleBucketObject = new Aws.S3.BucketObject("example", new()
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
/// 			Bucket: examplebucket.ID().ToIDOutput().ToStringOutput(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucketVersioning, err := s3.NewBucketVersioning(ctx, "example", &s3.BucketVersioningArgs{
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 			Bucket: examplebucket.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketObject(ctx, "example", &s3.BucketObjectArgs{
/// 			Key:                       pulumi.String("someobject"),
/// 			Bucket:                    examplebucket.ID().ToIDOutput().ToStringOutput(),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3_bucket" "examplebucket" {
///   bucket              = "examplebuckettftest"
///   object_lock_enabled = true
/// }
/// resource "aws_s3_bucketacl" "example" {
///   bucket = aws_s3_bucket.examplebucket.id
///   acl    = "private"
/// }
/// resource "aws_s3_bucketversioning" "example" {
///   versioning_configuration = {
///     status = "Enabled"
///   }
///   bucket = aws_s3_bucket.examplebucket.id
/// }
/// resource "aws_s3_bucketobject" "example" {
///   depends_on                    = [aws_s3_bucketversioning.example]
///   key                           = "someobject"
///   bucket                        = aws_s3_bucket.examplebucket.id
///   source                        = fileAsset("important.txt")
///   object_lock_legal_hold_status = "ON"
///   object_lock_mode              = "GOVERNANCE"
///   object_lock_retain_until_date = "2021-12-31T23:59:60Z"
///   force_destroy                 = true
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
/// import com.pulumi.aws.s3.BucketObject;
/// import com.pulumi.aws.s3.BucketObjectArgs;
/// import com.pulumi.asset.FileAsset;
/// import com.pulumi.resources.CustomResourceOptions;
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
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .bucket(examplebucket.id())
///             .build());
///
///         var exampleBucketObject = new BucketObject("exampleBucketObject", BucketObjectArgs.builder()
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
///       versioningConfiguration:
///         status: Enabled
///       bucket: ${examplebucket.id}
///   exampleBucketObject:
///     type: aws:s3:BucketObject
///     name: example
///     properties:
///       key: someobject
///       bucket: ${examplebucket.id}
///       source:
///         fn::fileAsset: important.txt
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
/// If no content is provided through `source`, `content` or `contentBase64`, then the object will be empty.
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
/// * `accountId` (String) AWS Account where this resource is managed.
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
/// $ pulumi import aws:s3/bucketObject:BucketObject example some-bucket-name/some/key.txt
/// ```
///
/// Import using S3 URL syntax:
///
/// ```sh
/// $ pulumi import aws:s3/bucketObject:BucketObject example s3://some-bucket-name/some/key.txt
/// ```
class BucketObject extends pulumi.CustomResource {
  /// [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, `bucket-owner-read`, and `bucket-owner-full-control`. Defaults to `private`.
  late final pulumi.Output<String?> acl;
  /// ARN of the object.
  late final pulumi.Output<String> arn;
  /// Name of the bucket to put the file in. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified. Use the `aws.s3.BucketObjectv2` resource instead.
  late final pulumi.Output<String> bucket;
  /// Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  late final pulumi.Output<bool> bucketKeyEnabled;
  /// Caching behavior along the request/reply chain Read [w3c cacheControl](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  late final pulumi.Output<String?> cacheControl;
  /// Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text.
  late final pulumi.Output<String?> content;
  /// Base64-encoded data that will be decoded and uploaded as raw bytes for the object content. This allows safely uploading non-UTF8 binary data, but is recommended only for small content such as the result of the `gzipbase64` function with small text strings. For larger objects, use `source` to stream the content from a disk file.
  late final pulumi.Output<String?> contentBase64;
  /// Presentational information for the object. Read [w3c contentDisposition](http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1) for further information.
  late final pulumi.Output<String?> contentDisposition;
  /// Content encodings that have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [w3c content encoding](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11) for further information.
  late final pulumi.Output<String?> contentEncoding;
  /// Language the content is in e.g., en-US or en-GB.
  late final pulumi.Output<String?> contentLanguage;
  /// Standard MIME type describing the format of the object data, e.g., application/octet-stream. All Valid MIME Types are valid for this input.
  late final pulumi.Output<String> contentType;
  /// Triggers updates when the value changes. This attribute is not compatible with KMS encryption, `kmsKeyId` or `serverSideEncryption = "aws:kms"` (see `sourceHash` instead).
  late final pulumi.Output<String> etag;
  /// Whether to allow the object to be deleted by removing any legal hold on any object version. Default is `false`. This value should be set to `true` only if the bucket has S3 object lock enabled.
  late final pulumi.Output<bool?> forceDestroy;
  /// Name of the object once it is in the bucket. Use the `aws.s3.BucketObjectv2` resource instead.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> key;
  /// ARN of the KMS Key to use for object encryption. If the S3 Bucket has server-side encryption enabled, that value will automatically be used. If referencing the `aws.kms.Key` resource, use the `arn` attribute. If referencing the `aws.kms.Alias` data source or resource, use the `targetKeyArn` attribute. The provider will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<String> kmsKeyId;
  /// Map of keys/values to provision metadata (will be automatically prefixed by `x-amz-meta-`, note that only lowercase label are currently supported by the AWS Go API).
  late final pulumi.Output<Map<String, String>?> metadata;
  /// [Legal hold](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-legal-holds) status that you want to apply to the specified object. Valid values are `ON` and `OFF`.
  late final pulumi.Output<String?> objectLockLegalHoldStatus;
  /// Object lock [retention mode](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-modes) that you want to apply to this object. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  late final pulumi.Output<String?> objectLockMode;
  /// Date and time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8), when this object's object lock will [expire](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-periods).
  late final pulumi.Output<String?> objectLockRetainUntilDate;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Server-side encryption of the object in S3. Valid values are "`AES256`" and "`aws:kms`".
  late final pulumi.Output<String> serverSideEncryption;
  /// Path to a file that will be read and uploaded as raw bytes for the object content.
  late final pulumi.Output<dynamic> source;
  /// Triggers updates like `etag` but useful to address `etag` encryption limitations.
  late final pulumi.Output<String?> sourceHash;
  /// [Storage Class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html#AmazonS3-PutObject-request-header-StorageClass) for the object. Defaults to "`STANDARD`".
  late final pulumi.Output<String> storageClass;
  /// Map of tags to assign to the object. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Unique version ID value for the object, if bucket versioning is enabled.
  late final pulumi.Output<String> versionId;
  /// Target URL for [website redirect](http://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html).
  ///
  /// &gt; **Note:** If you specify `contentEncoding` you are responsible for encoding the body appropriately. `source`, `content`, and `contentBase64` all expect already encoded/compressed bytes.
  late final pulumi.Output<String?> websiteRedirect;

  /// Creates a new [BucketObject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketObject]. {@macro pulumi_s3_bucket_object_bucket_object_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketObject(
    String name, {
    BucketObjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketObject:BucketObject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    acl = registerOutput<String?>('acl');
    arn = registerOutput<String>('arn');
    bucket = registerOutput<String>('bucket');
    bucketKeyEnabled = registerOutput<bool>('bucketKeyEnabled');
    cacheControl = registerOutput<String?>('cacheControl');
    content = registerOutput<String?>('content');
    contentBase64 = registerOutput<String?>('contentBase64');
    contentDisposition = registerOutput<String?>('contentDisposition');
    contentEncoding = registerOutput<String?>('contentEncoding');
    contentLanguage = registerOutput<String?>('contentLanguage');
    contentType = registerOutput<String>('contentType');
    etag = registerOutput<String>('etag');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    key = registerOutput<String>('key');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    metadata = registerOutput<Map<String, String>?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    objectLockLegalHoldStatus = registerOutput<String?>('objectLockLegalHoldStatus');
    objectLockMode = registerOutput<String?>('objectLockMode');
    objectLockRetainUntilDate = registerOutput<String?>('objectLockRetainUntilDate');
    region = registerOutput<String>('region');
    serverSideEncryption = registerOutput<String>('serverSideEncryption');
    source = registerOutput<dynamic>('source');
    sourceHash = registerOutput<String?>('sourceHash');
    storageClass = registerOutput<String>('storageClass');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    versionId = registerOutput<String>('versionId');
    websiteRedirect = registerOutput<String?>('websiteRedirect');
  }

  /// Gets an existing [BucketObject] resource's state with the given [name] and [id].
  static BucketObject get(
    String name,
    pulumi.Input<String> id, {
    BucketObjectState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BucketObject._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BucketObject._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketObject:BucketObject',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acl = registerOutput<String?>('acl');
    arn = registerOutput<String>('arn');
    bucket = registerOutput<String>('bucket');
    bucketKeyEnabled = registerOutput<bool>('bucketKeyEnabled');
    cacheControl = registerOutput<String?>('cacheControl');
    content = registerOutput<String?>('content');
    contentBase64 = registerOutput<String?>('contentBase64');
    contentDisposition = registerOutput<String?>('contentDisposition');
    contentEncoding = registerOutput<String?>('contentEncoding');
    contentLanguage = registerOutput<String?>('contentLanguage');
    contentType = registerOutput<String>('contentType');
    etag = registerOutput<String>('etag');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    key = registerOutput<String>('key');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    metadata = registerOutput<Map<String, String>?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    objectLockLegalHoldStatus = registerOutput<String?>('objectLockLegalHoldStatus');
    objectLockMode = registerOutput<String?>('objectLockMode');
    objectLockRetainUntilDate = registerOutput<String?>('objectLockRetainUntilDate');
    region = registerOutput<String>('region');
    serverSideEncryption = registerOutput<String>('serverSideEncryption');
    source = registerOutput<dynamic>('source');
    sourceHash = registerOutput<String?>('sourceHash');
    storageClass = registerOutput<String>('storageClass');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    versionId = registerOutput<String>('versionId');
    websiteRedirect = registerOutput<String?>('websiteRedirect');
  }

  /// Creates a typed reference to an existing [BucketObject] resource.
  BucketObject.reference(String urn)
    : super(
        'aws:s3/bucketObject:BucketObject',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    acl = registerOutput<String?>('acl');
    arn = registerOutput<String>('arn');
    bucket = registerOutput<String>('bucket');
    bucketKeyEnabled = registerOutput<bool>('bucketKeyEnabled');
    cacheControl = registerOutput<String?>('cacheControl');
    content = registerOutput<String?>('content');
    contentBase64 = registerOutput<String?>('contentBase64');
    contentDisposition = registerOutput<String?>('contentDisposition');
    contentEncoding = registerOutput<String?>('contentEncoding');
    contentLanguage = registerOutput<String?>('contentLanguage');
    contentType = registerOutput<String>('contentType');
    etag = registerOutput<String>('etag');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    key = registerOutput<String>('key');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    metadata = registerOutput<Map<String, String>?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    objectLockLegalHoldStatus = registerOutput<String?>('objectLockLegalHoldStatus');
    objectLockMode = registerOutput<String?>('objectLockMode');
    objectLockRetainUntilDate = registerOutput<String?>('objectLockRetainUntilDate');
    region = registerOutput<String>('region');
    serverSideEncryption = registerOutput<String>('serverSideEncryption');
    source = registerOutput<dynamic>('source');
    sourceHash = registerOutput<String?>('sourceHash');
    storageClass = registerOutput<String>('storageClass');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    versionId = registerOutput<String>('versionId');
    websiteRedirect = registerOutput<String?>('websiteRedirect');
  }
}
