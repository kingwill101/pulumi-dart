// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Organization resources.
class OrganizationState {
  /// The desired member count.
  final pulumi.Input<int>? desiredMemberCount;
  /// Company name.
  final pulumi.Input<String>? organizationName;
  /// User pk, not required, only required when the ak used by the calling interface is inconsistent with the user pk
  final pulumi.Input<String>? realPk;
  /// This is organization source information
  final pulumi.Input<String>? source;

  /// Creates a new [OrganizationState].
  /// [desiredMemberCount] The desired member count.
  /// [organizationName] Company name.
  /// [realPk] User pk, not required, only required when the ak used by the calling interface is inconsistent with the user pk
  /// [source] This is organization source information
  OrganizationState({
    this.desiredMemberCount,
    this.organizationName,
    this.realPk,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredMemberCount': ?desiredMemberCount,
      'organizationName': ?organizationName,
      'realPk': ?realPk,
      'source': ?source,
    };
  }

  factory OrganizationState.fromMap(Map<String, dynamic> map) {
    return OrganizationState(
      desiredMemberCount: map['desiredMemberCount'] == null ? null : (map['desiredMemberCount']! as int).input(),
      organizationName: map['organizationName'] == null ? null : (map['organizationName']! as String).input(),
      realPk: map['realPk'] == null ? null : (map['realPk']! as String).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
    );
  }
}

