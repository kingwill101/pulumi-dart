// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rdc_organization_organization_args_doc}
/// The set of arguments for Organization.
/// {@endtemplate}
/// {@macro pulumi_rdc_organization_organization_args_doc}
class OrganizationArgs {
  /// The desired member count.
  final pulumi.Input<int>? desiredMemberCount;
  /// Company name.
  final pulumi.Input<String> organizationName;
  /// User pk, not required, only required when the ak used by the calling interface is inconsistent with the user pk
  final pulumi.Input<String>? realPk;
  /// This is organization source information
  final pulumi.Input<String> source;

  /// Creates a new [OrganizationArgs].
  /// [desiredMemberCount] The desired member count.
  /// [organizationName] Company name.
  /// [realPk] User pk, not required, only required when the ak used by the calling interface is inconsistent with the user pk
  /// [source] This is organization source information
  OrganizationArgs({
    this.desiredMemberCount,
    required this.organizationName,
    this.realPk,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredMemberCount': ?desiredMemberCount,
      'organizationName': organizationName,
      'realPk': ?realPk,
      'source': source,
    };
  }

  factory OrganizationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationArgs(
      desiredMemberCount: map['desiredMemberCount'] == null ? null : (map['desiredMemberCount'] as int).input(),
      organizationName: (map['organizationName'] as String).input(),
      realPk: map['realPk'] == null ? null : (map['realPk'] as String).input(),
      source: (map['source'] as String).input(),
    );
  }
}

