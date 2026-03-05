// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directmail_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_directmail_domain_domain_args_doc}
class DomainArgs {
  /// Domain, length `1` to `50`, including numbers or capitals or lowercase letters or `.` or `-`
  final pulumi.Input<String> domainName;

  /// Creates a new [DomainArgs].
  /// [domainName] Domain, length `1` to `50`, including numbers or capitals or lowercase letters or `.` or `-`
  DomainArgs({
    required this.domainName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
    );
  }
}

