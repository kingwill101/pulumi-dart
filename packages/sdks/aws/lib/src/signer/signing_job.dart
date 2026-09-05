import 'package:pulumi/pulumi.dart' as pulumi;
import 'signing_job_args.dart';
import 'signing_job_destination.dart';
import 'signing_job_revocation_record.dart';
import 'signing_job_signed_object.dart';
import 'signing_job_source.dart';
import 'signing_job_state.dart';

/// Creates a Signer Signing Job.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testSp = new aws.signer.SigningProfile("test_sp", {platformId: "AWSLambda-SHA384-ECDSA"});
/// const buildSigningJob = new aws.signer.SigningJob("build_signing_job", {
///     source: {
///         s3: {
///             bucket: "s3-bucket-name",
///             key: "object-to-be-signed.zip",
///             version: "jADjFYYYEXAMPLETszPjOmCMFDzd9dN1",
///         },
///     },
///     destination: {
///         s3: {
///             bucket: "s3-bucket-name",
///             prefix: "signed/",
///         },
///     },
///     profileName: testSp.name,
///     ignoreSigningJobFailure: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_sp = aws.signer.SigningProfile("test_sp", platform_id="AWSLambda-SHA384-ECDSA")
/// build_signing_job = aws.signer.SigningJob("build_signing_job",
///     source={
///         "s3": {
///             "bucket": "s3-bucket-name",
///             "key": "object-to-be-signed.zip",
///             "version": "jADjFYYYEXAMPLETszPjOmCMFDzd9dN1",
///         },
///     },
///     destination={
///         "s3": {
///             "bucket": "s3-bucket-name",
///             "prefix": "signed/",
///         },
///     },
///     profile_name=test_sp.name,
///     ignore_signing_job_failure=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testSp = new Aws.Signer.SigningProfile("test_sp", new()
///     {
///         PlatformId = "AWSLambda-SHA384-ECDSA",
///     });
///
///     var buildSigningJob = new Aws.Signer.SigningJob("build_signing_job", new()
///     {
///         Source = new Aws.Signer.Inputs.SigningJobSourceArgs
///         {
///             S3 = new Aws.Signer.Inputs.SigningJobSourceS3Args
///             {
///                 Bucket = "s3-bucket-name",
///                 Key = "object-to-be-signed.zip",
///                 Version = "jADjFYYYEXAMPLETszPjOmCMFDzd9dN1",
///             },
///         },
///         Destination = new Aws.Signer.Inputs.SigningJobDestinationArgs
///         {
///             S3 = new Aws.Signer.Inputs.SigningJobDestinationS3Args
///             {
///                 Bucket = "s3-bucket-name",
///                 Prefix = "signed/",
///             },
///         },
///         ProfileName = testSp.Name,
///         IgnoreSigningJobFailure = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/signer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testSp, err := signer.NewSigningProfile(ctx, "test_sp", &signer.SigningProfileArgs{
/// 			PlatformId: pulumi.String("AWSLambda-SHA384-ECDSA"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = signer.NewSigningJob(ctx, "build_signing_job", &signer.SigningJobArgs{
/// 			Source: &signer.SigningJobSourceArgs{
/// 				S3: &signer.SigningJobSourceS3Args{
/// 					Bucket:  pulumi.String("s3-bucket-name"),
/// 					Key:     pulumi.String("object-to-be-signed.zip"),
/// 					Version: pulumi.String("jADjFYYYEXAMPLETszPjOmCMFDzd9dN1"),
/// 				},
/// 			},
/// 			Destination: &signer.SigningJobDestinationArgs{
/// 				S3: &signer.SigningJobDestinationS3Args{
/// 					Bucket: pulumi.String("s3-bucket-name"),
/// 					Prefix: pulumi.String("signed/"),
/// 				},
/// 			},
/// 			ProfileName:             testSp.Name,
/// 			IgnoreSigningJobFailure: pulumi.Bool(true),
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
/// resource "aws_signer_signingprofile" "test_sp" {
///   platform_id = "AWSLambda-SHA384-ECDSA"
/// }
/// resource "aws_signer_signingjob" "build_signing_job" {
///   source = {
///     s3 = {
///       bucket  = "s3-bucket-name"
///       key     = "object-to-be-signed.zip"
///       version = "jADjFYYYEXAMPLETszPjOmCMFDzd9dN1"
///     }
///   }
///   destination = {
///     s3 = {
///       bucket = "s3-bucket-name"
///       prefix = "signed/"
///     }
///   }
///   profile_name               = aws_signer_signingprofile.test_sp.name
///   ignore_signing_job_failure = true
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
///         var testSp = new SigningProfile("testSp", SigningProfileArgs.builder()
///             .platformId("AWSLambda-SHA384-ECDSA")
///             .build());
///
///         var buildSigningJob = new SigningJob("buildSigningJob", SigningJobArgs.builder()
///             .source(SigningJobSourceArgs.builder()
///                 .s3(SigningJobSourceS3Args.builder()
///                     .bucket("s3-bucket-name")
///                     .key("object-to-be-signed.zip")
///                     .version("jADjFYYYEXAMPLETszPjOmCMFDzd9dN1")
///                     .build())
///                 .build())
///             .destination(SigningJobDestinationArgs.builder()
///                 .s3(SigningJobDestinationS3Args.builder()
///                     .bucket("s3-bucket-name")
///                     .prefix("signed/")
///                     .build())
///                 .build())
///             .profileName(testSp.name())
///             .ignoreSigningJobFailure(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testSp:
///     type: aws:signer:SigningProfile
///     name: test_sp
///     properties:
///       platformId: AWSLambda-SHA384-ECDSA
///   buildSigningJob:
///     type: aws:signer:SigningJob
///     name: build_signing_job
///     properties:
///       source:
///         s3:
///           bucket: s3-bucket-name
///           key: object-to-be-signed.zip
///           version: jADjFYYYEXAMPLETszPjOmCMFDzd9dN1
///       destination:
///         s3:
///           bucket: s3-bucket-name
///           prefix: signed/
///       profileName: ${testSp.name}
///       ignoreSigningJobFailure: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Signer signing jobs using the `jobId`. For example:
///
/// ```sh
/// $ pulumi import aws:signer/signingJob:SigningJob test_signer_signing_job 9ed7e5c3-b8d4-4da0-8459-44e0b068f7ee
/// ```
class SigningJob extends pulumi.CustomResource {
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the signing job was completed.
  late final pulumi.Output<String> completedAt;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the signing job was created.
  late final pulumi.Output<String> createdAt;
  /// The S3 bucket in which to save your signed object. See Destination below for details.
  late final pulumi.Output<SigningJobDestination> destination;
  /// Set this argument to `true` to ignore signing job failures and retrieve failed status and reason. Default `false`.
  late final pulumi.Output<bool?> ignoreSigningJobFailure;
  /// The ID of the signing job on output.
  late final pulumi.Output<String> jobId;
  /// The IAM entity that initiated the signing job.
  late final pulumi.Output<String> jobInvoker;
  /// The AWS account ID of the job owner.
  late final pulumi.Output<String> jobOwner;
  /// A human-readable name for the signing platform associated with the signing job.
  late final pulumi.Output<String> platformDisplayName;
  /// The platform to which your signed code image will be distributed.
  late final pulumi.Output<String> platformId;
  /// The name of the profile to initiate the signing operation.
  late final pulumi.Output<String> profileName;
  /// The version of the signing profile used to initiate the signing job.
  late final pulumi.Output<String> profileVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The IAM principal that requested the signing job.
  late final pulumi.Output<String> requestedBy;
  /// A revocation record if the signature generated by the signing job has been revoked. Contains a timestamp and the ID of the IAM entity that revoked the signature.
  late final pulumi.Output<List<SigningJobRevocationRecord>> revocationRecords;
  /// The time when the signature of a signing job expires.
  late final pulumi.Output<String> signatureExpiresAt;
  /// Name of the S3 bucket where the signed code image is saved by code signing.
  late final pulumi.Output<List<SigningJobSignedObject>> signedObjects;
  /// The S3 bucket that contains the object to sign. See Source below for details.
  late final pulumi.Output<SigningJobSource> source;
  /// Status of the signing job.
  late final pulumi.Output<String> status;
  /// String value that contains the status reason.
  late final pulumi.Output<String> statusReason;

  /// Creates a new [SigningJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SigningJob]. {@macro pulumi_signer_signing_job_signing_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SigningJob(
    String name, {
    SigningJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:signer/signingJob:SigningJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    completedAt = registerOutput<String>('completedAt');
    createdAt = registerOutput<String>('createdAt');
    destination = registerOutput<SigningJobDestination>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SigningJobDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ignoreSigningJobFailure = registerOutput<bool?>('ignoreSigningJobFailure');
    jobId = registerOutput<String>('jobId');
    jobInvoker = registerOutput<String>('jobInvoker');
    jobOwner = registerOutput<String>('jobOwner');
    platformDisplayName = registerOutput<String>('platformDisplayName');
    platformId = registerOutput<String>('platformId');
    profileName = registerOutput<String>('profileName');
    profileVersion = registerOutput<String>('profileVersion');
    region = registerOutput<String>('region');
    requestedBy = registerOutput<String>('requestedBy');
    revocationRecords = registerOutput<List<SigningJobRevocationRecord>>('revocationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SigningJobRevocationRecord>(guardedValue, (value) => SigningJobRevocationRecord.fromMap((value as Map).cast<String, dynamic>())); });
    signatureExpiresAt = registerOutput<String>('signatureExpiresAt');
    signedObjects = registerOutput<List<SigningJobSignedObject>>('signedObjects', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SigningJobSignedObject>(guardedValue, (value) => SigningJobSignedObject.fromMap((value as Map).cast<String, dynamic>())); });
    source = registerOutput<SigningJobSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SigningJobSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
  }

  /// Gets an existing [SigningJob] resource's state with the given [name] and [id].
  static SigningJob get(
    String name,
    pulumi.Input<String> id, {
    SigningJobState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SigningJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SigningJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:signer/signingJob:SigningJob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    completedAt = registerOutput<String>('completedAt');
    createdAt = registerOutput<String>('createdAt');
    destination = registerOutput<SigningJobDestination>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SigningJobDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ignoreSigningJobFailure = registerOutput<bool?>('ignoreSigningJobFailure');
    jobId = registerOutput<String>('jobId');
    jobInvoker = registerOutput<String>('jobInvoker');
    jobOwner = registerOutput<String>('jobOwner');
    platformDisplayName = registerOutput<String>('platformDisplayName');
    platformId = registerOutput<String>('platformId');
    profileName = registerOutput<String>('profileName');
    profileVersion = registerOutput<String>('profileVersion');
    region = registerOutput<String>('region');
    requestedBy = registerOutput<String>('requestedBy');
    revocationRecords = registerOutput<List<SigningJobRevocationRecord>>('revocationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SigningJobRevocationRecord>(guardedValue, (value) => SigningJobRevocationRecord.fromMap((value as Map).cast<String, dynamic>())); });
    signatureExpiresAt = registerOutput<String>('signatureExpiresAt');
    signedObjects = registerOutput<List<SigningJobSignedObject>>('signedObjects', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SigningJobSignedObject>(guardedValue, (value) => SigningJobSignedObject.fromMap((value as Map).cast<String, dynamic>())); });
    source = registerOutput<SigningJobSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SigningJobSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
  }

  /// Creates a typed reference to an existing [SigningJob] resource.
  SigningJob.reference(String urn)
    : super(
        'aws:signer/signingJob:SigningJob',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    completedAt = registerOutput<String>('completedAt');
    createdAt = registerOutput<String>('createdAt');
    destination = registerOutput<SigningJobDestination>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SigningJobDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ignoreSigningJobFailure = registerOutput<bool?>('ignoreSigningJobFailure');
    jobId = registerOutput<String>('jobId');
    jobInvoker = registerOutput<String>('jobInvoker');
    jobOwner = registerOutput<String>('jobOwner');
    platformDisplayName = registerOutput<String>('platformDisplayName');
    platformId = registerOutput<String>('platformId');
    profileName = registerOutput<String>('profileName');
    profileVersion = registerOutput<String>('profileVersion');
    region = registerOutput<String>('region');
    requestedBy = registerOutput<String>('requestedBy');
    revocationRecords = registerOutput<List<SigningJobRevocationRecord>>('revocationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SigningJobRevocationRecord>(guardedValue, (value) => SigningJobRevocationRecord.fromMap((value as Map).cast<String, dynamic>())); });
    signatureExpiresAt = registerOutput<String>('signatureExpiresAt');
    signedObjects = registerOutput<List<SigningJobSignedObject>>('signedObjects', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SigningJobSignedObject>(guardedValue, (value) => SigningJobSignedObject.fromMap((value as Map).cast<String, dynamic>())); });
    source = registerOutput<SigningJobSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SigningJobSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
  }
}
