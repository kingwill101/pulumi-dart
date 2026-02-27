// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../signing_job_destination/signing_job_destination.dart';
import '../signing_job_source/signing_job_source.dart';

/// The set of arguments for SigningJob.
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

  SigningJobArgs({
    required this.destination,
    this.ignoreSigningJobFailure,
    required this.profileName,
    this.region,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destination'] =
        pulumi.Input.mapInputValue<SigningJobDestination, Map<String, dynamic>>(
            destination, (value) => value.toMap());
    final ignoreSigningJobFailureValue = ignoreSigningJobFailure;
    if (ignoreSigningJobFailureValue != null) {
      map['ignoreSigningJobFailure'] = ignoreSigningJobFailureValue;
    }
    map['profileName'] = profileName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['source'] =
        pulumi.Input.mapInputValue<SigningJobSource, Map<String, dynamic>>(
            source, (value) => value.toMap());
    return map;
  }

  factory SigningJobArgs.fromMap(Map<String, dynamic> map) {
    return SigningJobArgs(
      destination:
          pulumi.Input.asInput<SigningJobDestination>(map['destination']),
      ignoreSigningJobFailure:
          pulumi.Input.asOptionalInput<bool>(map['ignoreSigningJobFailure']),
      profileName: pulumi.Input.asInput<String>(map['profileName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      source: pulumi.Input.asInput<SigningJobSource>(map['source']),
    );
  }
}
