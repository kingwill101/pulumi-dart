// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudtrail_get_service_account_get_service_account_args_doc}
/// Arguments for getServiceAccount.
/// {@endtemplate}
/// {@macro pulumi_cloudtrail_get_service_account_get_service_account_args_doc}
class GetServiceAccountArgs {
  /// Name of the Region whose AWS CloudTrail account ID is desired. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetServiceAccountArgs].
  /// [region] Name of the Region whose AWS CloudTrail account ID is desired. Defaults to the Region set in the provider configuration.
  GetServiceAccountArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceAccountArgs(
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

