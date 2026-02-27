// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DomainEntry.
class DomainEntryArgs {
  /// Name of the Lightsail domain in which to create the entry.
  final Input<String> domainName;

  /// Whether the entry should be an alias. Default: `false`.
  final Input<bool>? isAlias;

  /// Name of the entry record.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Target of the domain entry.
  final Input<String> target;

  /// Type of record. Valid values: `A`, `AAAA`, `CNAME`, `MX`, `NS`, `SOA`, `SRV`, `TXT`.
  ///
  /// The following arguments are optional:
  final Input<String> type;

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
      domainName: Input.asInput<String>(map['domainName']),
      isAlias: Input.asOptionalInput<bool>(map['isAlias']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      target: Input.asInput<String>(map['target']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
