import 'package:pulumi/pulumi.dart' as pulumi;
import 'threat_intel_set_args.dart';

/// Provides a resource to manage a GuardDuty ThreatIntelSet.
///
/// > **Note:** Currently in GuardDuty, users from member accounts cannot upload and further manage ThreatIntelSets. ThreatIntelSets that are uploaded by the primary account are imposed on GuardDuty functionality in its member accounts. See the [GuardDuty API Documentation](https://docs.aws.amazon.com/guardduty/latest/ug/create-threat-intel-set.html)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const primary = new aws.guardduty.Detector("primary", {enable: true});
/// const bucket = new aws.s3.Bucket("bucket", {});
/// const bucketAcl = new aws.s3.BucketAcl("bucket_acl", {
///     bucket: bucket.id,
///     acl: "private",
/// });
/// const myThreatIntelSet = new aws.s3.BucketObjectv2("MyThreatIntelSet", {
///     acl: "public-read",
///     content: "10.0.0.0/8\n",
///     bucket: bucket.id,
///     key: "MyThreatIntelSet",
/// });
/// const myThreatIntelSetThreatIntelSet = new aws.guardduty.ThreatIntelSet("MyThreatIntelSet", {
///     activate: true,
///     detectorId: primary.id,
///     format: "TXT",
///     location: pulumi.interpolate`https://s3.amazonaws.com/${myThreatIntelSet.bucket}/${myThreatIntelSet.key}`,
///     name: "MyThreatIntelSet",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// primary = aws.guardduty.Detector("primary", enable=True)
/// bucket = aws.s3.Bucket("bucket")
/// bucket_acl = aws.s3.BucketAcl("bucket_acl",
///     bucket=bucket.id,
///     acl="private")
/// my_threat_intel_set = aws.s3.BucketObjectv2("MyThreatIntelSet",
///     acl="public-read",
///     content="10.0.0.0/8\n",
///     bucket=bucket.id,
///     key="MyThreatIntelSet")
/// my_threat_intel_set_threat_intel_set = aws.guardduty.ThreatIntelSet("MyThreatIntelSet",
///     activate=True,
///     detector_id=primary.id,
///     format="TXT",
///     location=pulumi.Output.all(
///         bucket=my_threat_intel_set.bucket,
///         key=my_threat_intel_set.key
/// ).apply(lambda resolved_outputs: f"https://s3.amazonaws.com/{resolved_outputs['bucket']}/{resolved_outputs['key']}")
/// ,
///     name="MyThreatIntelSet")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Aws.GuardDuty.Detector("primary", new()
///     {
///         Enable = true,
///     });
///
///     var bucket = new Aws.S3.Bucket("bucket");
///
///     var bucketAcl = new Aws.S3.BucketAcl("bucket_acl", new()
///     {
///         Bucket = bucket.Id,
///         Acl = "private",
///     });
///
///     var myThreatIntelSet = new Aws.S3.BucketObjectv2("MyThreatIntelSet", new()
///     {
///         Acl = "public-read",
///         Content = @"10.0.0.0/8
/// ",
///         Bucket = bucket.Id,
///         Key = "MyThreatIntelSet",
///     });
///
///     var myThreatIntelSetThreatIntelSet = new Aws.GuardDuty.ThreatIntelSet("MyThreatIntelSet", new()
///     {
///         Activate = true,
///         DetectorId = primary.Id,
///         Format = "TXT",
///         Location = Output.Tuple(myThreatIntelSet.Bucket, myThreatIntelSet.Key).Apply(values =>
///         {
///             var bucket = values.Item1;
///             var key = values.Item2;
///             return $"https://s3.amazonaws.com/{bucket}/{key}";
///         }),
///         Name = "MyThreatIntelSet",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/guardduty"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := guardduty.NewDetector(ctx, "primary", &guardduty.DetectorArgs{
/// 			Enable: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := s3.NewBucket(ctx, "bucket", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "bucket_acl", &s3.BucketAclArgs{
/// 			Bucket: bucket.ID(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myThreatIntelSet, err := s3.NewBucketObjectv2(ctx, "MyThreatIntelSet", &s3.BucketObjectv2Args{
/// 			Acl:     pulumi.String("public-read"),
/// 			Content: pulumi.String("10.0.0.0/8\n"),
/// 			Bucket:  bucket.ID(),
/// 			Key:     pulumi.String("MyThreatIntelSet"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = guardduty.NewThreatIntelSet(ctx, "MyThreatIntelSet", &guardduty.ThreatIntelSetArgs{
/// 			Activate:   pulumi.Bool(true),
/// 			DetectorId: primary.ID(),
/// 			Format:     pulumi.String("TXT"),
/// 			Location: pulumi.All(myThreatIntelSet.Bucket, myThreatIntelSet.Key).ApplyT(func(_args []interface{}) (string, error) {
/// 				bucket := _args[0].(string)
/// 				key := _args[1].(string)
/// 				return fmt.Sprintf("https://s3.amazonaws.com/%v/%v", bucket, key), nil
/// 			}).(pulumi.StringOutput),
/// 			Name: pulumi.String("MyThreatIntelSet"),
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
/// import com.pulumi.aws.guardduty.Detector;
/// import com.pulumi.aws.guardduty.DetectorArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.aws.guardduty.ThreatIntelSet;
/// import com.pulumi.aws.guardduty.ThreatIntelSetArgs;
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
///         var primary = new Detector("primary", DetectorArgs.builder()
///             .enable(true)
///             .build());
///
///         var bucket = new Bucket("bucket");
///
///         var bucketAcl = new BucketAcl("bucketAcl", BucketAclArgs.builder()
///             .bucket(bucket.id())
///             .acl("private")
///             .build());
///
///         var myThreatIntelSet = new BucketObjectv2("myThreatIntelSet", BucketObjectv2Args.builder()
///             .acl("public-read")
///             .content("""
/// 10.0.0.0/8
///             """)
///             .bucket(bucket.id())
///             .key("MyThreatIntelSet")
///             .build());
///
///         var myThreatIntelSetThreatIntelSet = new ThreatIntelSet("myThreatIntelSetThreatIntelSet", ThreatIntelSetArgs.builder()
///             .activate(true)
///             .detectorId(primary.id())
///             .format("TXT")
///             .location(Output.tuple(myThreatIntelSet.bucket(), myThreatIntelSet.key()).applyValue(values -> {
///                 var bucket = values.t1;
///                 var key = values.t2;
///                 return String.format("https://s3.amazonaws.com/%s/%s", bucket,key);
///             }))
///             .name("MyThreatIntelSet")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: aws:guardduty:Detector
///     properties:
///       enable: true
///   bucket:
///     type: aws:s3:Bucket
///   bucketAcl:
///     type: aws:s3:BucketAcl
///     name: bucket_acl
///     properties:
///       bucket: ${bucket.id}
///       acl: private
///   myThreatIntelSet:
///     type: aws:s3:BucketObjectv2
///     name: MyThreatIntelSet
///     properties:
///       acl: public-read
///       content: |
///         10.0.0.0/8
///       bucket: ${bucket.id}
///       key: MyThreatIntelSet
///   myThreatIntelSetThreatIntelSet:
///     type: aws:guardduty:ThreatIntelSet
///     name: MyThreatIntelSet
///     properties:
///       activate: true
///       detectorId: ${primary.id}
///       format: TXT
///       location: https://s3.amazonaws.com/${myThreatIntelSet.bucket}/${myThreatIntelSet.key}
///       name: MyThreatIntelSet
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import GuardDuty ThreatIntelSet using the primary GuardDuty detector ID and ThreatIntelSetID. For example:
///
/// ```sh
/// $ pulumi import aws:guardduty/threatIntelSet:ThreatIntelSet MyThreatIntelSet 00b00fd5aecc0ab60a708659477e9617:123456789012
/// ```
class ThreatIntelSet extends pulumi.CustomResource {
  /// Specifies whether GuardDuty is to start using the uploaded ThreatIntelSet.
  late final pulumi.Output<bool> activate;

  /// Amazon Resource Name (ARN) of the GuardDuty ThreatIntelSet.
  late final pulumi.Output<String> arn;

  /// The detector ID of the GuardDuty.
  late final pulumi.Output<String> detectorId;

  /// The format of the file that contains the ThreatIntelSet. Valid values: `TXT` | `STIX` | `OTX_CSV` | `ALIEN_VAULT` | `PROOF_POINT` | `FIRE_EYE`
  late final pulumi.Output<String> format;

  /// The URI of the file that contains the ThreatIntelSet.
  late final pulumi.Output<String> location;

  /// The friendly name to identify the ThreatIntelSet.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ThreatIntelSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ThreatIntelSet]. {@macro pulumi_guardduty_threat_intel_set_threat_intel_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ThreatIntelSet(
    String name, {
    ThreatIntelSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:guardduty/threatIntelSet:ThreatIntelSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.activate = registerOutput<bool>('activate');
    this.arn = registerOutput<String>('arn');
    this.detectorId = registerOutput<String>('detectorId');
    this.format = registerOutput<String>('format');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
