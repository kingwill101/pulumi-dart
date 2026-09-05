import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_acl_v2_access_control_policy.dart';
import 'bucket_acl_v2_args.dart';
import 'bucket_acl_v2_state.dart';

/// Provides an S3 bucket ACL resource.
///
/// &gt; **Note:** destroy does not delete the S3 Bucket ACL but does remove the resource from state.
///
/// &gt; This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### With `private` ACL
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "my-tf-example-bucket"});
/// const exampleBucketOwnershipControls = new aws.s3.BucketOwnershipControls("example", {
///     rule: {
///         objectOwnership: "BucketOwnerPreferred",
///     },
///     bucket: example.id,
/// });
/// const exampleBucketAcl = new aws.s3.BucketAcl("example", {
///     bucket: example.id,
///     acl: "private",
/// }, {
///     dependsOn: [exampleBucketOwnershipControls],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="my-tf-example-bucket")
/// example_bucket_ownership_controls = aws.s3.BucketOwnershipControls("example",
///     rule={
///         "object_ownership": "BucketOwnerPreferred",
///     },
///     bucket=example.id)
/// example_bucket_acl = aws.s3.BucketAcl("example",
///     bucket=example.id,
///     acl="private",
///     opts = pulumi.ResourceOptions(depends_on=[example_bucket_ownership_controls]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "my-tf-example-bucket",
///     });
///
///     var exampleBucketOwnershipControls = new Aws.S3.BucketOwnershipControls("example", new()
///     {
///         Rule = new Aws.S3.Inputs.BucketOwnershipControlsRuleArgs
///         {
///             ObjectOwnership = "BucketOwnerPreferred",
///         },
///         Bucket = example.Id,
///     });
///
///     var exampleBucketAcl = new Aws.S3.BucketAcl("example", new()
///     {
///         Bucket = example.Id,
///         Acl = "private",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleBucketOwnershipControls,
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
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("my-tf-example-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucketOwnershipControls, err := s3.NewBucketOwnershipControls(ctx, "example", &s3.BucketOwnershipControlsArgs{
/// 			Rule: &s3.BucketOwnershipControlsRuleArgs{
/// 				ObjectOwnership: pulumi.String("BucketOwnerPreferred"),
/// 			},
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			Acl:    pulumi.String("private"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleBucketOwnershipControls,
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
/// resource "aws_s3_bucket" "example" {
///   bucket = "my-tf-example-bucket"
/// }
/// resource "aws_s3_bucketownershipcontrols" "example" {
///   rule = {
///     object_ownership = "BucketOwnerPreferred"
///   }
///   bucket = aws_s3_bucket.example.id
/// }
/// resource "aws_s3_bucketacl" "example" {
///   depends_on = [aws_s3_bucketownershipcontrols.example]
///   bucket     = aws_s3_bucket.example.id
///   acl        = "private"
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
/// import com.pulumi.aws.s3.BucketOwnershipControls;
/// import com.pulumi.aws.s3.BucketOwnershipControlsArgs;
/// import com.pulumi.aws.s3.inputs.BucketOwnershipControlsRuleArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("my-tf-example-bucket")
///             .build());
///
///         var exampleBucketOwnershipControls = new BucketOwnershipControls("exampleBucketOwnershipControls", BucketOwnershipControlsArgs.builder()
///             .rule(BucketOwnershipControlsRuleArgs.builder()
///                 .objectOwnership("BucketOwnerPreferred")
///                 .build())
///             .bucket(example.id())
///             .build());
///
///         var exampleBucketAcl = new BucketAcl("exampleBucketAcl", BucketAclArgs.builder()
///             .bucket(example.id())
///             .acl("private")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleBucketOwnershipControls)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: my-tf-example-bucket
///   exampleBucketOwnershipControls:
///     type: aws:s3:BucketOwnershipControls
///     name: example
///     properties:
///       rule:
///         objectOwnership: BucketOwnerPreferred
///       bucket: ${example.id}
///   exampleBucketAcl:
///     type: aws:s3:BucketAcl
///     name: example
///     properties:
///       bucket: ${example.id}
///       acl: private
///     options:
///       dependsOn:
///         - ${exampleBucketOwnershipControls}
/// ```
///
///
/// ### With `public-read` ACL
///
/// &gt; This example explicitly disables the default S3 bucket security settings. This
/// should be done with caution, as all bucket objects become publicly exposed.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "my-tf-example-bucket"});
/// const exampleBucketOwnershipControls = new aws.s3.BucketOwnershipControls("example", {
///     rule: {
///         objectOwnership: "BucketOwnerPreferred",
///     },
///     bucket: example.id,
/// });
/// const exampleBucketPublicAccessBlock = new aws.s3.BucketPublicAccessBlock("example", {
///     bucket: example.id,
///     blockPublicAcls: false,
///     blockPublicPolicy: false,
///     ignorePublicAcls: false,
///     restrictPublicBuckets: false,
/// });
/// const exampleBucketAcl = new aws.s3.BucketAcl("example", {
///     bucket: example.id,
///     acl: "public-read",
/// }, {
///     dependsOn: [
///         exampleBucketOwnershipControls,
///         exampleBucketPublicAccessBlock,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="my-tf-example-bucket")
/// example_bucket_ownership_controls = aws.s3.BucketOwnershipControls("example",
///     rule={
///         "object_ownership": "BucketOwnerPreferred",
///     },
///     bucket=example.id)
/// example_bucket_public_access_block = aws.s3.BucketPublicAccessBlock("example",
///     bucket=example.id,
///     block_public_acls=False,
///     block_public_policy=False,
///     ignore_public_acls=False,
///     restrict_public_buckets=False)
/// example_bucket_acl = aws.s3.BucketAcl("example",
///     bucket=example.id,
///     acl="public-read",
///     opts = pulumi.ResourceOptions(depends_on=[
///             example_bucket_ownership_controls,
///             example_bucket_public_access_block,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "my-tf-example-bucket",
///     });
///
///     var exampleBucketOwnershipControls = new Aws.S3.BucketOwnershipControls("example", new()
///     {
///         Rule = new Aws.S3.Inputs.BucketOwnershipControlsRuleArgs
///         {
///             ObjectOwnership = "BucketOwnerPreferred",
///         },
///         Bucket = example.Id,
///     });
///
///     var exampleBucketPublicAccessBlock = new Aws.S3.BucketPublicAccessBlock("example", new()
///     {
///         Bucket = example.Id,
///         BlockPublicAcls = false,
///         BlockPublicPolicy = false,
///         IgnorePublicAcls = false,
///         RestrictPublicBuckets = false,
///     });
///
///     var exampleBucketAcl = new Aws.S3.BucketAcl("example", new()
///     {
///         Bucket = example.Id,
///         Acl = "public-read",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleBucketOwnershipControls,
///             exampleBucketPublicAccessBlock,
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
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("my-tf-example-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucketOwnershipControls, err := s3.NewBucketOwnershipControls(ctx, "example", &s3.BucketOwnershipControlsArgs{
/// 			Rule: &s3.BucketOwnershipControlsRuleArgs{
/// 				ObjectOwnership: pulumi.String("BucketOwnerPreferred"),
/// 			},
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucketPublicAccessBlock, err := s3.NewBucketPublicAccessBlock(ctx, "example", &s3.BucketPublicAccessBlockArgs{
/// 			Bucket:                example.ID().ToIDOutput().ToStringOutput(),
/// 			BlockPublicAcls:       pulumi.Bool(false),
/// 			BlockPublicPolicy:     pulumi.Bool(false),
/// 			IgnorePublicAcls:      pulumi.Bool(false),
/// 			RestrictPublicBuckets: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			Acl:    pulumi.String("public-read"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleBucketOwnershipControls,
/// 			exampleBucketPublicAccessBlock,
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
/// resource "aws_s3_bucket" "example" {
///   bucket = "my-tf-example-bucket"
/// }
/// resource "aws_s3_bucketownershipcontrols" "example" {
///   rule = {
///     object_ownership = "BucketOwnerPreferred"
///   }
///   bucket = aws_s3_bucket.example.id
/// }
/// resource "aws_s3_bucketpublicaccessblock" "example" {
///   bucket                  = aws_s3_bucket.example.id
///   block_public_acls       = false
///   block_public_policy     = false
///   ignore_public_acls      = false
///   restrict_public_buckets = false
/// }
/// resource "aws_s3_bucketacl" "example" {
///   depends_on = [aws_s3_bucketownershipcontrols.example, aws_s3_bucketpublicaccessblock.example]
///   bucket     = aws_s3_bucket.example.id
///   acl        = "public-read"
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
/// import com.pulumi.aws.s3.BucketOwnershipControls;
/// import com.pulumi.aws.s3.BucketOwnershipControlsArgs;
/// import com.pulumi.aws.s3.inputs.BucketOwnershipControlsRuleArgs;
/// import com.pulumi.aws.s3.BucketPublicAccessBlock;
/// import com.pulumi.aws.s3.BucketPublicAccessBlockArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("my-tf-example-bucket")
///             .build());
///
///         var exampleBucketOwnershipControls = new BucketOwnershipControls("exampleBucketOwnershipControls", BucketOwnershipControlsArgs.builder()
///             .rule(BucketOwnershipControlsRuleArgs.builder()
///                 .objectOwnership("BucketOwnerPreferred")
///                 .build())
///             .bucket(example.id())
///             .build());
///
///         var exampleBucketPublicAccessBlock = new BucketPublicAccessBlock("exampleBucketPublicAccessBlock", BucketPublicAccessBlockArgs.builder()
///             .bucket(example.id())
///             .blockPublicAcls(false)
///             .blockPublicPolicy(false)
///             .ignorePublicAcls(false)
///             .restrictPublicBuckets(false)
///             .build());
///
///         var exampleBucketAcl = new BucketAcl("exampleBucketAcl", BucketAclArgs.builder()
///             .bucket(example.id())
///             .acl("public-read")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     exampleBucketOwnershipControls,
///                     exampleBucketPublicAccessBlock)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: my-tf-example-bucket
///   exampleBucketOwnershipControls:
///     type: aws:s3:BucketOwnershipControls
///     name: example
///     properties:
///       rule:
///         objectOwnership: BucketOwnerPreferred
///       bucket: ${example.id}
///   exampleBucketPublicAccessBlock:
///     type: aws:s3:BucketPublicAccessBlock
///     name: example
///     properties:
///       bucket: ${example.id}
///       blockPublicAcls: false
///       blockPublicPolicy: false
///       ignorePublicAcls: false
///       restrictPublicBuckets: false
///   exampleBucketAcl:
///     type: aws:s3:BucketAcl
///     name: example
///     properties:
///       bucket: ${example.id}
///       acl: public-read
///     options:
///       dependsOn:
///         - ${exampleBucketOwnershipControls}
///         - ${exampleBucketPublicAccessBlock}
/// ```
///
///
/// ### With Grants
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.s3.getCanonicalUserId({});
/// const example = new aws.s3.Bucket("example", {bucket: "my-tf-example-bucket"});
/// const exampleBucketOwnershipControls = new aws.s3.BucketOwnershipControls("example", {
///     rule: {
///         objectOwnership: "BucketOwnerPreferred",
///     },
///     bucket: example.id,
/// });
/// const exampleBucketAcl = new aws.s3.BucketAcl("example", {
///     accessControlPolicy: {
///         owner: {
///             id: current.then(current => current.id),
///         },
///         grants: [
///             {
///                 grantee: {
///                     id: current.then(current => current.id),
///                     type: "CanonicalUser",
///                 },
///                 permission: "READ",
///             },
///             {
///                 grantee: {
///                     type: "Group",
///                     uri: "http://acs.amazonaws.com/groups/s3/LogDelivery",
///                 },
///                 permission: "READ_ACP",
///             },
///         ],
///     },
///     bucket: example.id,
/// }, {
///     dependsOn: [exampleBucketOwnershipControls],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.s3.get_canonical_user_id()
/// example = aws.s3.Bucket("example", bucket="my-tf-example-bucket")
/// example_bucket_ownership_controls = aws.s3.BucketOwnershipControls("example",
///     rule={
///         "object_ownership": "BucketOwnerPreferred",
///     },
///     bucket=example.id)
/// example_bucket_acl = aws.s3.BucketAcl("example",
///     access_control_policy={
///         "owner": {
///             "id": current.id,
///         },
///         "grants": [
///             {
///                 "grantee": {
///                     "id": current.id,
///                     "type": "CanonicalUser",
///                 },
///                 "permission": "READ",
///             },
///             {
///                 "grantee": {
///                     "type": "Group",
///                     "uri": "http://acs.amazonaws.com/groups/s3/LogDelivery",
///                 },
///                 "permission": "READ_ACP",
///             },
///         ],
///     },
///     bucket=example.id,
///     opts = pulumi.ResourceOptions(depends_on=[example_bucket_ownership_controls]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.S3.GetCanonicalUserId.Invoke();
///
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "my-tf-example-bucket",
///     });
///
///     var exampleBucketOwnershipControls = new Aws.S3.BucketOwnershipControls("example", new()
///     {
///         Rule = new Aws.S3.Inputs.BucketOwnershipControlsRuleArgs
///         {
///             ObjectOwnership = "BucketOwnerPreferred",
///         },
///         Bucket = example.Id,
///     });
///
///     var exampleBucketAcl = new Aws.S3.BucketAcl("example", new()
///     {
///         AccessControlPolicy = new Aws.S3.Inputs.BucketAclAccessControlPolicyArgs
///         {
///             Owner = new Aws.S3.Inputs.BucketAclAccessControlPolicyOwnerArgs
///             {
///                 Id = current.Apply(getCanonicalUserIdResult => getCanonicalUserIdResult.Id),
///             },
///             Grants = new[]
///             {
///                 new Aws.S3.Inputs.BucketAclAccessControlPolicyGrantArgs
///                 {
///                     Grantee = new Aws.S3.Inputs.BucketAclAccessControlPolicyGrantGranteeArgs
///                     {
///                         Id = current.Apply(getCanonicalUserIdResult => getCanonicalUserIdResult.Id),
///                         Type = "CanonicalUser",
///                     },
///                     Permission = "READ",
///                 },
///                 new Aws.S3.Inputs.BucketAclAccessControlPolicyGrantArgs
///                 {
///                     Grantee = new Aws.S3.Inputs.BucketAclAccessControlPolicyGrantGranteeArgs
///                     {
///                         Type = "Group",
///                         Uri = "http://acs.amazonaws.com/groups/s3/LogDelivery",
///                     },
///                     Permission = "READ_ACP",
///                 },
///             },
///         },
///         Bucket = example.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleBucketOwnershipControls,
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
/// 		current, err := s3.GetCanonicalUserId(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("my-tf-example-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucketOwnershipControls, err := s3.NewBucketOwnershipControls(ctx, "example", &s3.BucketOwnershipControlsArgs{
/// 			Rule: &s3.BucketOwnershipControlsRuleArgs{
/// 				ObjectOwnership: pulumi.String("BucketOwnerPreferred"),
/// 			},
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// 			AccessControlPolicy: &s3.BucketAclAccessControlPolicyArgs{
/// 				Owner: &s3.BucketAclAccessControlPolicyOwnerArgs{
/// 					Id: pulumi.String(current.Id),
/// 				},
/// 				Grants: s3.BucketAclAccessControlPolicyGrantArray{
/// 					&s3.BucketAclAccessControlPolicyGrantArgs{
/// 						Grantee: &s3.BucketAclAccessControlPolicyGrantGranteeArgs{
/// 							Id:   pulumi.String(current.Id),
/// 							Type: pulumi.String("CanonicalUser"),
/// 						},
/// 						Permission: pulumi.String("READ"),
/// 					},
/// 					&s3.BucketAclAccessControlPolicyGrantArgs{
/// 						Grantee: &s3.BucketAclAccessControlPolicyGrantGranteeArgs{
/// 							Type: pulumi.String("Group"),
/// 							Uri:  pulumi.String("http://acs.amazonaws.com/groups/s3/LogDelivery"),
/// 						},
/// 						Permission: pulumi.String("READ_ACP"),
/// 					},
/// 				},
/// 			},
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleBucketOwnershipControls,
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
/// data "aws_s3_getcanonicaluserid" "current" {
/// }
///
/// resource "aws_s3_bucket" "example" {
///   bucket = "my-tf-example-bucket"
/// }
/// resource "aws_s3_bucketownershipcontrols" "example" {
///   rule = {
///     object_ownership = "BucketOwnerPreferred"
///   }
///   bucket = aws_s3_bucket.example.id
/// }
/// resource "aws_s3_bucketacl" "example" {
///   depends_on = [aws_s3_bucketownershipcontrols.example]
///   access_control_policy = {
///     owner = {
///       id = data.aws_s3_getcanonicaluserid.current.id
///     }
///     grants = [{
///       "grantee" = {
///         "id"   = data.aws_s3_getcanonicaluserid.current.id
///         "type" = "CanonicalUser"
///       }
///       "permission" = "READ"
///       }, {
///       "grantee" = {
///         "type" = "Group"
///         "uri"  = "http://acs.amazonaws.com/groups/s3/LogDelivery"
///       }
///       "permission" = "READ_ACP"
///     }]
///   }
///   bucket = aws_s3_bucket.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketOwnershipControls;
/// import com.pulumi.aws.s3.BucketOwnershipControlsArgs;
/// import com.pulumi.aws.s3.inputs.BucketOwnershipControlsRuleArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.s3.inputs.BucketAclAccessControlPolicyArgs;
/// import com.pulumi.aws.s3.inputs.BucketAclAccessControlPolicyOwnerArgs;
/// import com.pulumi.aws.s3.inputs.BucketAclAccessControlPolicyGrantArgs;
/// import com.pulumi.aws.s3.inputs.BucketAclAccessControlPolicyGrantGranteeArgs;
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
///         final var current = S3Functions.getCanonicalUserId(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("my-tf-example-bucket")
///             .build());
///
///         var exampleBucketOwnershipControls = new BucketOwnershipControls("exampleBucketOwnershipControls", BucketOwnershipControlsArgs.builder()
///             .rule(BucketOwnershipControlsRuleArgs.builder()
///                 .objectOwnership("BucketOwnerPreferred")
///                 .build())
///             .bucket(example.id())
///             .build());
///
///         var exampleBucketAcl = new BucketAcl("exampleBucketAcl", BucketAclArgs.builder()
///             .accessControlPolicy(BucketAclAccessControlPolicyArgs.builder()
///                 .owner(BucketAclAccessControlPolicyOwnerArgs.builder()
///                     .id(current.id())
///                     .build())
///                 .grants(
///                     BucketAclAccessControlPolicyGrantArgs.builder()
///                         .grantee(BucketAclAccessControlPolicyGrantGranteeArgs.builder()
///                             .id(current.id())
///                             .type("CanonicalUser")
///                             .build())
///                         .permission("READ")
///                         .build(),
///                     BucketAclAccessControlPolicyGrantArgs.builder()
///                         .grantee(BucketAclAccessControlPolicyGrantGranteeArgs.builder()
///                             .type("Group")
///                             .uri("http://acs.amazonaws.com/groups/s3/LogDelivery")
///                             .build())
///                         .permission("READ_ACP")
///                         .build())
///                 .build())
///             .bucket(example.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleBucketOwnershipControls)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: my-tf-example-bucket
///   exampleBucketOwnershipControls:
///     type: aws:s3:BucketOwnershipControls
///     name: example
///     properties:
///       rule:
///         objectOwnership: BucketOwnerPreferred
///       bucket: ${example.id}
///   exampleBucketAcl:
///     type: aws:s3:BucketAcl
///     name: example
///     properties:
///       accessControlPolicy:
///         owner:
///           id: ${current.id}
///         grants:
///           - grantee:
///               id: ${current.id}
///               type: CanonicalUser
///             permission: READ
///           - grantee:
///               type: Group
///               uri: http://acs.amazonaws.com/groups/s3/LogDelivery
///             permission: READ_ACP
///       bucket: ${example.id}
///     options:
///       dependsOn:
///         - ${exampleBucketOwnershipControls}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:s3:getCanonicalUserId
///       arguments: {}
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
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// If the owner (account ID) of the source bucket is the _same_ account used to configure the AWS Provider, and the source bucket is **configured** with a
/// [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl) (i.e. predefined grant), import using the `bucket` and `acl` separated by a comma (`,`):
///
///
/// If the owner (account ID) of the source bucket _differs_ from the account used to configure the AWS Provider, and the source bucket is **not configured** with a [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl) (i.e. predefined grant), imported using the `bucket` and `expectedBucketOwner` separated by a comma (`,`):
///
///
/// If the owner (account ID) of the source bucket _differs_ from the account used to configure the AWS Provider, and the source bucket is **configured** with a
/// [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl) (i.e. predefined grant), imported using the `bucket`, `expectedBucketOwner`, and `acl` separated by commas (`,`):
///
///
/// **Using `pulumi import` to import** using `bucket`, `expectedBucketOwner`, and/or `acl`, depending on your situation. For example:
///
/// If the owner (account ID) of the source bucket is the _same_ account used to configure the AWS Provider, and the source bucket is **not configured** with a
/// [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl) (i.e. predefined grant), import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketAclV2:BucketAclV2 example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket is the _same_ account used to configure the AWS Provider, and the source bucket is **configured** with a [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl) (i.e. predefined grant), import using the `bucket` and `acl` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketAclV2:BucketAclV2 example bucket-name,private
/// ```
///
/// If the owner (account ID) of the source bucket _differs_ from the account used to configure the AWS Provider, and the source bucket is **not configured** with a [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl) (i.e. predefined grant), imported using the `bucket` and `expectedBucketOwner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketAclV2:BucketAclV2 example bucket-name,123456789012
/// ```
///
/// If the owner (account ID) of the source bucket _differs_ from the account used to configure the AWS Provider, and the source bucket is **configured** with a [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl) (i.e. predefined grant), imported using the `bucket`, `expectedBucketOwner`, and `acl` separated by commas (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketAclV2:BucketAclV2 example bucket-name,123456789012,private
/// ```
class BucketAclV2 extends pulumi.CustomResource {
  /// Configuration block that sets the ACL permissions for an object per grantee. See below.
  late final pulumi.Output<BucketAclV2AccessControlPolicy> accessControlPolicy;
  /// Canned ACL to apply to the bucket. Valid values: `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, `bucket-owner-read`, `bucket-owner-full-control`, `log-delivery-write`. Full details are available on the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl).
  late final pulumi.Output<String?> acl;
  /// Bucket to which to apply the ACL.
  late final pulumi.Output<String> bucket;
  /// Account ID of the expected bucket owner.
  late final pulumi.Output<String?> expectedBucketOwner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [BucketAclV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketAclV2]. {@macro pulumi_s3_bucket_acl_v2_bucket_acl_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketAclV2(
    String name, {
    BucketAclV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketAclV2:BucketAclV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accessControlPolicy = registerOutput<BucketAclV2AccessControlPolicy>('accessControlPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketAclV2AccessControlPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    acl = registerOutput<String?>('acl');
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [BucketAclV2] resource's state with the given [name] and [id].
  static BucketAclV2 get(
    String name,
    pulumi.Input<String> id, {
    BucketAclV2State? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BucketAclV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BucketAclV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketAclV2:BucketAclV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessControlPolicy = registerOutput<BucketAclV2AccessControlPolicy>('accessControlPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketAclV2AccessControlPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    acl = registerOutput<String?>('acl');
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [BucketAclV2] resource.
  BucketAclV2.reference(String urn)
    : super(
        'aws:s3/bucketAclV2:BucketAclV2',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessControlPolicy = registerOutput<BucketAclV2AccessControlPolicy>('accessControlPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketAclV2AccessControlPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    acl = registerOutput<String?>('acl');
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    region = registerOutput<String>('region');
  }
}
