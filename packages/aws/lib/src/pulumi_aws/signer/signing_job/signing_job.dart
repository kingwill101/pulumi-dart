import 'package:pulumi/pulumi.dart';
import '../signing_job_destination/signing_job_destination.dart';
import '../signing_job_revocation_record/signing_job_revocation_record.dart';
import '../signing_job_signed_object/signing_job_signed_object.dart';
import '../signing_job_source/signing_job_source.dart';
import 'signing_job_args.dart';

/// Creates a Signer Signing Job.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testSp = new aws.signer.SigningProfile("test_sp", {platformId: "AWSLambda-SHA384-ECDSA"});
/// const buildSigningJob = new aws.signer.SigningJob("build_signing_job", {
/// profileName: testSp.name,
/// source: {
/// s3: {
/// bucket: "s3-bucket-name",
/// key: "object-to-be-signed.zip",
/// version: "jADjFYYYEXAMPLETszPjOmCMFDzd9dN1",
/// },
/// },
/// destination: {
/// s3: {
/// bucket: "s3-bucket-name",
/// prefix: "signed/",
/// },
/// },
/// ignoreSigningJobFailure: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_sp = aws.signer.SigningProfile("test_sp", platform_id="AWSLambda-SHA384-ECDSA")
/// build_signing_job = aws.signer.SigningJob("build_signing_job",
/// profile_name=test_sp.name,
/// source={
/// "s3": {
/// "bucket": "s3-bucket-name",
/// "key": "object-to-be-signed.zip",
/// "version": "jADjFYYYEXAMPLETszPjOmCMFDzd9dN1",
/// },
/// },
/// destination={
/// "s3": {
/// "bucket": "s3-bucket-name",
/// "prefix": "signed/",
/// },
/// },
/// ignore_signing_job_failure=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testSp = new Aws.Signer.SigningProfile("test_sp", new()
/// {
/// PlatformId = "AWSLambda-SHA384-ECDSA",
/// });
///
/// var buildSigningJob = new Aws.Signer.SigningJob("build_signing_job", new()
/// {
/// ProfileName = testSp.Name,
/// Source = new Aws.Signer.Inputs.SigningJobSourceArgs
/// {
/// S3 = new Aws.Signer.Inputs.SigningJobSourceS3Args
/// {
/// Bucket = "s3-bucket-name",
/// Key = "object-to-be-signed.zip",
/// Version = "jADjFYYYEXAMPLETszPjOmCMFDzd9dN1",
/// },
/// },
/// Destination = new Aws.Signer.Inputs.SigningJobDestinationArgs
/// {
/// S3 = new Aws.Signer.Inputs.SigningJobDestinationS3Args
/// {
/// Bucket = "s3-bucket-name",
/// Prefix = "signed/",
/// },
/// },
/// IgnoreSigningJobFailure = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/signer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// testSp, err := signer.NewSigningProfile(ctx, "test_sp", &signer.SigningProfileArgs{
/// PlatformId: pulumi.String("AWSLambda-SHA384-ECDSA"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = signer.NewSigningJob(ctx, "build_signing_job", &signer.SigningJobArgs{
/// ProfileName: testSp.Name,
/// Source: &signer.SigningJobSourceArgs{
/// S3: &signer.SigningJobSourceS3Args{
/// Bucket:  pulumi.String("s3-bucket-name"),
/// Key:     pulumi.String("object-to-be-signed.zip"),
/// Version: pulumi.String("jADjFYYYEXAMPLETszPjOmCMFDzd9dN1"),
/// },
/// },
/// Destination: &signer.SigningJobDestinationArgs{
/// S3: &signer.SigningJobDestinationS3Args{
/// Bucket: pulumi.String("s3-bucket-name"),
/// Prefix: pulumi.String("signed/"),
/// },
/// },
/// IgnoreSigningJobFailure: pulumi.Bool(true),
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
/// import com.pulumi.aws.signer.SigningProfile;
/// import com.pulumi.aws.signer.SigningProfileArgs;
/// import com.pulumi.aws.signer.SigningJob;
/// import com.pulumi.aws.signer.SigningJobArgs;
/// import com.pulumi.aws.signer.inputs.SigningJobSourceArgs;
/// import com.pulumi.aws.signer.inputs.SigningJobSourceS3Args;
/// import com.pulumi.aws.signer.inputs.SigningJobDestinationArgs;
/// import com.pulumi.aws.signer.inputs.SigningJobDestinationS3Args;
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
/// var testSp = new SigningProfile("testSp", SigningProfileArgs.builder()
/// .platformId("AWSLambda-SHA384-ECDSA")
/// .build());
///
/// var buildSigningJob = new SigningJob("buildSigningJob", SigningJobArgs.builder()
/// .profileName(testSp.name())
/// .source(SigningJobSourceArgs.builder()
/// .s3(SigningJobSourceS3Args.builder()
/// .bucket("s3-bucket-name")
/// .key("object-to-be-signed.zip")
/// .version("jADjFYYYEXAMPLETszPjOmCMFDzd9dN1")
/// .build())
/// .build())
/// .destination(SigningJobDestinationArgs.builder()
/// .s3(SigningJobDestinationS3Args.builder()
/// .bucket("s3-bucket-name")
/// .prefix("signed/")
/// .build())
/// .build())
/// .ignoreSigningJobFailure(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testSp:
/// type: aws:signer:SigningProfile
/// name: test_sp
/// properties:
/// platformId: AWSLambda-SHA384-ECDSA
/// buildSigningJob:
/// type: aws:signer:SigningJob
/// name: build_signing_job
/// properties:
/// profileName: ${testSp.name}
/// source:
/// s3:
/// bucket: s3-bucket-name
/// key: object-to-be-signed.zip
/// version: jADjFYYYEXAMPLETszPjOmCMFDzd9dN1
/// destination:
/// s3:
/// bucket: s3-bucket-name
/// prefix: signed/
/// ignoreSigningJobFailure: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Signer signing jobs using the <span pulumi-lang-nodejs="`jobId`" pulumi-lang-dotnet="`JobId`" pulumi-lang-go="`jobId`" pulumi-lang-python="`job_id`" pulumi-lang-yaml="`jobId`" pulumi-lang-java="`jobId`">`job_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:signer/signingJob:SigningJob test_signer_signing_job 9ed7e5c3-b8d4-4da0-8459-44e0b068f7ee
/// ```
class SigningJob extends CustomResource {
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the signing job was completed.
  late final Output<String> completedAt;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the signing job was created.
  late final Output<String> createdAt;

  /// The S3 bucket in which to save your signed object. See Destination below for details.
  late final Output<SigningJobDestination> destination;

  /// Set this argument to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to ignore signing job failures and retrieve failed status and reason. Default <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> ignoreSigningJobFailure;

  /// The ID of the signing job on output.
  late final Output<String> jobId;

  /// The IAM entity that initiated the signing job.
  late final Output<String> jobInvoker;

  /// The AWS account ID of the job owner.
  late final Output<String> jobOwner;

  /// A human-readable name for the signing platform associated with the signing job.
  late final Output<String> platformDisplayName;

  /// The platform to which your signed code image will be distributed.
  late final Output<String> platformId;

  /// The name of the profile to initiate the signing operation.
  late final Output<String> profileName;

  /// The version of the signing profile used to initiate the signing job.
  late final Output<String> profileVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The IAM principal that requested the signing job.
  late final Output<String> requestedBy;

  /// A revocation record if the signature generated by the signing job has been revoked. Contains a timestamp and the ID of the IAM entity that revoked the signature.
  late final Output<List<SigningJobRevocationRecord>> revocationRecords;

  /// The time when the signature of a signing job expires.
  late final Output<String> signatureExpiresAt;

  /// Name of the S3 bucket where the signed code image is saved by code signing.
  late final Output<List<SigningJobSignedObject>> signedObjects;

  /// The S3 bucket that contains the object to sign. See Source below for details.
  late final Output<SigningJobSource> source;

  /// Status of the signing job.
  late final Output<String> status;

  /// String value that contains the status reason.
  late final Output<String> statusReason;

  SigningJob(
    String name, {
    SigningJobArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:signer/signingJob:SigningJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.completedAt = Output.createUnknown<String>();
    this.createdAt = Output.createUnknown<String>();
    this.destination = Output.createUnknown<SigningJobDestination>();
    this.ignoreSigningJobFailure = Output.createUnknown<bool?>();
    this.jobId = Output.createUnknown<String>();
    this.jobInvoker = Output.createUnknown<String>();
    this.jobOwner = Output.createUnknown<String>();
    this.platformDisplayName = Output.createUnknown<String>();
    this.platformId = Output.createUnknown<String>();
    this.profileName = Output.createUnknown<String>();
    this.profileVersion = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.requestedBy = Output.createUnknown<String>();
    this.revocationRecords =
        Output.createUnknown<List<SigningJobRevocationRecord>>();
    this.signatureExpiresAt = Output.createUnknown<String>();
    this.signedObjects = Output.createUnknown<List<SigningJobSignedObject>>();
    this.source = Output.createUnknown<SigningJobSource>();
    this.status = Output.createUnknown<String>();
    this.statusReason = Output.createUnknown<String>();
  }
}
