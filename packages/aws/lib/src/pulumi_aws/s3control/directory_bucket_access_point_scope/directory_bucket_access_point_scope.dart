import 'package:pulumi/pulumi.dart';
import '../directory_bucket_access_point_scope_scope/directory_bucket_access_point_scope_scope.dart';
import 'directory_bucket_access_point_scope_args.dart';

/// Provides a resource to manage the access point scope for a directory bucket.
///
/// With access points for directory buckets, you can use the access point scope to restrict access to specific prefixes, API actions, or a combination of both. You can specify any amount of prefixes, but the total length of characters of all prefixes must be less than 256 bytes. For more information, see [AWS Documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-directory-buckets-manage-scope.html).
///
/// > For all the services in AWS Local Zones, including Amazon S3, your accountID must be enabled before you can create or access any resource in the Local Zone. You can use the `DescribeAvailabilityZones` API operation to confirm your accountID access to a Local Zone. For more information, see [AWS Documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/opt-in-directory-bucket-lz.html)
///
/// > Terraform provides two ways to manage access point scopes. You can use a standalone resource <span pulumi-lang-nodejs="`awsS3controlDirectoryAccessPointScope`" pulumi-lang-dotnet="`AwsS3controlDirectoryAccessPointScope`" pulumi-lang-go="`awsS3controlDirectoryAccessPointScope`" pulumi-lang-python="`aws_s3control_directory_access_point_scope`" pulumi-lang-yaml="`awsS3controlDirectoryAccessPointScope`" pulumi-lang-java="`awsS3controlDirectoryAccessPointScope`">`aws_s3control_directory_access_point_scope`</span> or, an in-line scope with the  <span pulumi-lang-nodejs="`awsS3DirectoryAccessPoint`" pulumi-lang-dotnet="`AwsS3DirectoryAccessPoint`" pulumi-lang-go="`awsS3DirectoryAccessPoint`" pulumi-lang-python="`aws_s3_directory_access_point`" pulumi-lang-yaml="`awsS3DirectoryAccessPoint`" pulumi-lang-java="`awsS3DirectoryAccessPoint`">`aws_s3_directory_access_point`</span> resource. You cannot use a standalone resource at the same time as in-line, which will cause an overwrite of each other. You must use one or the other.
///
/// ## Example Usage
///
/// ### S3 Access Point Scope for a directory bucket in an AWS Local Zone
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const available = aws.getAvailabilityZones({
/// state: "available",
/// });
/// const example = new aws.s3.DirectoryBucket("example", {
/// bucket: "example--zoneId--x-s3",
/// location: {
/// name: available.then(available => available.zoneIds?.[0]),
/// },
/// });
/// const exampleAccessPoint = new aws.s3.AccessPoint("example", {
/// bucket: example.id,
/// name: "example--zoneId--xa-s3",
/// });
/// const exampleDirectoryBucketAccessPointScope = new aws.s3control.DirectoryBucketAccessPointScope("example", {
/// name: "example--zoneId--xa-s3",
/// accountId: "123456789012",
/// scope: {
/// permissions: [
/// "GetObject",
/// "ListBucket",
/// ],
/// prefixes: [
/// "myobject1.csv",
/// "myobject2*",
/// ],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones(state="available")
/// example = aws.s3.DirectoryBucket("example",
/// bucket="example--zoneId--x-s3",
/// location={
/// "name": available.zone_ids[0],
/// })
/// example_access_point = aws.s3.AccessPoint("example",
/// bucket=example.id,
/// name="example--zoneId--xa-s3")
/// example_directory_bucket_access_point_scope = aws.s3control.DirectoryBucketAccessPointScope("example",
/// name="example--zoneId--xa-s3",
/// account_id="123456789012",
/// scope={
/// "permissions": [
/// "GetObject",
/// "ListBucket",
/// ],
/// "prefixes": [
/// "myobject1.csv",
/// "myobject2*",
/// ],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var available = Aws.GetAvailabilityZones.Invoke(new()
/// {
/// State = "available",
/// });
///
/// var example = new Aws.S3.DirectoryBucket("example", new()
/// {
/// Bucket = "example--zoneId--x-s3",
/// Location = new Aws.S3.Inputs.DirectoryBucketLocationArgs
/// {
/// Name = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.ZoneIds[0]),
/// },
/// });
///
/// var exampleAccessPoint = new Aws.S3.AccessPoint("example", new()
/// {
/// Bucket = example.Id,
/// Name = "example--zoneId--xa-s3",
/// });
///
/// var exampleDirectoryBucketAccessPointScope = new Aws.S3Control.DirectoryBucketAccessPointScope("example", new()
/// {
/// Name = "example--zoneId--xa-s3",
/// AccountId = "123456789012",
/// Scope = new Aws.S3Control.Inputs.DirectoryBucketAccessPointScopeScopeArgs
/// {
/// Permissions = new[]
/// {
/// "GetObject",
/// "ListBucket",
/// },
/// Prefixes = new[]
/// {
/// "myobject1.csv",
/// "myobject2*",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// State: pulumi.StringRef("available"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// example, err := s3.NewDirectoryBucket(ctx, "example", &s3.DirectoryBucketArgs{
/// Bucket: pulumi.String("example--zoneId--x-s3"),
/// Location: &s3.DirectoryBucketLocationArgs{
/// Name: pulumi.String(available.ZoneIds[0]),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewAccessPoint(ctx, "example", &s3.AccessPointArgs{
/// Bucket: example.ID(),
/// Name:   pulumi.String("example--zoneId--xa-s3"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3control.NewDirectoryBucketAccessPointScope(ctx, "example", &s3control.DirectoryBucketAccessPointScopeArgs{
/// Name:      pulumi.String("example--zoneId--xa-s3"),
/// AccountId: pulumi.String("123456789012"),
/// Scope: &s3control.DirectoryBucketAccessPointScopeScopeArgs{
/// Permissions: pulumi.StringArray{
/// pulumi.String("GetObject"),
/// pulumi.String("ListBucket"),
/// },
/// Prefixes: pulumi.StringArray{
/// pulumi.String("myobject1.csv"),
/// pulumi.String("myobject2*"),
/// },
/// },
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
/// final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
/// .state("available")
/// .build());
///
/// var example = new DirectoryBucket("example", DirectoryBucketArgs.builder()
/// .bucket("example--zoneId--x-s3")
/// .location(DirectoryBucketLocationArgs.builder()
/// .name(available.zoneIds()[0])
/// .build())
/// .build());
///
/// var exampleAccessPoint = new AccessPoint("exampleAccessPoint", AccessPointArgs.builder()
/// .bucket(example.id())
/// .name("example--zoneId--xa-s3")
/// .build());
///
/// var exampleDirectoryBucketAccessPointScope = new DirectoryBucketAccessPointScope("exampleDirectoryBucketAccessPointScope", DirectoryBucketAccessPointScopeArgs.builder()
/// .name("example--zoneId--xa-s3")
/// .accountId("123456789012")
/// .scope(DirectoryBucketAccessPointScopeScopeArgs.builder()
/// .permissions(
/// "GetObject",
/// "ListBucket")
/// .prefixes(
/// "myobject1.csv",
/// "myobject2*")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:DirectoryBucket
/// properties:
/// bucket: example--zoneId--x-s3
/// location:
/// name: ${available.zoneIds[0]}
/// exampleAccessPoint:
/// type: aws:s3:AccessPoint
/// name: example
/// properties:
/// bucket: ${example.id}
/// name: example--zoneId--xa-s3
/// exampleDirectoryBucketAccessPointScope:
/// type: aws:s3control:DirectoryBucketAccessPointScope
/// name: example
/// properties:
/// name: example--zoneId--xa-s3
/// accountId: '123456789012'
/// scope:
/// permissions:
/// - GetObject
/// - ListBucket
/// prefixes:
/// - myobject1.csv
/// - myobject2*
/// variables:
/// available:
/// fn::invoke:
/// function: aws:getAvailabilityZones
/// arguments:
/// state: available
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Access Point Scope using access point name and AWS account ID separated by a colon (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/directoryBucketAccessPointScope:DirectoryBucketAccessPointScope example example--zoneid--xa-s3,123456789012
/// ```
class DirectoryBucketAccessPointScope extends CustomResource {
  /// The AWS account ID that owns the specified access point.
  late final Output<String> accountId;

  /// The name of the access point that you want to apply the scope to.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// . Scope is used to restrict access to specific prefixes, API operations, or a combination of both. To remove the <span pulumi-lang-nodejs="`scope`" pulumi-lang-dotnet="`Scope`" pulumi-lang-go="`scope`" pulumi-lang-python="`scope`" pulumi-lang-yaml="`scope`" pulumi-lang-java="`scope`">`scope`</span>, set it to `{permissions=[] prefixes=[]}`. The default scope is `{permissions=[] prefixes=[]}`.
  late final Output<DirectoryBucketAccessPointScopeScope> scope;

  DirectoryBucketAccessPointScope(
    String name, {
    DirectoryBucketAccessPointScopeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3control/directoryBucketAccessPointScope:DirectoryBucketAccessPointScope',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.scope = registerOutput<DirectoryBucketAccessPointScopeScope>('scope');
  }
}
