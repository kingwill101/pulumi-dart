// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Domain.
class DomainLightsailArgs {
  /// Name of the Lightsail domain to manage.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  DomainLightsailArgs({
    required this.domainName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DomainLightsailArgs.fromMap(Map<String, dynamic> map) {
    return DomainLightsailArgs(
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
