import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_bucket_access_point_scope_args.dart';
import 'directory_bucket_access_point_scope_scope.dart';
import 'directory_bucket_access_point_scope_state.dart';

/// Provides a resource to manage the access point scope for a directory bucket.
///
/// With access points for directory buckets, you can use the access point scope to restrict access to specific prefixes, API actions, or a combination of both. You can specify any amount of prefixes, but the total length of characters of all prefixes must be less than 256 bytes. For more information, see [AWS Documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-directory-buckets-manage-scope.html).
///
/// &gt; For all the services in AWS Local Zones, including Amazon S3, your accountID must be enabled before you can create or access any resource in the Local Zone. You can use the `DescribeAvailabilityZones` API operation to confirm your accountID access to a Local Zone. For more information, see [AWS Documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/opt-in-directory-bucket-lz.html)
///
/// &gt; Terraform manages access point scopes for directory buckets with the standalone `aws.s3control.DirectoryBucketAccessPointScope` resource. The `aws.s3.AccessPoint` resource does not support an in-line scope.
///
/// ## Example Usage
///
/// ### S3 Access Point Scope for a directory bucket in an AWS Local Zone
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const available = aws.getAvailabilityZones({
///     state: "available",
/// });
/// const example = new aws.s3.DirectoryBucket("example", {
///     location: {
///         name: available.then(available => available.zoneIds?.[0]),
///     },
///     bucket: "example--zoneId--x-s3",
/// });
/// const exampleAccessPoint = new aws.s3.AccessPoint("example", {
///     bucket: example.id,
///     name: "example--zoneId--xa-s3",
/// });
/// const exampleDirectoryBucketAccessPointScope = new aws.s3control.DirectoryBucketAccessPointScope("example", {
///     scope: {
///         permissions: [
///             "GetObject",
///             "ListBucket",
///         ],
///         prefixes: [
///             "myobject1.csv",
///             "myobject2*",
///         ],
///     },
///     name: "example--zoneId--xa-s3",
///     accountId: "123456789012",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones(state="available")
/// example = aws.s3.DirectoryBucket("example",
///     location={
///         "name": available.zone_ids[0],
///     },
///     bucket="example--zoneId--x-s3")
/// example_access_point = aws.s3.AccessPoint("example",
///     bucket=example.id,
///     name="example--zoneId--xa-s3")
/// example_directory_bucket_access_point_scope = aws.s3control.DirectoryBucketAccessPointScope("example",
///     scope={
///         "permissions": [
///             "GetObject",
///             "ListBucket",
///         ],
///         "prefixes": [
///             "myobject1.csv",
///             "myobject2*",
///         ],
///     },
///     name="example--zoneId--xa-s3",
///     account_id="123456789012")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Aws.GetAvailabilityZones.Invoke(new()
///     {
///         State = "available",
///     });
///
///     var example = new Aws.S3.DirectoryBucket("example", new()
///     {
///         Location = new Aws.S3.Inputs.DirectoryBucketLocationArgs
///         {
///             Name = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.ZoneIds[0]),
///         },
///         Bucket = "example--zoneId--x-s3",
///     });
///
///     var exampleAccessPoint = new Aws.S3.AccessPoint("example", new()
///     {
///         Bucket = example.Id,
///         Name = "example--zoneId--xa-s3",
///     });
///
///     var exampleDirectoryBucketAccessPointScope = new Aws.S3Control.DirectoryBucketAccessPointScope("example", new()
///     {
///         Scope = new Aws.S3Control.Inputs.DirectoryBucketAccessPointScopeScopeArgs
///         {
///             Permissions = new[]
///             {
///                 "GetObject",
///                 "ListBucket",
///             },
///             Prefixes = new[]
///             {
///                 "myobject1.csv",
///                 "myobject2*",
///             },
///         },
///         Name = "example--zoneId--xa-s3",
///         AccountId = "123456789012",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// 			State: pulumi.StringRef("available"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := s3.NewDirectoryBucket(ctx, "example", &s3.DirectoryBucketArgs{
/// 			Location: &s3.DirectoryBucketLocationArgs{
/// 				Name: pulumi.String(available.ZoneIds[0]),
/// 			},
/// 			Bucket: pulumi.String("example--zoneId--x-s3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewAccessPoint(ctx, "example", &s3.AccessPointArgs{
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			Name:   pulumi.String("example--zoneId--xa-s3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3control.NewDirectoryBucketAccessPointScope(ctx, "example", &s3control.DirectoryBucketAccessPointScopeArgs{
/// 			Scope: &s3control.DirectoryBucketAccessPointScopeScopeArgs{
/// 				Permissions: pulumi.StringArray{
/// 					pulumi.String("GetObject"),
/// 					pulumi.String("ListBucket"),
/// 				},
/// 				Prefixes: pulumi.StringArray{
/// 					pulumi.String("myobject1.csv"),
/// 					pulumi.String("myobject2*"),
/// 				},
/// 			},
/// 			Name:      pulumi.String("example--zoneId--xa-s3"),
/// 			AccountId: pulumi.String("123456789012"),
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
/// data "aws_getavailabilityzones" "available" {
///   state = "available"
/// }
///
/// resource "aws_s3_directorybucket" "example" {
///   location = {
///     name = data.aws_getavailabilityzones.available.zone_ids[0]
///   }
///   bucket = "example--zoneId--x-s3"
/// }
/// resource "aws_s3_accesspoint" "example" {
///   bucket = aws_s3_directorybucket.example.id
///   name   = "example--zoneId--xa-s3"
/// }
/// resource "aws_s3control_directorybucketaccesspointscope" "example" {
///   scope = {
///     permissions = ["GetObject", "ListBucket"]
///     prefixes    = ["myobject1.csv", "myobject2*"]
///   }
///   name       = "example--zoneId--xa-s3"
///   account_id = "123456789012"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.s3.DirectoryBucket;
/// import com.pulumi.aws.s3.DirectoryBucketArgs;
/// import com.pulumi.aws.s3.inputs.DirectoryBucketLocationArgs;
/// import com.pulumi.aws.s3.AccessPoint;
/// import com.pulumi.aws.s3.AccessPointArgs;
/// import com.pulumi.aws.s3control.DirectoryBucketAccessPointScope;
/// import com.pulumi.aws.s3control.DirectoryBucketAccessPointScopeArgs;
/// import com.pulumi.aws.s3control.inputs.DirectoryBucketAccessPointScopeScopeArgs;
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
///         final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .state("available")
///             .build());
///
///         var example = new DirectoryBucket("example", DirectoryBucketArgs.builder()
///             .location(DirectoryBucketLocationArgs.builder()
///                 .name(available.zoneIds()[0])
///                 .build())
///             .bucket("example--zoneId--x-s3")
///             .build());
///
///         var exampleAccessPoint = new AccessPoint("exampleAccessPoint", AccessPointArgs.builder()
///             .bucket(example.id())
///             .name("example--zoneId--xa-s3")
///             .build());
///
///         var exampleDirectoryBucketAccessPointScope = new DirectoryBucketAccessPointScope("exampleDirectoryBucketAccessPointScope", DirectoryBucketAccessPointScopeArgs.builder()
///             .scope(DirectoryBucketAccessPointScopeScopeArgs.builder()
///                 .permissions(
///                     "GetObject",
///                     "ListBucket")
///                 .prefixes(
///                     "myobject1.csv",
///                     "myobject2*")
///                 .build())
///             .name("example--zoneId--xa-s3")
///             .accountId("123456789012")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:DirectoryBucket
///     properties:
///       location:
///         name: ${available.zoneIds[0]}
///       bucket: example--zoneId--x-s3
///   exampleAccessPoint:
///     type: aws:s3:AccessPoint
///     name: example
///     properties:
///       bucket: ${example.id}
///       name: example--zoneId--xa-s3
///   exampleDirectoryBucketAccessPointScope:
///     type: aws:s3control:DirectoryBucketAccessPointScope
///     name: example
///     properties:
///       scope:
///         permissions:
///           - GetObject
///           - ListBucket
///         prefixes:
///           - myobject1.csv
///           - myobject2*
///       name: example--zoneId--xa-s3
///       accountId: '123456789012'
/// variables:
///   available:
///     fn::invoke:
///       function: aws:getAvailabilityZones
///       arguments:
///         state: available
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Access Point Scope using access point name and AWS account ID separated by a colon (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/directoryBucketAccessPointScope:DirectoryBucketAccessPointScope example example--zoneid--xa-s3,123456789012
/// ```
class DirectoryBucketAccessPointScope extends pulumi.CustomResource {
  /// AWS account ID that owns the specified access point.
  late final pulumi.Output<String> accountId;
  /// Name of the access point that you want to apply the scope to.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// . Scope is used to restrict access to specific prefixes, API operations, or a combination of both. To remove the `scope`, set it to `{permissions=[] prefixes=[]}`. The default scope is `{permissions=[] prefixes=[]}`.
  late final pulumi.Output<DirectoryBucketAccessPointScopeScope> scope;

  /// Creates a new [DirectoryBucketAccessPointScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DirectoryBucketAccessPointScope]. {@macro pulumi_s3_control_directory_bucket_access_point_scope_directory_bucket_access_point_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DirectoryBucketAccessPointScope(
    String name, {
    DirectoryBucketAccessPointScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/directoryBucketAccessPointScope:DirectoryBucketAccessPointScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    scope = registerOutput<DirectoryBucketAccessPointScopeScope>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryBucketAccessPointScopeScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [DirectoryBucketAccessPointScope] resource's state with the given [name] and [id].
  static DirectoryBucketAccessPointScope get(
    String name,
    pulumi.Input<String> id, {
    DirectoryBucketAccessPointScopeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DirectoryBucketAccessPointScope._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DirectoryBucketAccessPointScope._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/directoryBucketAccessPointScope:DirectoryBucketAccessPointScope',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    scope = registerOutput<DirectoryBucketAccessPointScopeScope>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryBucketAccessPointScopeScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [DirectoryBucketAccessPointScope] resource.
  DirectoryBucketAccessPointScope.reference(String urn)
    : super(
        'aws:s3control/directoryBucketAccessPointScope:DirectoryBucketAccessPointScope',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    scope = registerOutput<DirectoryBucketAccessPointScopeScope>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryBucketAccessPointScopeScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
