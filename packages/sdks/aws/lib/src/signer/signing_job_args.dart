// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signing_job_destination.dart';
import 'signing_job_source.dart';

/// {@template pulumi_signer_signing_job_signing_job_args_doc}
/// The set of arguments for SigningJob.
/// {@endtemplate}
/// {@macro pulumi_signer_signing_job_signing_job_args_doc}
class SigningJobArgs {
  /// The S3 bucket in which to save your signed object. See Destination below for details.
  final pulumi.Input<SigningJobDestination> destination;
  /// Set this argument to `true` to ignore signing job failures and retrieve failed status and reason. Default `false`.
  final pulumi.Input<bool>? ignoreSigningJobFailure;
  /// The name of the profile to initiate the signing operation.
  final pulumi.Input<String> profileName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The S3 bucket that contains the object to sign. See Source below for details.
  final pulumi.Input<SigningJobSource> source;

  /// Creates a new [SigningJobArgs].
  /// [destination] The S3 bucket in which to save your signed object. See Destination below for details.
  /// [ignoreSigningJobFailure] Set this argument to `true` to ignore signing job failures and retrieve failed status and reason. Default `false`.
  /// [profileName] The name of the profile to initiate the signing operation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [source] The S3 bucket that contains the object to sign. See Source below for details.
  SigningJobArgs({
    required pulumi.Output<SigningJobDestination> destination,
    pulumi.Output<bool>? ignoreSigningJobFailure,
    required pulumi.Output<String> profileName,
    pulumi.Output<String>? region,
    required pulumi.Output<SigningJobSource> source,
  }) :
      destination = pulumi.Input.asInput<SigningJobDestination>(destination),
      ignoreSigningJobFailure = pulumi.Input.asOptionalInput<bool>(ignoreSigningJobFailure),
      profileName = pulumi.Input.asInput<String>(profileName),
      region = pulumi.Input.asOptionalInput<String>(region),
      source = pulumi.Input.asInput<SigningJobSource>(source);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': pulumi.Input.mapInputValue<SigningJobDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'ignoreSigningJobFailure': ?ignoreSigningJobFailure,
      'profileName': profileName,
      'region': ?region,
      'source': pulumi.Input.mapInputValue<SigningJobSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory SigningJobArgs.fromMap(Map<String, dynamic> map) {
    return SigningJobArgs(
      destination: pulumi.Output.create<SigningJobDestination>(SigningJobDestination.fromMap((map['destination'] as Map).cast<String, dynamic>())),
      ignoreSigningJobFailure: map['ignoreSigningJobFailure'] == null ? null : pulumi.Output.create<bool>(map['ignoreSigningJobFailure'] as bool),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      source: pulumi.Output.create<SigningJobSource>(SigningJobSource.fromMap((map['source'] as Map).cast<String, dynamic>())),
    );
  }
}

