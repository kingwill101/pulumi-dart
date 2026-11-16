// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScopeScopeConfigurationAccountFilterExclude {
  /// Set of AWS account IDs.
  final pulumi.Input<List<String>?>? accountIds;
  /// Set of AWS Organizations organizational unit IDs.
  final pulumi.Input<List<String>?>? organizationalUnits;

  /// Creates a new [ScopeScopeConfigurationAccountFilterExclude].
  /// [accountIds] Set of AWS account IDs.
  /// [organizationalUnits] Set of AWS Organizations organizational unit IDs.
  const ScopeScopeConfigurationAccountFilterExclude({
    this.accountIds,
    this.organizationalUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountIds': ?accountIds,
      'organizationalUnits': ?organizationalUnits,
    };
  }

  factory ScopeScopeConfigurationAccountFilterExclude.fromMap(Map<String, dynamic> map) {
    return ScopeScopeConfigurationAccountFilterExclude(
      accountIds: (() { final guardedValue = map['accountIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      organizationalUnits: (() { final guardedValue = map['organizationalUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
