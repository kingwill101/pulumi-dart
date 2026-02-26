// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Domain.
class DomainArgs6 {
  /// Name of the Lightsail domain to manage.
  ///
  /// The following arguments are optional:
  final Input<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  DomainArgs6({
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

  factory DomainArgs6.fromMap(Map<String, dynamic> map) {
    return DomainArgs6(
      domainName: Input.asInput<String>(map['domainName']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
