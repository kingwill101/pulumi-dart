// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DomainEntry.
class DomainEntryArgs {
  /// Name of the Lightsail domain in which to create the entry.
  final pulumi.Input<String> domainName;

  /// Whether the entry should be an alias. Default: `false`.
  final pulumi.Input<bool>? isAlias;

  /// Name of the entry record.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Target of the domain entry.
  final pulumi.Input<String> target;

  /// Type of record. Valid values: `A`, `AAAA`, `CNAME`, `MX`, `NS`, `SOA`, `SRV`, `TXT`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  DomainEntryArgs({
    required this.domainName,
    this.isAlias,
    this.name,
    this.region,
    required this.target,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    final isAliasValue = isAlias;
    if (isAliasValue != null) {
      map['isAlias'] = isAliasValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['target'] = target;
    map['type'] = type;
    return map;
  }

  factory DomainEntryArgs.fromMap(Map<String, dynamic> map) {
    return DomainEntryArgs(
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      isAlias: pulumi.Input.asOptionalInput<bool>(map['isAlias']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      target: pulumi.Input.asInput<String>(map['target']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
