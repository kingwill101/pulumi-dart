// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAuthorizationToken.
class GetAuthorizationTokenArgs {
  /// Name of the domain that is in scope for the generated authorization token.
  final Input<String> domain;

  /// Account number of the AWS account that owns the domain.
  final Input<String>? domainOwner;

  /// Time, in seconds, that the generated authorization token is valid. Valid values are <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and between <span pulumi-lang-nodejs="`900`" pulumi-lang-dotnet="`900`" pulumi-lang-go="`900`" pulumi-lang-python="`900`" pulumi-lang-yaml="`900`" pulumi-lang-java="`900`">`900`</span> and <span pulumi-lang-nodejs="`43200`" pulumi-lang-dotnet="`43200`" pulumi-lang-go="`43200`" pulumi-lang-python="`43200`" pulumi-lang-yaml="`43200`" pulumi-lang-java="`43200`">`43200`</span>.
  final Input<int>? durationSeconds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      domain: Input.asInput<String>(map['domain']),
      domainOwner: Input.asOptionalInput<String>(map['domainOwner']),
      durationSeconds: Input.asOptionalInput<int>(map['durationSeconds']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
