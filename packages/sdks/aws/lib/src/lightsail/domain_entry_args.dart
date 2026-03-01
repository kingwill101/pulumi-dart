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
    required pulumi.Output<String> domainName,
    pulumi.Output<bool>? isAlias,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    required pulumi.Output<String> target,
    required pulumi.Output<String> type,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      isAlias = pulumi.Input.asOptionalInput<bool>(isAlias),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      target = pulumi.Input.asInput<String>(target),
      type = pulumi.Input.asInput<String>(type);

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
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      isAlias: map['isAlias'] == null ? null : pulumi.Output.create<bool>(map['isAlias'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      target: pulumi.Output.create<String>(map['target'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

