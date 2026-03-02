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
    this.domainName,
    this.isAlias,
    this.name,
    this.region,
    this.target,
    this.type,
  });

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
      domainName: map['domainName'] == null ? null : ((map['domainName'] as String).input()).input(),
      isAlias: map['isAlias'] == null ? null : ((map['isAlias'] as bool).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      target: map['target'] == null ? null : ((map['target'] as String).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
    );
  }
}

