// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../signing_job_destination/signing_job_destination.dart';
import '../signing_job_source/signing_job_source.dart';

/// The set of arguments for SigningJob.
class SigningJobArgs {
  /// The S3 bucket in which to save your signed object. See Destination below for details.
  final Input<SigningJobDestination> destination;

  /// Set this argument to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to ignore signing job failures and retrieve failed status and reason. Default <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? ignoreSigningJobFailure;

  /// The name of the profile to initiate the signing operation.
  final Input<String> profileName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The S3 bucket that contains the object to sign. See Source below for details.
  final Input<SigningJobSource> source;

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
        Input.mapInputValue<SigningJobDestination, Map<String, dynamic>>(
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
    map['source'] = Input.mapInputValue<SigningJobSource, Map<String, dynamic>>(
        source, (value) => value.toMap());
    return map;
  }

  factory SigningJobArgs.fromMap(Map<String, dynamic> map) {
    return SigningJobArgs(
      destination: Input.asInput<SigningJobDestination>(map['destination']),
      ignoreSigningJobFailure:
          Input.asOptionalInput<bool>(map['ignoreSigningJobFailure']),
      profileName: Input.asInput<String>(map['profileName']),
      region: Input.asOptionalInput<String>(map['region']),
      source: Input.asInput<SigningJobSource>(map['source']),
    );
  }
}
