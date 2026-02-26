import 'package:pulumi/pulumi.dart';
import 'bucket_object_args.dart';

/// Provides an S3 object resource.
///
/// ## Example Usage
///
/// ### Uploading a file to a bucket
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const object = new aws.s3.BucketObject("object", {
/// bucket: "your_bucket_name",
/// key: "new_object_key",
/// source: new pulumi.asset.FileAsset("path/to/file"),
/// etag: std.filemd5({
/// input: "path/to/file",
/// }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// object = aws.s3.BucketObject("object",
/// bucket="your_bucket_name",
/// key="new_object_key",
/// source=pulumi.FileAsset("path/to/file"),
/// etag=std.filemd5(input="path/to/file").result)
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
/// var @object = new Aws.S3.BucketObject("object", new()
/// {
/// Bucket = "your_bucket_name",
/// Key = "new_object_key",
/// Source = new FileAsset("path/to/file"),
/// Etag = Std.Filemd5.Invoke(new()
/// {
/// Input = "path/to/file",
/// }).Apply(invoke => invoke.Result),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFilemd5, err := std.Filemd5(ctx, &std.Filemd5Args{
/// Input: "path/to/file",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketObject(ctx, "object", &s3.BucketObjectArgs{
/// Bucket: pulumi.Any("your_bucket_name"),
/// Key:    pulumi.String("new_object_key"),
/// Source: pulumi.NewFileAsset("path/to/file"),
/// Etag:   pulumi.String(invokeFilemd5.Result),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var object = new BucketObject("object", BucketObjectArgs.builder()
/// .bucket("your_bucket_name")
/// .key("new_object_key")
/// .source(new FileAsset("path/to/file"))
/// .etag(StdFunctions.filemd5(Filemd5Args.builder()
/// .input("path/to/file")
/// .build()).result())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// object:
/// type: aws:s3:BucketObject
/// properties:
/// bucket: your_bucket_name
/// key: new_object_key
/// source:
/// fn::FileAsset: path/to/file
/// etag:
/// fn::invoke:
/// function: std:filemd5
/// arguments:
/// input: path/to/file
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Encrypting with KMS Key
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const examplekms = new aws.kms.Key("examplekms", {
/// description: "KMS key 1",
/// deletionWindowInDays: 7,
/// });
/// const examplebucket = new aws.s3.Bucket("examplebucket", {bucket: "examplebuckettftest"});
/// const example = new aws.s3.BucketAcl("example", {
/// bucket: examplebucket.id,
/// acl: "private",
/// });
/// const exampleBucketObject = new aws.s3.BucketObject("example", {
/// key: "someobject",
/// bucket: examplebucket.id,
/// source: new pulumi.asset.FileAsset("index.html"),
/// kmsKeyId: examplekms.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// examplekms = aws.kms.Key("examplekms",
/// description="KMS key 1",
/// deletion_window_in_days=7)
/// examplebucket = aws.s3.Bucket("examplebucket", bucket="examplebuckettftest")
/// example = aws.s3.BucketAcl("example",
/// bucket=examplebucket.id,
/// acl="private")
/// example_bucket_object = aws.s3.BucketObject("example",
/// key="someobject",
/// bucket=examplebucket.id,
/// source=pulumi.FileAsset("index.html"),
/// kms_key_id=examplekms.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var examplekms = new Aws.Kms.Key("examplekms", new()
/// {
/// Description = "KMS key 1",
/// DeletionWindowInDays = 7,
/// });
///
/// var examplebucket = new Aws.S3.Bucket("examplebucket", new()
/// {
/// BucketName = "examplebuckettftest",
/// });
///
/// var example = new Aws.S3.BucketAcl("example", new()
/// {
/// Bucket = examplebucket.Id,
/// Acl = "private",
/// });
///
/// var exampleBucketObject = new Aws.S3.BucketObject("example", new()
/// {
/// Key = "someobject",
/// Bucket = examplebucket.Id,
/// Source = new FileAsset("index.html"),
/// KmsKeyId = examplekms.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// examplekms, err := kms.NewKey(ctx, "examplekms", &kms.KeyArgs{
/// Description:          pulumi.String("KMS key 1"),
/// DeletionWindowInDays: pulumi.Int(7),
/// })
/// if err != nil {
/// return err
/// }
/// examplebucket, err := s3.NewBucket(ctx, "examplebucket", &s3.BucketArgs{
/// Bucket: pulumi.String("examplebuckettftest"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// Bucket: examplebucket.ID(),
/// Acl:    pulumi.String("private"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketObject(ctx, "example", &s3.BucketObjectArgs{
/// Key:      pulumi.String("someobject"),
/// Bucket:   examplebucket.ID(),
/// Source:   pulumi.NewFileAsset("index.html"),
/// KmsKeyId: examplekms.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var examplekms = new Key("examplekms", KeyArgs.builder()
/// .description("KMS key 1")
/// .deletionWindowInDays(7)
/// .build());
///
/// var examplebucket = new Bucket("examplebucket", BucketArgs.builder()
/// .bucket("examplebuckettftest")
/// .build());
///
/// var example = new BucketAcl("example", BucketAclArgs.builder()
/// .bucket(examplebucket.id())
/// .acl("private")
/// .build());
///
/// var exampleBucketObject = new BucketObject("exampleBucketObject", BucketObjectArgs.builder()
/// .key("someobject")
/// .bucket(examplebucket.id())
/// .source(new FileAsset("index.html"))
/// .kmsKeyId(examplekms.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// examplekms:
/// type: aws:kms:Key
/// properties:
/// description: KMS key 1
/// deletionWindowInDays: 7
/// examplebucket:
/// type: aws:s3:Bucket
/// properties:
/// bucket: examplebuckettftest
/// example:
/// type: aws:s3:BucketAcl
/// properties:
/// bucket: ${examplebucket.id}
/// acl: private
/// exampleBucketObject:
/// type: aws:s3:BucketObject
/// name: example
/// properties:
/// key: someobject
/// bucket: ${examplebucket.id}
/// source:
/// fn::FileAsset: index.html
/// kmsKeyId: ${examplekms.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Server Side Encryption with S3 Default Master Key
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const examplebucket = new aws.s3.Bucket("examplebucket", {bucket: "examplebuckettftest"});
/// const example = new aws.s3.BucketAcl("example", {
/// bucket: examplebucket.id,
/// acl: "private",
/// });
/// const exampleBucketObject = new aws.s3.BucketObject("example", {
/// key: "someobject",
/// bucket: examplebucket.id,
/// source: new pulumi.asset.FileAsset("index.html"),
/// serverSideEncryption: "aws:kms",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// examplebucket = aws.s3.Bucket("examplebucket", bucket="examplebuckettftest")
/// example = aws.s3.BucketAcl("example",
/// bucket=examplebucket.id,
/// acl="private")
/// example_bucket_object = aws.s3.BucketObject("example",
/// key="someobject",
/// bucket=examplebucket.id,
/// source=pulumi.FileAsset("index.html"),
/// server_side_encryption="aws:kms")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var examplebucket = new Aws.S3.Bucket("examplebucket", new()
/// {
/// BucketName = "examplebuckettftest",
/// });
///
/// var example = new Aws.S3.BucketAcl("example", new()
/// {
/// Bucket = examplebucket.Id,
/// Acl = "private",
/// });
///
/// var exampleBucketObject = new Aws.S3.BucketObject("example", new()
/// {
/// Key = "someobject",
/// Bucket = examplebucket.Id,
/// Source = new FileAsset("index.html"),
/// ServerSideEncryption = "aws:kms",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// examplebucket, err := s3.NewBucket(ctx, "examplebucket", &s3.BucketArgs{
/// Bucket: pulumi.String("examplebuckettftest"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// Bucket: examplebucket.ID(),
/// Acl:    pulumi.String("private"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketObject(ctx, "example", &s3.BucketObjectArgs{
/// Key:                  pulumi.String("someobject"),
/// Bucket:               examplebucket.ID(),
/// Source:               pulumi.NewFileAsset("index.html"),
/// ServerSideEncryption: pulumi.String("aws:kms"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var examplebucket = new Bucket("examplebucket", BucketArgs.builder()
/// .bucket("examplebuckettftest")
/// .build());
///
/// var example = new BucketAcl("example", BucketAclArgs.builder()
/// .bucket(examplebucket.id())
/// .acl("private")
/// .build());
///
/// var exampleBucketObject = new BucketObject("exampleBucketObject", BucketObjectArgs.builder()
/// .key("someobject")
/// .bucket(examplebucket.id())
/// .source(new FileAsset("index.html"))
/// .serverSideEncryption("aws:kms")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// examplebucket:
/// type: aws:s3:Bucket
/// properties:
/// bucket: examplebuckettftest
/// example:
/// type: aws:s3:BucketAcl
/// properties:
/// bucket: ${examplebucket.id}
/// acl: private
/// exampleBucketObject:
/// type: aws:s3:BucketObject
/// name: example
/// properties:
/// key: someobject
/// bucket: ${examplebucket.id}
/// source:
/// fn::FileAsset: index.html
/// serverSideEncryption: aws:kms
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Server Side Encryption with AWS-Managed Key
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const examplebucket = new aws.s3.Bucket("examplebucket", {bucket: "examplebuckettftest"});
/// const example = new aws.s3.BucketAcl("example", {
/// bucket: examplebucket.id,
/// acl: "private",
/// });
/// const exampleBucketObject = new aws.s3.BucketObject("example", {
/// key: "someobject",
/// bucket: examplebucket.id,
/// source: new pulumi.asset.FileAsset("index.html"),
/// serverSideEncryption: "AES256",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// examplebucket = aws.s3.Bucket("examplebucket", bucket="examplebuckettftest")
/// example = aws.s3.BucketAcl("example",
/// bucket=examplebucket.id,
/// acl="private")
/// example_bucket_object = aws.s3.BucketObject("example",
/// key="someobject",
/// bucket=examplebucket.id,
/// source=pulumi.FileAsset("index.html"),
/// server_side_encryption="AES256")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var examplebucket = new Aws.S3.Bucket("examplebucket", new()
/// {
/// BucketName = "examplebuckettftest",
/// });
///
/// var example = new Aws.S3.BucketAcl("example", new()
/// {
/// Bucket = examplebucket.Id,
/// Acl = "private",
/// });
///
/// var exampleBucketObject = new Aws.S3.BucketObject("example", new()
/// {
/// Key = "someobject",
/// Bucket = examplebucket.Id,
/// Source = new FileAsset("index.html"),
/// ServerSideEncryption = "AES256",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// examplebucket, err := s3.NewBucket(ctx, "examplebucket", &s3.BucketArgs{
/// Bucket: pulumi.String("examplebuckettftest"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// Bucket: examplebucket.ID(),
/// Acl:    pulumi.String("private"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketObject(ctx, "example", &s3.BucketObjectArgs{
/// Key:                  pulumi.String("someobject"),
/// Bucket:               examplebucket.ID(),
/// Source:               pulumi.NewFileAsset("index.html"),
/// ServerSideEncryption: pulumi.String("AES256"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var examplebucket = new Bucket("examplebucket", BucketArgs.builder()
/// .bucket("examplebuckettftest")
/// .build());
///
/// var example = new BucketAcl("example", BucketAclArgs.builder()
/// .bucket(examplebucket.id())
/// .acl("private")
/// .build());
///
/// var exampleBucketObject = new BucketObject("exampleBucketObject", BucketObjectArgs.builder()
/// .key("someobject")
/// .bucket(examplebucket.id())
/// .source(new FileAsset("index.html"))
/// .serverSideEncryption("AES256")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// examplebucket:
/// type: aws:s3:Bucket
/// properties:
/// bucket: examplebuckettftest
/// example:
/// type: aws:s3:BucketAcl
/// properties:
/// bucket: ${examplebucket.id}
/// acl: private
/// exampleBucketObject:
/// type: aws:s3:BucketObject
/// name: example
/// properties:
/// key: someobject
/// bucket: ${examplebucket.id}
/// source:
/// fn::FileAsset: index.html
/// serverSideEncryption: AES256
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### S3 Object Lock
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const examplebucket = new aws.s3.Bucket("examplebucket", {
/// bucket: "examplebuckettftest",
/// objectLockEnabled: true,
/// });
/// const example = new aws.s3.BucketAcl("example", {
/// bucket: examplebucket.id,
/// acl: "private",
/// });
/// const exampleBucketVersioning = new aws.s3.BucketVersioning("example", {
/// bucket: examplebucket.id,
/// versioningConfiguration: {
/// status: "Enabled",
/// },
/// });
/// const exampleBucketObject = new aws.s3.BucketObject("example", {
/// key: "someobject",
/// bucket: examplebucket.id,
/// source: new pulumi.asset.FileAsset("important.txt"),
/// objectLockLegalHoldStatus: "ON",
/// objectLockMode: "GOVERNANCE",
/// objectLockRetainUntilDate: "2021-12-31T23:59:60Z",
/// forceDestroy: true,
/// }, {
/// dependsOn: [exampleBucketVersioning],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// examplebucket = aws.s3.Bucket("examplebucket",
/// bucket="examplebuckettftest",
/// object_lock_enabled=True)
/// example = aws.s3.BucketAcl("example",
/// bucket=examplebucket.id,
/// acl="private")
/// example_bucket_versioning = aws.s3.BucketVersioning("example",
/// bucket=examplebucket.id,
/// versioning_configuration={
/// "status": "Enabled",
/// })
/// example_bucket_object = aws.s3.BucketObject("example",
/// key="someobject",
/// bucket=examplebucket.id,
/// source=pulumi.FileAsset("important.txt"),
/// object_lock_legal_hold_status="ON",
/// object_lock_mode="GOVERNANCE",
/// object_lock_retain_until_date="2021-12-31T23:59:60Z",
/// force_destroy=True,
/// opts = pulumi.ResourceOptions(depends_on=[example_bucket_versioning]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var examplebucket = new Aws.S3.Bucket("examplebucket", new()
/// {
/// BucketName = "examplebuckettftest",
/// ObjectLockEnabled = true,
/// });
///
/// var example = new Aws.S3.BucketAcl("example", new()
/// {
/// Bucket = examplebucket.Id,
/// Acl = "private",
/// });
///
/// var exampleBucketVersioning = new Aws.S3.BucketVersioning("example", new()
/// {
/// Bucket = examplebucket.Id,
/// VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
/// {
/// Status = "Enabled",
/// },
/// });
///
/// var exampleBucketObject = new Aws.S3.BucketObject("example", new()
/// {
/// Key = "someobject",
/// Bucket = examplebucket.Id,
/// Source = new FileAsset("important.txt"),
/// ObjectLockLegalHoldStatus = "ON",
/// ObjectLockMode = "GOVERNANCE",
/// ObjectLockRetainUntilDate = "2021-12-31T23:59:60Z",
/// ForceDestroy = true,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleBucketVersioning,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// examplebucket, err := s3.NewBucket(ctx, "examplebucket", &s3.BucketArgs{
/// Bucket:            pulumi.String("examplebuckettftest"),
/// ObjectLockEnabled: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// Bucket: examplebucket.ID(),
/// Acl:    pulumi.String("private"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleBucketVersioning, err := s3.NewBucketVersioning(ctx, "example", &s3.BucketVersioningArgs{
/// Bucket: examplebucket.ID(),
/// VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// Status: pulumi.String("Enabled"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketObject(ctx, "example", &s3.BucketObjectArgs{
/// Key:                       pulumi.String("someobject"),
/// Bucket:                    examplebucket.ID(),
/// Source:                    pulumi.NewFileAsset("important.txt"),
/// ObjectLockLegalHoldStatus: pulumi.String("ON"),
/// ObjectLockMode:            pulumi.String("GOVERNANCE"),
/// ObjectLockRetainUntilDate: pulumi.String("2021-12-31T23:59:60Z"),
/// ForceDestroy:              pulumi.Bool(true),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleBucketVersioning,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var examplebucket = new Bucket("examplebucket", BucketArgs.builder()
/// .bucket("examplebuckettftest")
/// .objectLockEnabled(true)
/// .build());
///
/// var example = new BucketAcl("example", BucketAclArgs.builder()
/// .bucket(examplebucket.id())
/// .acl("private")
/// .build());
///
/// var exampleBucketVersioning = new BucketVersioning("exampleBucketVersioning", BucketVersioningArgs.builder()
/// .bucket(examplebucket.id())
/// .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
/// .status("Enabled")
/// .build())
/// .build());
///
/// var exampleBucketObject = new BucketObject("exampleBucketObject", BucketObjectArgs.builder()
/// .key("someobject")
/// .bucket(examplebucket.id())
/// .source(new FileAsset("important.txt"))
/// .objectLockLegalHoldStatus("ON")
/// .objectLockMode("GOVERNANCE")
/// .objectLockRetainUntilDate("2021-12-31T23:59:60Z")
/// .forceDestroy(true)
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleBucketVersioning)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// examplebucket:
/// type: aws:s3:Bucket
/// properties:
/// bucket: examplebuckettftest
/// objectLockEnabled: true
/// example:
/// type: aws:s3:BucketAcl
/// properties:
/// bucket: ${examplebucket.id}
/// acl: private
/// exampleBucketVersioning:
/// type: aws:s3:BucketVersioning
/// name: example
/// properties:
/// bucket: ${examplebucket.id}
/// versioningConfiguration:
/// status: Enabled
/// exampleBucketObject:
/// type: aws:s3:BucketObject
/// name: example
/// properties:
/// key: someobject
/// bucket: ${examplebucket.id}
/// source:
/// fn::FileAsset: important.txt
/// objectLockLegalHoldStatus: ON
/// objectLockMode: GOVERNANCE
/// objectLockRetainUntilDate: 2021-12-31T23:59:60Z
/// forceDestroy: true
/// options:
/// dependsOn:
/// - ${exampleBucketVersioning}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> (String) S3 bucket name.
/// * <span pulumi-lang-nodejs="`key`" pulumi-lang-dotnet="`Key`" pulumi-lang-go="`key`" pulumi-lang-python="`key`" pulumi-lang-yaml="`key`" pulumi-lang-java="`key`">`key`</span> (String) Object key.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Import using S3 URL syntax:
///
///
/// **Using `pulumi import` to import** objects using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> or S3 URL. For example:
///
/// Import using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>, which is the bucket name and the key together:
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
class BucketObject extends CustomResource {
  /// [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are <span pulumi-lang-nodejs="`private`" pulumi-lang-dotnet="`Private`" pulumi-lang-go="`private`" pulumi-lang-python="`private`" pulumi-lang-yaml="`private`" pulumi-lang-java="`private`">`private`</span>, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, `bucket-owner-read`, and `bucket-owner-full-control`. Defaults to <span pulumi-lang-nodejs="`private`" pulumi-lang-dotnet="`Private`" pulumi-lang-go="`private`" pulumi-lang-python="`private`" pulumi-lang-yaml="`private`" pulumi-lang-java="`private`">`private`</span>.
  late final Output<String?> acl;

  /// ARN of the object.
  late final Output<String> arn;

  /// Name of the bucket to put the file in. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified.
  late final Output<String> bucket;

  /// Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  late final Output<bool> bucketKeyEnabled;

  /// Caching behavior along the request/reply chain Read [w3c<span pulumi-lang-nodejs=" cacheControl]" pulumi-lang-dotnet=" CacheControl]" pulumi-lang-go=" cacheControl]" pulumi-lang-python=" cache_control]" pulumi-lang-yaml=" cacheControl]" pulumi-lang-java=" cacheControl]"> cache_control]</span>(http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  late final Output<String?> cacheControl;

  /// Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text.
  late final Output<String?> content;

  /// Base64-encoded data that will be decoded and uploaded as raw bytes for the object content. This allows safely uploading non-UTF8 binary data, but is recommended only for small content such as the result of the <span pulumi-lang-nodejs="`gzipbase64`" pulumi-lang-dotnet="`Gzipbase64`" pulumi-lang-go="`gzipbase64`" pulumi-lang-python="`gzipbase64`" pulumi-lang-yaml="`gzipbase64`" pulumi-lang-java="`gzipbase64`">`gzipbase64`</span> function with small text strings. For larger objects, use <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span> to stream the content from a disk file.
  late final Output<String?> contentBase64;

  /// Presentational information for the object. Read [w3c<span pulumi-lang-nodejs=" contentDisposition]" pulumi-lang-dotnet=" ContentDisposition]" pulumi-lang-go=" contentDisposition]" pulumi-lang-python=" content_disposition]" pulumi-lang-yaml=" contentDisposition]" pulumi-lang-java=" contentDisposition]"> content_disposition]</span>(http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1) for further information.
  late final Output<String?> contentDisposition;

  /// Content encodings that have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [w3c content encoding](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11) for further information.
  late final Output<String?> contentEncoding;

  /// Language the content is in e.g., en-US or en-GB.
  late final Output<String?> contentLanguage;

  /// Standard MIME type describing the format of the object data, e.g., application/octet-stream. All Valid MIME Types are valid for this input.
  late final Output<String> contentType;

  /// Triggers updates when the value changes. This attribute is not compatible with KMS encryption, <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span> or <span pulumi-lang-nodejs="`serverSideEncryption " pulumi-lang-dotnet="`ServerSideEncryption " pulumi-lang-go="`serverSideEncryption " pulumi-lang-python="`server_side_encryption " pulumi-lang-yaml="`serverSideEncryption " pulumi-lang-java="`serverSideEncryption ">`server_side_encryption </span>= "aws:kms"` (see <span pulumi-lang-nodejs="`sourceHash`" pulumi-lang-dotnet="`SourceHash`" pulumi-lang-go="`sourceHash`" pulumi-lang-python="`source_hash`" pulumi-lang-yaml="`sourceHash`" pulumi-lang-java="`sourceHash`">`source_hash`</span> instead).
  late final Output<String> etag;

  /// Whether to allow the object to be deleted by removing any legal hold on any object version. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. This value should be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> only if the bucket has S3 object lock enabled.
  late final Output<bool?> forceDestroy;

  /// Name of the object once it is in the bucket.
  ///
  /// The following arguments are optional:
  late final Output<String> key;

  /// ARN of the KMS Key to use for object encryption. If the S3 Bucket has server-side encryption enabled, that value will automatically be used. If referencing the <span pulumi-lang-nodejs="`aws.kms.Key`" pulumi-lang-dotnet="`aws.kms.Key`" pulumi-lang-go="`kms.Key`" pulumi-lang-python="`kms.Key`" pulumi-lang-yaml="`aws.kms.Key`" pulumi-lang-java="`aws.kms.Key`">`aws.kms.Key`</span> resource, use the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> attribute. If referencing the <span pulumi-lang-nodejs="`aws.kms.Alias`" pulumi-lang-dotnet="`aws.kms.Alias`" pulumi-lang-go="`kms.Alias`" pulumi-lang-python="`kms.Alias`" pulumi-lang-yaml="`aws.kms.Alias`" pulumi-lang-java="`aws.kms.Alias`">`aws.kms.Alias`</span> data source or resource, use the <span pulumi-lang-nodejs="`targetKeyArn`" pulumi-lang-dotnet="`TargetKeyArn`" pulumi-lang-go="`targetKeyArn`" pulumi-lang-python="`target_key_arn`" pulumi-lang-yaml="`targetKeyArn`" pulumi-lang-java="`targetKeyArn`">`target_key_arn`</span> attribute. The provider will only perform drift detection if a configuration value is provided.
  late final Output<String> kmsKeyId;

  /// Map of keys/values to provision metadata (will be automatically prefixed by `x-amz-meta-`, note that only lowercase label are currently supported by the AWS Go API).
  late final Output<Map<String, String>?> metadata;

  /// [Legal hold](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-legal-holds) status that you want to apply to the specified object. Valid values are `ON` and `OFF`.
  late final Output<String?> objectLockLegalHoldStatus;

  /// Object lock [retention mode](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-modes) that you want to apply to this object. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  late final Output<String?> objectLockMode;

  /// Date and time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8), when this object's object lock will [expire](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-periods).
  late final Output<String?> objectLockRetainUntilDate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Server-side encryption of the object in S3. Valid values are "`AES256`" and "`aws:kms`".
  late final Output<String> serverSideEncryption;

  /// Path to a file that will be read and uploaded as raw bytes for the object content.
  late final Output<dynamic> source;

  /// Triggers updates like <span pulumi-lang-nodejs="`etag`" pulumi-lang-dotnet="`Etag`" pulumi-lang-go="`etag`" pulumi-lang-python="`etag`" pulumi-lang-yaml="`etag`" pulumi-lang-java="`etag`">`etag`</span> but useful to address <span pulumi-lang-nodejs="`etag`" pulumi-lang-dotnet="`Etag`" pulumi-lang-go="`etag`" pulumi-lang-python="`etag`" pulumi-lang-yaml="`etag`" pulumi-lang-java="`etag`">`etag`</span> encryption limitations.
  late final Output<String?> sourceHash;

  /// [Storage Class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html#AmazonS3-PutObject-request-header-StorageClass) for the object. Defaults to "`STANDARD`".
  late final Output<String> storageClass;

  /// Map of tags to assign to the object. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Unique version ID value for the object, if bucket versioning is enabled.
  late final Output<String> versionId;

  /// Target URL for [website redirect](http://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html).
  ///
  /// If no content is provided through <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span>, <span pulumi-lang-nodejs="`content`" pulumi-lang-dotnet="`Content`" pulumi-lang-go="`content`" pulumi-lang-python="`content`" pulumi-lang-yaml="`content`" pulumi-lang-java="`content`">`content`</span> or <span pulumi-lang-nodejs="`contentBase64`" pulumi-lang-dotnet="`ContentBase64`" pulumi-lang-go="`contentBase64`" pulumi-lang-python="`content_base64`" pulumi-lang-yaml="`contentBase64`" pulumi-lang-java="`contentBase64`">`content_base64`</span>, then the object will be empty.
  ///
  /// > **Note:** If you specify <span pulumi-lang-nodejs="`contentEncoding`" pulumi-lang-dotnet="`ContentEncoding`" pulumi-lang-go="`contentEncoding`" pulumi-lang-python="`content_encoding`" pulumi-lang-yaml="`contentEncoding`" pulumi-lang-java="`contentEncoding`">`content_encoding`</span> you are responsible for encoding the body appropriately. <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span>, <span pulumi-lang-nodejs="`content`" pulumi-lang-dotnet="`Content`" pulumi-lang-go="`content`" pulumi-lang-python="`content`" pulumi-lang-yaml="`content`" pulumi-lang-java="`content`">`content`</span>, and <span pulumi-lang-nodejs="`contentBase64`" pulumi-lang-dotnet="`ContentBase64`" pulumi-lang-go="`contentBase64`" pulumi-lang-python="`content_base64`" pulumi-lang-yaml="`contentBase64`" pulumi-lang-java="`contentBase64`">`content_base64`</span> all expect already encoded/compressed bytes.
  late final Output<String?> websiteRedirect;

  BucketObject(
    String name, {
    BucketObjectArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketObject:BucketObject',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acl = registerOutput<String?>('acl');
    this.arn = registerOutput<String>('arn');
    this.bucket = registerOutput<String>('bucket');
    this.bucketKeyEnabled = registerOutput<bool>('bucketKeyEnabled');
    this.cacheControl = registerOutput<String?>('cacheControl');
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
