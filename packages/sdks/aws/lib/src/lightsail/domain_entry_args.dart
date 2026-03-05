// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lightsail_domain_entry_domain_entry_args_doc}
/// The set of arguments for DomainEntry.
/// {@endtemplate}
/// {@macro pulumi_lightsail_domain_entry_domain_entry_args_doc}
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

  /// Creates a new [DomainEntryArgs].
  /// [domainName] Name of the Lightsail domain in which to create the entry.
  /// [isAlias] Whether the entry should be an alias. Default: `false`.
  /// [name] Name of the entry record.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [target] Target of the domain entry.
  /// [type] Type of record. Valid values: `A`, `AAAA`, `CNAME`, `MX`, `NS`, `SOA`, `SRV`, `TXT`.
  DomainEntryArgs({
    required this.domainName,
    this.isAlias,
    this.name,
    this.region,
    required this.target,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'isAlias': ?isAlias,
      'name': ?name,
      'region': ?region,
      'target': target,
      'type': type,
    };
  }

  factory DomainEntryArgs.fromMap(Map<String, dynamic> map) {
    return DomainEntryArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      isAlias: (() { final guardedValue = map['isAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: pulumi.Input.fromValue(map['target'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

