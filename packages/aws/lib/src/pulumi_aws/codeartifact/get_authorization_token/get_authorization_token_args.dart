// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAuthorizationToken.
class GetAuthorizationTokenArgs {
  /// Name of the domain that is in scope for the generated authorization token.
  final pulumi.Input<String> domain;

  /// Account number of the AWS account that owns the domain.
  final pulumi.Input<String>? domainOwner;

  /// Time, in seconds, that the generated authorization token is valid. Valid values are `0` and between `900` and `43200`.
  final pulumi.Input<int>? durationSeconds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetAuthorizationTokenArgs({
    required this.domain,
    this.domainOwner,
    this.durationSeconds,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    final domainOwnerValue = domainOwner;
    if (domainOwnerValue != null) {
      map['domainOwner'] = domainOwnerValue;
    }
    final durationSecondsValue = durationSeconds;
    if (durationSecondsValue != null) {
      map['durationSeconds'] = durationSecondsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetAuthorizationTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationTokenArgs(
      domain: pulumi.Input.asInput<String>(map['domain']),
      domainOwner: pulumi.Input.asOptionalInput<String>(map['domainOwner']),
      durationSeconds:
          pulumi.Input.asOptionalInput<int>(map['durationSeconds']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
