import 'package:pulumi/pulumi.dart';
import '../drt_access_log_bucket_association_timeouts/drt_access_log_bucket_association_timeouts.dart';
import 'drt_access_log_bucket_association_args.dart';

/// Resource for managing an AWS Shield DRT Access Log Bucket Association.
/// Up to 10 log buckets can be associated for DRT Access sharing with the Shield Response Team (SRT).
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.shield.DrtAccessRoleArnAssociation("test", {roleArn: `arn:aws:iam:${current.region}:${currentAwsCallerIdentity.accountId}:${shieldDrtAccessRoleName}`});
/// const testDrtAccessLogBucketAssociation = new aws.shield.DrtAccessLogBucketAssociation("test", {
/// logBucket: shieldDrtAccessLogBucket,
/// roleArnAssociationId: test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.shield.DrtAccessRoleArnAssociation("test", role_arn=f"arn:aws:iam:{current['region']}:{current_aws_caller_identity['accountId']}:{shield_drt_access_role_name}")
/// test_drt_access_log_bucket_association = aws.shield.DrtAccessLogBucketAssociation("test",
/// log_bucket=shield_drt_access_log_bucket,
/// role_arn_association_id=test.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Shield.DrtAccessRoleArnAssociation("test", new()
/// {
/// RoleArn = $"arn:aws:iam:{current.Region}:{currentAwsCallerIdentity.AccountId}:{shieldDrtAccessRoleName}",
/// });
///
/// var testDrtAccessLogBucketAssociation = new Aws.Shield.DrtAccessLogBucketAssociation("test", new()
/// {
/// LogBucket = shieldDrtAccessLogBucket,
/// RoleArnAssociationId = test.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/shield"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := shield.NewDrtAccessRoleArnAssociation(ctx, "test", &shield.DrtAccessRoleArnAssociationArgs{
/// RoleArn: pulumi.Sprintf("arn:aws:iam:%v:%v:%v", current.Region, currentAwsCallerIdentity.AccountId, shieldDrtAccessRoleName),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = shield.NewDrtAccessLogBucketAssociation(ctx, "test", &shield.DrtAccessLogBucketAssociationArgs{
/// LogBucket:            pulumi.Any(shieldDrtAccessLogBucket),
/// RoleArnAssociationId: test.ID(),
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
/// import com.pulumi.aws.shield.DrtAccessRoleArnAssociation;
/// import com.pulumi.aws.shield.DrtAccessRoleArnAssociationArgs;
/// import com.pulumi.aws.shield.DrtAccessLogBucketAssociation;
/// import com.pulumi.aws.shield.DrtAccessLogBucketAssociationArgs;
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
/// var test = new DrtAccessRoleArnAssociation("test", DrtAccessRoleArnAssociationArgs.builder()
/// .roleArn(String.format("arn:aws:iam:%s:%s:%s", current.region(),currentAwsCallerIdentity.accountId(),shieldDrtAccessRoleName))
/// .build());
///
/// var testDrtAccessLogBucketAssociation = new DrtAccessLogBucketAssociation("testDrtAccessLogBucketAssociation", DrtAccessLogBucketAssociationArgs.builder()
/// .logBucket(shieldDrtAccessLogBucket)
/// .roleArnAssociationId(test.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:shield:DrtAccessRoleArnAssociation
/// properties:
/// roleArn: arn:aws:iam:${current.region}:${currentAwsCallerIdentity.accountId}:${shieldDrtAccessRoleName}
/// testDrtAccessLogBucketAssociation:
/// type: aws:shield:DrtAccessLogBucketAssociation
/// name: test
/// properties:
/// logBucket: ${shieldDrtAccessLogBucket}
/// roleArnAssociationId: ${test.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Shield DRT access log bucket associations using the <span pulumi-lang-nodejs="`logBucket`" pulumi-lang-dotnet="`LogBucket`" pulumi-lang-go="`logBucket`" pulumi-lang-python="`log_bucket`" pulumi-lang-yaml="`logBucket`" pulumi-lang-java="`logBucket`">`log_bucket`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:shield/drtAccessLogBucketAssociation:DrtAccessLogBucketAssociation example example-bucket
/// ```
class DrtAccessLogBucketAssociation extends CustomResource {
  /// The Amazon S3 bucket that contains the logs that you want to share.
  late final Output<String> logBucket;

  /// The ID of the Role Arn association used for allowing Shield DRT Access.
  late final Output<String> roleArnAssociationId;
  late final Output<DrtAccessLogBucketAssociationTimeouts?> timeouts;

  DrtAccessLogBucketAssociation(
    String name, {
    DrtAccessLogBucketAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:shield/drtAccessLogBucketAssociation:DrtAccessLogBucketAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.logBucket = Output.createUnknown<String>();
    this.roleArnAssociationId = Output.createUnknown<String>();
    this.timeouts =
        Output.createUnknown<DrtAccessLogBucketAssociationTimeouts?>();
  }
}
