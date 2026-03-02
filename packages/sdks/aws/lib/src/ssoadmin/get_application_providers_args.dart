// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssoadmin_get_application_providers_get_application_providers_args_doc}
/// Arguments for getApplicationProviders.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_get_application_providers_get_application_providers_args_doc}
class GetApplicationProvidersArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetApplicationProvidersArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetApplicationProvidersArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetApplicationProvidersArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationProvidersArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

