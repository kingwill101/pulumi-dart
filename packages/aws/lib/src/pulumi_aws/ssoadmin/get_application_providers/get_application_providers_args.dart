// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getApplicationProviders.
class GetApplicationProvidersArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetApplicationProvidersArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetApplicationProvidersArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationProvidersArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
