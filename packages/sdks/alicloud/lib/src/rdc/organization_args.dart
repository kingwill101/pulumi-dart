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
  const OrganizationArgs({
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
      desiredMemberCount: (() { final guardedValue = map['desiredMemberCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      realPk: (() { final guardedValue = map['realPk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}

