// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DomainEntry resources.
class DomainEntryState {
  /// Name of the Lightsail domain in which to create the entry.
  final pulumi.Input<String>? domainName;
  /// Whether the entry should be an alias. Default: `false`.
  final pulumi.Input<bool>? isAlias;
  /// Name of the entry record.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Target of the domain entry.
  final pulumi.Input<String>? target;
  /// Type of record. Valid values: `A`, `AAAA`, `CNAME`, `MX`, `NS`, `SOA`, `SRV`, `TXT`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? type;

  /// Creates a new [DomainEntryState].
  /// [domainName] Name of the Lightsail domain in which to create the entry.
  /// [isAlias] Whether the entry should be an alias. Default: `false`.
  /// [name] Name of the entry record.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [target] Target of the domain entry.
  /// [type] Type of record. Valid values: `A`, `AAAA`, `CNAME`, `MX`, `NS`, `SOA`, `SRV`, `TXT`.
  DomainEntryState({
    pulumi.Output<String>? domainName,
    pulumi.Output<bool>? isAlias,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? target,
    pulumi.Output<String>? type,
  }) :
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      isAlias = pulumi.Input.asOptionalInput<bool>(isAlias),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      target = pulumi.Input.asOptionalInput<String>(target),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'isAlias': ?isAlias,
      'name': ?name,
      'region': ?region,
      'target': ?target,
      'type': ?type,
    };
  }

  factory DomainEntryState.fromMap(Map<String, dynamic> map) {
    return DomainEntryState(
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      isAlias: map['isAlias'] == null ? null : pulumi.Output.create<bool>(map['isAlias'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      target: map['target'] == null ? null : pulumi.Output.create<String>(map['target'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

